-- ═══════════════════════════════════════════════════════════════
--  SELUWIA  v2  –  Universal Remote Spy & Event Debugger
--  Captures: FireServer · InvokeServer · OnClientEvent
--            BindableEvent · BindableFunction · Marketplace
--  Requires hookmetamethod in executor for namecall interception
-- ═══════════════════════════════════════════════════════════════

local Players            = game:GetService("Players")
local TweenService       = game:GetService("TweenService")
local UserInputService   = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")

local lp   = Players.LocalPlayer
local pgui = lp:WaitForChild("PlayerGui")

if pgui:FindFirstChild("SeluwiaUI") then pgui.SeluwiaUI:Destroy() end

-- Executor compat fallback
local newcclosure = (typeof(newcclosure) == "function") and newcclosure or function(f) return f end

----------------------------------------------------------------
-- CONFIG
----------------------------------------------------------------
local AUTO_SPEED = 100    -- fires/sec for Auto mode
local MOBILE     = UserInputService.TouchEnabled
local FS         = MOBILE and 0.85 or 1   -- font scale

----------------------------------------------------------------
-- THEME
----------------------------------------------------------------
local C = {
    BG     = Color3.fromRGB(8,   8,  12),
    BG2    = Color3.fromRGB(13,  12, 18),
    BG3    = Color3.fromRGB(18,  17, 26),
    BORDER = Color3.fromRGB(30,  28, 46),
    TEXT   = Color3.fromRGB(210, 208,230),
    MUTED  = Color3.fromRGB(100, 95, 135),
    GREEN  = Color3.fromRGB(61,  255,160),
    RED    = Color3.fromRGB(255, 75,  75),
    YELLOW = Color3.fromRGB(255, 200, 55),
    BLUE   = Color3.fromRGB(80,  170,255),
    PURPLE = Color3.fromRGB(130, 100,255),
    ORANGE = Color3.fromRGB(255, 155, 55),
    PINK   = Color3.fromRGB(220, 100,255),
    TEAL   = Color3.fromRGB(55,  210,185),
}

-- Per event-type: display colour, filter category, badge label
local TYPE_META = {
    Remote         = { color=C.BLUE,   cat="Remote",      badge="→ FireServer"    },
    RemoteFunction = { color=C.PURPLE, cat="Remote",      badge="⇄ InvokeServer"  },
    ClientRemote   = { color=C.TEAL,   cat="Client",      badge="← OnClientEvent" },
    Bindable       = { color=C.PINK,   cat="Bindable",    badge="↑ BindableEvent" },
    BindableFunc   = { color=C.PINK,   cat="Bindable",    badge="⇄ BindableFunc"  },
    Product        = { color=C.ORANGE, cat="Marketplace", badge="Product"         },
    Gamepass       = { color=C.ORANGE, cat="Marketplace", badge="Gamepass"        },
    Purchase       = { color=C.ORANGE, cat="Marketplace", badge="Purchase"        },
    Bulk           = { color=C.ORANGE, cat="Marketplace", badge="Bulk Buy"        },
}

local TABS = {
    { id="All",         label="All",         color=C.TEXT   },
    { id="Remote",      label="⚡ Remote",   color=C.BLUE   },
    { id="Client",      label="📡 Client",   color=C.TEAL   },
    { id="Marketplace", label="🛒 Market",   color=C.ORANGE },
    { id="Bindable",    label="🔗 Bindable", color=C.PINK   },
}

----------------------------------------------------------------
-- SERIALISER
-- Converts Roblox types to compact readable strings
----------------------------------------------------------------
local function sv(v, d)
    d = d or 0
    if d > 2 then return "…" end
    local t = typeof(v)
    if     t == "nil"      then return "nil"
    elseif t == "boolean"  then return tostring(v)
    elseif t == "number"   then
        return v == math.floor(v) and tostring(v) or string.format("%.4g", v)
    elseif t == "string"   then
        local s = v:gsub("\n", "\\n"):sub(1, 50)
        return '"' .. s .. (#v > 50 and '…"' or '"')
    elseif t == "Instance" then return v.ClassName .. '("' .. v.Name .. '")'
    elseif t == "Vector3"  then return ("V3(%.2f,%.2f,%.2f)"):format(v.X, v.Y, v.Z)
    elseif t == "Vector2"  then return ("V2(%.2f,%.2f)"):format(v.X, v.Y)
    elseif t == "CFrame"   then return ("CF(%.1f,%.1f,%.1f)"):format(v.X, v.Y, v.Z)
    elseif t == "Color3"   then return ("RGB(%d,%d,%d)"):format(v.R*255, v.G*255, v.B*255)
    elseif t == "UDim2"    then return ("UDim2(%s,%d,%s,%d)"):format(v.X.Scale,v.X.Offset,v.Y.Scale,v.Y.Offset)
    elseif t == "EnumItem" then return tostring(v)
    elseif t == "table"    then
        local p, n = {}, 0
        for k, val in pairs(v) do
            n = n + 1
            if n > 4 then p[#p+1] = "…"; break end
            p[#p+1] = tostring(k) .. "=" .. sv(val, d+1)
        end
        return "{" .. table.concat(p, ", ") .. "}"
    else return t end
end

local function serArgs(a)
    if #a == 0 then return "(no args)" end
    local p = {}
    for _, v in ipairs(a) do p[#p+1] = sv(v) end
    return table.concat(p, "  •  ")
end

local function getPath(obj)
    if typeof(obj) ~= "Instance" then return "" end
    local p, cur = {}, obj
    while cur and cur ~= game do
        p[#p+1] = cur.Name
        cur = cur.Parent
    end
    for i = 1, math.floor(#p / 2) do
        p[i], p[#p+1-i] = p[#p+1-i], p[i]
    end
    return table.concat(p, ".")
end

----------------------------------------------------------------
-- UI HELPERS
----------------------------------------------------------------
local function mk(class, props, parent)
    local i = Instance.new(class)
    for k, v in pairs(props or {}) do i[k] = v end
    if parent then i.Parent = parent end
    return i
end
local function corner(p, r) mk("UICorner", {CornerRadius = UDim.new(0, r or 10)}, p) end
local function stroke(p, c, t) mk("UIStroke", {Color = c or C.BORDER, Thickness = t or 1}, p) end
local function tw(o, t2, pr)
    TweenService:Create(o, TweenInfo.new(t2, Enum.EasingStyle.Quad), pr):Play()
end

----------------------------------------------------------------
-- LAYOUT
----------------------------------------------------------------
local TITLE_H  = MOBILE and 44 or 50
local TAB_H    = 38
local SRCH_H   = 36
local FOOT_H   = 38
local BTN_H    = MOBILE and 30 or 24
local PANEL_W, PANEL_H = 840, 580

----------------------------------------------------------------
-- SCREEN GUI
----------------------------------------------------------------
local sg = mk("ScreenGui", {
    Name = "SeluwiaUI", ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    IgnoreGuiInset = true,
}, pgui)

----------------------------------------------------------------
-- PANEL
----------------------------------------------------------------
local panel = mk("Frame", {
    Size     = MOBILE and UDim2.new(0.93, 0, 0.84, 0)
                       or UDim2.new(0, PANEL_W, 0, PANEL_H),
    Position = MOBILE and UDim2.new(0.035, 0, 0.08, 0)
                       or UDim2.new(0.5, -PANEL_W/2, 0.5, -PANEL_H/2),
    BackgroundColor3 = C.BG,
    BorderSizePixel  = 0,
}, sg)
corner(panel, 16)
stroke(panel, C.BORDER)

-- Shared state for drag / resize guards
local drag, dSt, dPs = false, nil, nil
local res             = false      -- is resize active?

-- Resize handle (PC only)
if not MOBILE then
    local rh = mk("Frame", {
        Size=UDim2.new(0,16,0,16), Position=UDim2.new(1,-16,1,-16),
        BackgroundColor3=C.BG3, BorderSizePixel=0, ZIndex=20,
    }, panel)
    corner(rh, 4)
    mk("TextLabel", {
        Size=UDim2.new(1,0,1,0), BackgroundTransparency=1,
        Text="◢", TextColor3=C.MUTED, TextSize=11,
        Font=Enum.Font.Gotham, ZIndex=21,
    }, rh)

    local rPos, rSz
    rh.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            res=true; rPos=i.Position; rSz=panel.AbsoluteSize
        end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if res and i.UserInputType == Enum.UserInputType.MouseMovement then
            local d = i.Position - rPos
            panel.Size = UDim2.new(0, math.clamp(rSz.X+d.X, 420, 1400),
                                   0, math.clamp(rSz.Y+d.Y, 300, 900))
        end
    end)
    UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then res=false end
    end)
end

-- Drag (whole panel via title bar)
UserInputService.InputChanged:Connect(function(i)
    if drag and not res and
       (i.UserInputType == Enum.UserInputType.MouseMovement or
        i.UserInputType == Enum.UserInputType.Touch) then
        local d = i.Position - dSt
        panel.Position = UDim2.new(dPs.X.Scale, dPs.X.Offset+d.X,
                                   dPs.Y.Scale, dPs.Y.Offset+d.Y)
    end
end)
UserInputService.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or
       i.UserInputType == Enum.UserInputType.Touch then
        drag = false
    end
end)

----------------------------------------------------------------
-- TITLE BAR
----------------------------------------------------------------
local tBar = mk("Frame", {
    Size=UDim2.new(1,0,0,TITLE_H), BackgroundColor3=C.BG2,
    BorderSizePixel=0, ZIndex=5,
}, panel)
corner(tBar, 16)
-- fill bottom rounded corners
mk("Frame", {
    Size=UDim2.new(1,0,0,18), Position=UDim2.new(0,0,1,-18),
    BackgroundColor3=C.BG2, BorderSizePixel=0, ZIndex=5,
}, tBar)
stroke(tBar, C.BORDER)

tBar.InputBegan:Connect(function(i)
    if not res and
       (i.UserInputType==Enum.UserInputType.MouseButton1 or
        i.UserInputType==Enum.UserInputType.Touch) then
        drag=true; dSt=i.Position; dPs=panel.Position
    end
end)

-- Pulse dot
local dot = mk("Frame", {
    Size=UDim2.new(0,8,0,8), Position=UDim2.new(0,16,0.5,-4),
    BackgroundColor3=C.GREEN, BorderSizePixel=0, ZIndex=8,
}, tBar)
corner(dot, 999)
mk("TextLabel", {
    Size=UDim2.new(0,44,1,0), Position=UDim2.new(0,29,0,0),
    BackgroundTransparency=1, Text="LIVE",
    TextColor3=C.GREEN, TextSize=10*FS, Font=Enum.Font.GothamBold,
    TextXAlignment=Enum.TextXAlignment.Left, ZIndex=8,
}, tBar)

task.spawn(function()
    while sg.Parent do
        tw(dot, 0.8, {BackgroundTransparency=0.65})
        task.wait(0.8)
        tw(dot, 0.8, {BackgroundTransparency=0})
        task.wait(0.8)
    end
end)

mk("TextLabel", {
    Size=UDim2.new(0,160,1,0), Position=UDim2.new(0.5,-80,0,0),
    BackgroundTransparency=1, Text="SELUWIA  v2",
    TextColor3=C.TEXT, TextSize=13*FS, Font=Enum.Font.GothamBold, ZIndex=8,
}, tBar)

-- Clear button
local clrBtn = mk("TextButton", {
    Size=UDim2.new(0,76,0,28), Position=UDim2.new(1,-88,0.5,-14),
    BackgroundColor3=Color3.fromRGB(28,10,10), Text="✕ Clear",
    TextColor3=C.RED, TextSize=11*FS, Font=Enum.Font.GothamBold,
    BorderSizePixel=0, ZIndex=8,
}, tBar)
corner(clrBtn, 8)
stroke(clrBtn, Color3.fromRGB(58,18,18))
clrBtn.MouseEnter:Connect(function() tw(clrBtn,.1,{BackgroundColor3=Color3.fromRGB(40,14,14)}) end)
clrBtn.MouseLeave:Connect(function() tw(clrBtn,.1,{BackgroundColor3=Color3.fromRGB(28,10,10)}) end)

----------------------------------------------------------------
-- TAB BAR
----------------------------------------------------------------
local tabBar = mk("Frame", {
    Size=UDim2.new(1,0,0,TAB_H), Position=UDim2.new(0,0,0,TITLE_H),
    BackgroundColor3=C.BG2, BorderSizePixel=0, ZIndex=4,
}, panel)
mk("Frame", {
    Size=UDim2.new(1,0,0,1), Position=UDim2.new(0,0,1,-1),
    BackgroundColor3=C.BORDER, BorderSizePixel=0, ZIndex=5,
}, tabBar)

local tabRow = mk("ScrollingFrame", {
    Size=UDim2.new(1,-16,1,0), Position=UDim2.new(0,8,0,0),
    BackgroundTransparency=1, BorderSizePixel=0,
    ScrollBarThickness=0, CanvasSize=UDim2.new(0,0,0,0),
    AutomaticCanvasSize=Enum.AutomaticSize.X,
    ScrollingDirection=Enum.ScrollingDirection.X,
    ZIndex=5,
}, tabBar)
mk("UIListLayout", {
    FillDirection=Enum.FillDirection.Horizontal,
    SortOrder=Enum.SortOrder.LayoutOrder,
    Padding=UDim.new(0,4),
    VerticalAlignment=Enum.VerticalAlignment.Center,
}, tabRow)

local tabBtns = {}   -- id → {btn, info}
local curTab  = "All"

for i, info in ipairs(TABS) do
    local b = mk("TextButton", {
        Name="Tab_"..info.id,
        Size=UDim2.new(0,0,0,28), AutomaticSize=Enum.AutomaticSize.X,
        BackgroundColor3=C.BG3, Text="  "..info.label.."  ",
        TextColor3=C.MUTED, TextSize=11*FS, Font=Enum.Font.GothamBold,
        BorderSizePixel=0, ZIndex=6, LayoutOrder=i,
    }, tabRow)
    corner(b, 7)
    tabBtns[info.id] = { btn=b, info=info }
end

----------------------------------------------------------------
-- SEARCH BAR
----------------------------------------------------------------
local srchWrap = mk("Frame", {
    Size=UDim2.new(1,-16,0,SRCH_H-4),
    Position=UDim2.new(0,8,0,TITLE_H+TAB_H+4),
    BackgroundColor3=C.BG3, BorderSizePixel=0, ZIndex=4,
}, panel)
corner(srchWrap, 8)
stroke(srchWrap, C.BORDER)

mk("TextLabel", {
    Size=UDim2.new(0,20,1,0), Position=UDim2.new(0,8,0,0),
    BackgroundTransparency=1, Text="🔍",
    TextSize=12, Font=Enum.Font.Gotham, TextColor3=C.MUTED, ZIndex=5,
}, srchWrap)

local srchBox = mk("TextBox", {
    Size=UDim2.new(1,-36,1,0), Position=UDim2.new(0,32,0,0),
    BackgroundTransparency=1,
    PlaceholderText="Filter by remote name or path…",
    PlaceholderColor3=C.MUTED,
    Text="", TextColor3=C.TEXT,
    TextSize=11*FS, Font=Enum.Font.Gotham,
    TextXAlignment=Enum.TextXAlignment.Left,
    ClearTextOnFocus=false, ZIndex=5,
}, srchWrap)

----------------------------------------------------------------
-- LOG AREA
----------------------------------------------------------------
local CTOP = TITLE_H + TAB_H + SRCH_H + 2

local logArea = mk("ScrollingFrame", {
    Size=UDim2.new(1,-12, 1,-(CTOP+FOOT_H+6)),
    Position=UDim2.new(0,6,0,CTOP),
    BackgroundTransparency=1, BorderSizePixel=0,
    ScrollBarThickness=MOBILE and 5 or 3,
    ScrollBarImageColor3=C.PURPLE,
    CanvasSize=UDim2.new(0,0,0,0),
    AutomaticCanvasSize=Enum.AutomaticSize.Y,
    ZIndex=3,
}, panel)
mk("UIListLayout", {
    SortOrder=Enum.SortOrder.LayoutOrder,
    Padding=UDim.new(0,6),
}, logArea)
mk("UIPadding", {
    PaddingTop=UDim.new(0,4), PaddingBottom=UDim.new(0,6),
    PaddingLeft=UDim.new(0,0), PaddingRight=UDim.new(0,0),
}, logArea)

local emptyLbl = mk("TextLabel", {
    Size=UDim2.new(1,0,0,60), Position=UDim2.new(0,0,0.25,0),
    BackgroundTransparency=1, Text="Listening for events…",
    TextColor3=C.MUTED, TextSize=12*FS, Font=Enum.Font.Gotham, ZIndex=4,
}, logArea)

----------------------------------------------------------------
-- FOOTER
----------------------------------------------------------------
local foot = mk("Frame", {
    Size=UDim2.new(1,0,0,FOOT_H), Position=UDim2.new(0,0,1,-FOOT_H),
    BackgroundColor3=C.BG2, BorderSizePixel=0, ZIndex=4,
}, panel)
corner(foot, 16)
mk("Frame", {
    Size=UDim2.new(1,0,0,20), BackgroundColor3=C.BG2,
    BorderSizePixel=0, ZIndex=4,
}, foot)
mk("Frame", {
    Size=UDim2.new(1,0,0,1), BackgroundColor3=C.BORDER,
    BorderSizePixel=0, ZIndex=5,
}, foot)

local countLbl = mk("TextLabel", {
    Size=UDim2.new(0.5,0,1,0), Position=UDim2.new(0,14,0,0),
    BackgroundTransparency=1, Text="0 events",
    TextColor3=C.MUTED, TextSize=11*FS, Font=Enum.Font.Gotham,
    TextXAlignment=Enum.TextXAlignment.Left, ZIndex=5,
}, foot)

mk("TextLabel", {
    Size=UDim2.new(0.5,-14,1,0), Position=UDim2.new(0.5,0,0,0),
    BackgroundTransparency=1,
    Text="Auto: "..AUTO_SPEED.."/s  •  Hold Run 2.5s → spam",
    TextColor3=C.MUTED, TextSize=10*FS, Font=Enum.Font.Gotham,
    TextXAlignment=Enum.TextXAlignment.Right, ZIndex=5,
}, foot)

----------------------------------------------------------------
-- STATE
----------------------------------------------------------------
local entries     = {}
local eventCount  = 0
local suppress    = 0      -- prevents re-logging replayed events
local filterText  = ""
local activeAutos = {}
local activeSpams = {}

local function setEmpty(v) emptyLbl.Visible = v end

local function stopAll()
    for b, info in pairs(activeAutos) do
        if info.loop then task.cancel(info.loop) end
        if b.Parent then
            b.Text="Auto"; b.TextColor3=C.MUTED; b.BackgroundColor3=C.BG3
        end
    end
    activeAutos = {}
    for b, info in pairs(activeSpams) do
        if info.loop then task.cancel(info.loop) end
        if b.Parent then
            b.Text="Run"; b.TextColor3=C.GREEN; b.BackgroundColor3=C.BG3
        end
    end
    activeSpams = {}
end

local function updateVis()
    local s = filterText:lower()
    local any = false
    for _, e in ipairs(entries) do
        local cat  = e:GetAttribute("Cat")   or ""
        local name = e:GetAttribute("EName") or ""
        local tOk  = curTab=="All" or cat==curTab
        local sOk  = s=="" or name:lower():find(s, 1, true)
        e.Visible  = tOk and sOk
        if e.Visible then any=true end
    end
    setEmpty(not any)
end

local function setTab(id)
    curTab = id
    for tid, data in pairs(tabBtns) do
        local col = data.info.color or C.TEXT
        if tid == id then
            tw(data.btn, .12, {BackgroundColor3=col, TextColor3=Color3.new(1,1,1)})
        else
            tw(data.btn, .12, {BackgroundColor3=C.BG3, TextColor3=C.MUTED})
        end
    end
    updateVis()
end
setTab("All")

for id, data in pairs(tabBtns) do
    data.btn.MouseButton1Click:Connect(function() setTab(id) end)
end

srchBox:GetPropertyChangedSignal("Text"):Connect(function()
    filterText = srchBox.Text
    updateVis()
end)

----------------------------------------------------------------
-- ADD LOG ENTRY
-- sigType  : key into TYPE_META
-- remote   : Instance (for remotes/bindables) or number (marketplace id)
-- name     : display name string
-- args     : table of captured arguments
----------------------------------------------------------------
local function addLog(sigType, remote, name, args)
    local meta    = TYPE_META[sigType] or {color=C.TEXT, cat="All", badge=sigType}
    local argsStr = serArgs(args or {})
    local path    = typeof(remote)=="Instance" and getPath(remote) or nil
    local hasPath = path ~= nil and path ~= ""

    eventCount = eventCount + 1

    local entH = 50 + (hasPath and 13 or 0)

    local entry = mk("Frame", {
        Name=tostring(name or remote),
        Size=UDim2.new(1,-8,0,entH),
        BackgroundColor3=C.BG2, BorderSizePixel=0,
        LayoutOrder=eventCount, ZIndex=3,
    }, logArea)
    entry:SetAttribute("Cat",   meta.cat)
    entry:SetAttribute("EName", tostring(name or ""))
    corner(entry, 10)
    stroke(entry, C.BORDER)

    -- left accent stripe
    local bar = mk("Frame", {
        Size=UDim2.new(0,3,0.6,0), Position=UDim2.new(0,7,0.2,0),
        BackgroundColor3=meta.color, BorderSizePixel=0, ZIndex=4,
    }, entry)
    corner(bar, 3)

    -- type badge
    local badgeR = meta.color.R*255*0.15
    local badgeG = meta.color.G*255*0.15
    local badgeB = meta.color.B*255*0.15
    local badgeFr = mk("Frame", {
        Size=UDim2.new(0,0,0,16), Position=UDim2.new(0,15,0,7),
        AutomaticSize=Enum.AutomaticSize.X,
        BackgroundColor3=Color3.fromRGB(math.floor(badgeR),math.floor(badgeG),math.floor(badgeB)),
        BorderSizePixel=0, ZIndex=4,
    }, entry)
    corner(badgeFr, 4)
    mk("UIPadding", {PaddingLeft=UDim.new(0,5), PaddingRight=UDim.new(0,5)}, badgeFr)
    mk("TextLabel", {
        Size=UDim2.new(0,0,1,0), AutomaticSize=Enum.AutomaticSize.X,
        BackgroundTransparency=1, Text=meta.badge,
        TextColor3=meta.color, TextSize=9*FS, Font=Enum.Font.GothamBold, ZIndex=5,
    }, badgeFr)

    -- timestamp
    mk("TextLabel", {
        Size=UDim2.new(0,62,0,16), Position=UDim2.new(0,15,0,26),
        BackgroundTransparency=1, Text=os.date("%H:%M:%S"),
        TextColor3=C.MUTED, TextSize=9*FS, Font=Enum.Font.Gotham,
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=4,
    }, entry)

    -- name label
    mk("TextLabel", {
        Size=UDim2.new(0.47,-15,0,18), Position=UDim2.new(0,82,0,5),
        BackgroundTransparency=1, Text=tostring(name or remote),
        TextColor3=C.TEXT, TextSize=12*FS, Font=Enum.Font.GothamBold,
        TextXAlignment=Enum.TextXAlignment.Left,
        TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=4,
    }, entry)

    -- args label
    mk("TextLabel", {
        Size=UDim2.new(0.47,-15,0,14), Position=UDim2.new(0,82,0,24),
        BackgroundTransparency=1, Text=argsStr,
        TextColor3=C.MUTED, TextSize=9.5*FS, Font=Enum.Font.Gotham,
        TextXAlignment=Enum.TextXAlignment.Left,
        TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=4,
    }, entry)

    -- instance path (remotes/bindables only)
    if hasPath then
        mk("TextLabel", {
            Size=UDim2.new(0.47,-15,0,12), Position=UDim2.new(0,82,0,39),
            BackgroundTransparency=1, Text=path,
            TextColor3=Color3.fromRGB(60,55,95), TextSize=9*FS, Font=Enum.Font.Gotham,
            TextXAlignment=Enum.TextXAlignment.Left,
            TextTruncate=Enum.TextTruncate.AtEnd, ZIndex=4,
        }, entry)
    end

    -- button container (right-aligned)
    local btnFr = mk("Frame", {
        Size=UDim2.new(0,200,1,0), Position=UDim2.new(1,-205,0,0),
        BackgroundTransparency=1, ZIndex=4,
    }, entry)

    local function mkBtn(label, xOff, w, col)
        local b = mk("TextButton", {
            Size=UDim2.new(0,w,0,BTN_H), Position=UDim2.new(0,xOff,0.5,-BTN_H/2),
            BackgroundColor3=C.BG3, Text=label,
            TextColor3=col or C.MUTED, TextSize=10*FS, Font=Enum.Font.GothamBold,
            BorderSizePixel=0, ZIndex=5,
        }, btnFr)
        corner(b, 7)
        stroke(b, C.BORDER)
        b.MouseEnter:Connect(function()
            tw(b, .1, {BackgroundColor3=Color3.fromRGB(22,20,35)})
        end)
        b.MouseLeave:Connect(function()
            local fixed = {"✓ Copied","✓ Sent","Spam ●","Auto ●"}
            for _, s in ipairs(fixed) do if b.Text==s then return end end
            tw(b, .1, {BackgroundColor3=C.BG3})
        end)
        return b
    end

    local autoBtn = mkBtn("Auto",  0,   58, nil)
    local cpyBtn  = mkBtn("Copy",  64,  56, nil)
    local runBtn  = mkBtn("Run",  126,  54, C.GREEN)

    -- ── Replay captured call ──────────────────────
    local function replay()
        suppress = suppress + 1
        if     sigType=="Remote"         then pcall(function() remote:FireServer(table.unpack(args))   end)
        elseif sigType=="RemoteFunction" then pcall(function() remote:InvokeServer(table.unpack(args)) end)
        elseif sigType=="Bindable"       then pcall(function() remote:Fire(table.unpack(args))         end)
        elseif sigType=="BindableFunc"   then pcall(function() remote:Invoke(table.unpack(args))       end)
        elseif sigType=="Product"        then pcall(function() MarketplaceService:PromptProductPurchase(lp, remote)  end)
        elseif sigType=="Gamepass"       then pcall(function() MarketplaceService:PromptGamePassPurchase(lp, remote) end)
        end
        suppress = suppress - 1
    end

    -- Copy name + args to clipboard
    cpyBtn.MouseButton1Click:Connect(function()
        local txt = (typeof(remote)=="Instance" and remote.Name or tostring(remote))
                    .. "\n" .. argsStr
                    .. (hasPath and ("\n" .. path) or "")
        pcall(setclipboard, txt)
        cpyBtn.Text = "✓ Copied"; cpyBtn.TextColor3 = C.GREEN
        task.wait(1.5)
        if cpyBtn.Parent then cpyBtn.Text="Copy"; cpyBtn.TextColor3=C.MUTED end
    end)

    -- Auto (fires at AUTO_SPEED/s until toggled off)
    local autoOn, autoLp = false, nil
    local function startAuto()
        if autoOn then return end
        autoOn=true
        autoBtn.Text="Auto ●"; autoBtn.TextColor3=C.RED
        autoBtn.BackgroundColor3=Color3.fromRGB(30,10,10)
        autoLp = task.spawn(function()
            local d = AUTO_SPEED>0 and 1/AUTO_SPEED or 0.01
            while autoOn and autoBtn.Parent do
                replay(); task.wait(d)
            end
        end)
        activeAutos[autoBtn] = {loop=autoLp}
    end
    local function stopAuto()
        autoOn=false
        if autoLp then task.cancel(autoLp) end
        activeAutos[autoBtn] = nil
        if autoBtn.Parent then
            autoBtn.Text="Auto"; autoBtn.TextColor3=C.MUTED
            autoBtn.BackgroundColor3=C.BG3
        end
    end
    autoBtn.MouseButton1Click:Connect(function()
        if autoOn then stopAuto() else startAuto() end
    end)

    -- Run (click = once; hold 2.5s = spam until release)
    local spamOn,spamLp,holdSt,holdCn = false,nil,nil,nil
    local function startSpam()
        if spamOn then return end
        spamOn=true
        runBtn.Text="Spam ●"; runBtn.TextColor3=C.YELLOW
        spamLp = task.spawn(function()
            while spamOn and runBtn.Parent do
                replay(); task.wait(0.05)
            end
        end)
        activeSpams[runBtn] = {loop=spamLp}
    end
    local function stopSpam()
        spamOn=false
        if spamLp then task.cancel(spamLp) end
        activeSpams[runBtn] = nil
        if runBtn.Parent then
            runBtn.Text="Run"; runBtn.TextColor3=C.GREEN
            runBtn.BackgroundColor3=C.BG3
        end
    end

    runBtn.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or
           i.UserInputType==Enum.UserInputType.Touch then
            if spamOn then return end
            holdSt = tick()
            holdCn = task.spawn(function()
                while holdSt and tick()-holdSt < 2.5 do task.wait(0.1) end
                if holdSt and not spamOn then startSpam() end
            end)
        end
    end)
    runBtn.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or
           i.UserInputType==Enum.UserInputType.Touch then
            local held = holdSt and (tick()-holdSt) or 0
            holdSt=nil
            if holdCn then task.cancel(holdCn) end
            if spamOn then
                stopSpam()
            elseif held < 2.5 then
                replay()
                runBtn.Text="✓ Sent"; runBtn.TextColor3=C.GREEN
                task.wait(1.2)
                if runBtn.Parent then runBtn.Text="Run" end
            end
        end
    end)

    entry.AncestryChanged:Connect(function()
        if not entry.Parent then
            if autoOn then stopAuto() end
            if spamOn  then stopSpam()  end
            for j, e in ipairs(entries) do
                if e==entry then table.remove(entries,j); break end
            end
        end
    end)

    -- apply current tab + search filter
    local s    = filterText:lower()
    local tOk  = curTab=="All" or meta.cat==curTab
    local sOk  = s=="" or tostring(name or ""):lower():find(s, 1, true)
    entry.Visible = tOk and sOk

    setEmpty(false)
    countLbl.Text = eventCount .. (eventCount==1 and " event" or " events")
    table.insert(entries, entry)

    -- auto-scroll to newest
    task.defer(function()
        if logArea and logArea.Parent then
            logArea.CanvasPosition = Vector2.new(0, math.huge)
        end
    end)
end

----------------------------------------------------------------
-- CLEAR BUTTON
----------------------------------------------------------------
clrBtn.MouseButton1Click:Connect(function()
    stopAll()
    for _, e in ipairs(entries) do pcall(e.Destroy, e) end
    entries={}; eventCount=0; countLbl.Text="0 events"
    setEmpty(true)
end)

----------------------------------------------------------------
-- MARKETPLACE HOOKS
----------------------------------------------------------------
MarketplaceService.PromptProductPurchaseFinished:Connect(function(_, id)
    if suppress==0 then addLog("Product",  id, "Product #"..id,  {}) end
end)
MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(_, id)
    if suppress==0 then addLog("Gamepass", id, "Gamepass #"..id, {}) end
end)
MarketplaceService.PromptBulkPurchaseFinished:Connect(function(_, id)
    if suppress==0 then addLog("Bulk",     id, "Bulk #"..id,     {}) end
end)
MarketplaceService.PromptPurchaseFinished:Connect(function(_, id)
    if suppress==0 then addLog("Purchase", id, "Purchase #"..id, {}) end
end)

----------------------------------------------------------------
-- REMOTE SPY  –  hook __namecall to intercept FireServer etc.
-- Requires hookmetamethod (executor feature)
----------------------------------------------------------------
if typeof(hookmetamethod) == "function" then
    local oldNC
    oldNC = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if suppress==0 and typeof(self)=="Instance" then
            local a = {...}
            if method=="FireServer" and self:IsA("RemoteEvent") then
                task.defer(function() addLog("Remote",         self, self.Name, a) end)
            elseif method=="InvokeServer" and self:IsA("RemoteFunction") then
                task.defer(function() addLog("RemoteFunction", self, self.Name, a) end)
            elseif method=="Fire"   and self:IsA("BindableEvent") then
                task.defer(function() addLog("Bindable",       self, self.Name, a) end)
            elseif method=="Invoke" and self:IsA("BindableFunction") then
                task.defer(function() addLog("BindableFunc",   self, self.Name, a) end)
            end
        end
        return oldNC(self, ...)
    end))
end

----------------------------------------------------------------
-- CLIENT EVENT SPY  –  scan all RemoteEvents and hook
-- OnClientEvent so we can log what the server sends down
----------------------------------------------------------------
local hooked = {}

local function hookClient(obj)
    if hooked[obj] then return end
    hooked[obj] = true
    if obj:IsA("RemoteEvent") then
        obj.OnClientEvent:Connect(function(...)
            if suppress==0 then
                local a = {...}
                addLog("ClientRemote", obj, obj.Name, a)
            end
        end)
    end
    -- OnClientInvoke cannot be transparently hooked without overwriting it;
    -- omitted intentionally to avoid breaking game callbacks.
end

local function scanRemotes(root)
    for _, obj in ipairs(root:GetDescendants()) do
        if obj:IsA("RemoteEvent") then
            hookClient(obj)
        end
    end
end

scanRemotes(game)
game.DescendantAdded:Connect(function(obj)
    -- yield one frame so the object is fully parented/replicated
    if obj:IsA("RemoteEvent") then
        task.defer(hookClient, obj)
    end
end)

----------------------------------------------------------------
setEmpty(true)
-- SELUWIA v2 loaded  ✓
----------------------------------------------------------------
