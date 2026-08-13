local SimpleLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/SimpleLib/refs/heads/main/SimpleLib.lua"))()
local Window = SimpleLib:Window("sub 2 vaehz")

local Tab1 = Window:AddSection("delete builds")
local Tab2 = Window:AddSection("auto build")

local victim

Tab1:Button("Delete All", function(v)
    for i, plot in pairs(workspace.Built:GetChildren()) do
        for _, block in pairs(plot:GetChildren()) do
            local Event = game:GetService("ReplicatedStorage").Events.DestroyBlock
            task.spawn(function()
                Event:InvokeServer(
                    block
                )
            end)
        end
    end
end)

Tab1:TextBox("Victim Name", 2, function(v)
    for i, plr in pairs(game:GetService("Players"):GetPlayers()) do
        if plr.Name:lower():find(v:lower()) then
            victim = plr
        end
    end
end)

Tab1:Button("Delete Victim", function()
    if not victim then return end

    for i, block in pairs(workspace.Built[victim.Name]:GetChildren()) do
        local Event = game:GetService("ReplicatedStorage").Events.DestroyBlock
        task.spawn(function()
            Event:InvokeServer(
                block
            )
        end)
    end
end)

local subtovaehz = {
  --[1] t=1781713575.31
  {"Cobblestone", CFrame.new(944, 2, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[2] t=1781713575.91
  {"Cobblestone", CFrame.new(944, 2, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[3] t=1781713576.86
  {"Cobblestone", CFrame.new(944, 2, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[4] t=1781713577.59
  {"Cobblestone", CFrame.new(944, 2, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[5] t=1781713578.02
  {"Cobblestone", CFrame.new(944, 2, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[6] t=1781713578.40
  {"Cobblestone", CFrame.new(944, 2, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[7] t=1781713578.77
  {"Cobblestone", CFrame.new(944, 2, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[8] t=1781713579.73
  {"Cobblestone", CFrame.new(944, 2, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[9] t=1781713580.04
  {"Cobblestone", CFrame.new(944, 2, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[10] t=1781713580.40
  {"Cobblestone", CFrame.new(944, 2, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[11] t=1781713580.74
  {"Cobblestone", CFrame.new(944, 2, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[12] t=1781713581.14
  {"Cobblestone", CFrame.new(944, 2, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[13] t=1781713583.78
  {"Cobblestone", CFrame.new(944, 6, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[14] t=1781713584.93
  {"Cobblestone", CFrame.new(944, 6, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[15] t=1781713585.18
  {"Cobblestone", CFrame.new(944, 6, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[16] t=1781713585.40
  {"Cobblestone", CFrame.new(944, 6, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[17] t=1781713585.63
  {"Cobblestone", CFrame.new(944, 6, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[18] t=1781713585.87
  {"Cobblestone", CFrame.new(944, 6, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[19] t=1781713586.06
  {"Cobblestone", CFrame.new(944, 6, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[20] t=1781713586.26
  {"Cobblestone", CFrame.new(944, 6, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[21] t=1781713586.46
  {"Cobblestone", CFrame.new(944, 6, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[22] t=1781713588.48
  {"Cobblestone", CFrame.new(944, 6, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[23] t=1781713588.74
  {"Cobblestone", CFrame.new(944, 6, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[24] t=1781713589.07
  {"Cobblestone", CFrame.new(944, 6, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[25] t=1781713590.91
  {"Cobblestone", CFrame.new(944, 10, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[26] t=1781713591.13
  {"Cobblestone", CFrame.new(944, 10, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[27] t=1781713591.32
  {"Cobblestone", CFrame.new(944, 10, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[28] t=1781713591.51
  {"Cobblestone", CFrame.new(944, 10, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[29] t=1781713591.72
  {"Cobblestone", CFrame.new(944, 10, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[30] t=1781713591.93
  {"Cobblestone", CFrame.new(944, 10, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[31] t=1781713593.81
  {"Cobblestone", CFrame.new(944, 10, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[32] t=1781713594.05
  {"Cobblestone", CFrame.new(944, 10, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[33] t=1781713594.24
  {"Cobblestone", CFrame.new(944, 10, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[34] t=1781713594.42
  {"Cobblestone", CFrame.new(944, 10, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[35] t=1781713594.63
  {"Cobblestone", CFrame.new(944, 10, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[36] t=1781713595.06
  {"Cobblestone", CFrame.new(944, 10, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[37] t=1781713597.64
  {"Cobblestone", CFrame.new(944, 14, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[38] t=1781713597.91
  {"Cobblestone", CFrame.new(944, 14, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[39] t=1781713598.17
  {"Cobblestone", CFrame.new(944, 14, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[40] t=1781713598.64
  {"Cobblestone", CFrame.new(944, 18, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[41] t=1781713598.93
  {"Cobblestone", CFrame.new(944, 18, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[42] t=1781713599.20
  {"Cobblestone", CFrame.new(944, 18, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[43] t=1781713600.96
  {"Cobblestone", CFrame.new(944, 22, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[44] t=1781713601.23
  {"Cobblestone", CFrame.new(944, 22, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[45] t=1781713602.01
  {"Cobblestone", CFrame.new(944, 22, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[46] t=1781713631.76
  {"Cobblestone", CFrame.new(944, 22, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[47] t=1781713632.79
  {"Cobblestone", CFrame.new(944, 22, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[48] t=1781713633.16
  {"Cobblestone", CFrame.new(944, 22, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[49] t=1781713633.69
  {"Cobblestone", CFrame.new(944, 22, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[50] t=1781713637.07
  {"Cobblestone", CFrame.new(944, 22, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[51] t=1781713637.44
  {"Cobblestone", CFrame.new(944, 22, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[52] t=1781713637.80
  {"Cobblestone", CFrame.new(944, 22, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[53] t=1781713638.16
  {"Cobblestone", CFrame.new(944, 22, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[54] t=1781713639.83
  {"Cobblestone", CFrame.new(944, 22, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[55] t=1781713641.25
  {"Cobblestone", CFrame.new(944, 26, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[56] t=1781713641.62
  {"Cobblestone", CFrame.new(944, 26, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[57] t=1781713641.95
  {"Cobblestone", CFrame.new(944, 26, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[58] t=1781713642.27
  {"Cobblestone", CFrame.new(944, 26, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[59] t=1781713642.66
  {"Cobblestone", CFrame.new(944, 26, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[60] t=1781713643.78
  {"Cobblestone", CFrame.new(944, 26, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[61] t=1781713644.16
  {"Cobblestone", CFrame.new(944, 26, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[62] t=1781713644.48
  {"Cobblestone", CFrame.new(944, 26, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[63] t=1781713644.90
  {"Cobblestone", CFrame.new(944, 26, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[64] t=1781713645.25
  {"Cobblestone", CFrame.new(944, 26, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[65] t=1781713646.23
  {"Cobblestone", CFrame.new(944, 26, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[66] t=1781713647.12
  {"Cobblestone", CFrame.new(944, 26, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[67] t=1781713648.38
  {"Cobblestone", CFrame.new(944, 30, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[68] t=1781713649.33
  {"Cobblestone", CFrame.new(944, 30, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[69] t=1781713649.76
  {"Cobblestone", CFrame.new(944, 30, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[70] t=1781713652.75
  {"Cobblestone", CFrame.new(944, 34, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[71] t=1781713653.10
  {"Cobblestone", CFrame.new(944, 34, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[72] t=1781713653.49
  {"Cobblestone", CFrame.new(944, 34, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[73] t=1781713653.98
  {"Cobblestone", CFrame.new(944, 38, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[74] t=1781713654.32
  {"Cobblestone", CFrame.new(944, 38, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[75] t=1781713654.69
  {"Cobblestone", CFrame.new(944, 38, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[76] t=1781713656.33
  {"Cobblestone", CFrame.new(944, 38, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[77] t=1781713656.70
  {"Cobblestone", CFrame.new(944, 38, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[78] t=1781713657.05
  {"Cobblestone", CFrame.new(944, 38, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[79] t=1781713657.41
  {"Cobblestone", CFrame.new(944, 38, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[80] t=1781713657.86
  {"Cobblestone", CFrame.new(944, 38, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[81] t=1781713658.27
  {"Cobblestone", CFrame.new(944, 38, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[82] t=1781713658.67
  {"Cobblestone", CFrame.new(944, 38, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[83] t=1781713658.99
  {"Cobblestone", CFrame.new(944, 38, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[84] t=1781713659.39
  {"Cobblestone", CFrame.new(944, 38, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[85] t=1781713662.10
  {"Cobblestone", CFrame.new(944, 42, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[86] t=1781713662.68
  {"Cobblestone", CFrame.new(944, 46, -968, 1, 0, 0, 0), workspace.Baseplate},
  --[87] t=1781713663.23
  {"Cobblestone", CFrame.new(944, 42, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[88] t=1781713663.78
  {"Cobblestone", CFrame.new(944, 46, -964, 1, 0, 0, 0), workspace.Baseplate},
  --[89] t=1781713664.31
  {"Cobblestone", CFrame.new(944, 42, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[90] t=1781713664.87
  {"Cobblestone", CFrame.new(944, 46, -960, 1, 0, 0, 0), workspace.Baseplate},
  --[91] t=1781713665.36
  {"Cobblestone", CFrame.new(944, 42, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[92] t=1781713665.91
  {"Cobblestone", CFrame.new(944, 46, -956, 1, 0, 0, 0), workspace.Baseplate},
  --[93] t=1781713666.47
  {"Cobblestone", CFrame.new(944, 42, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[94] t=1781713667.03
  {"Cobblestone", CFrame.new(944, 46, -952, 1, 0, 0, 0), workspace.Baseplate},
  --[95] t=1781713667.47
  {"Cobblestone", CFrame.new(944, 42, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[96] t=1781713668.05
  {"Cobblestone", CFrame.new(944, 46, -948, 1, 0, 0, 0), workspace.Baseplate},
  --[97] t=1781713668.53
  {"Cobblestone", CFrame.new(944, 42, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[98] t=1781713669.11
  {"Cobblestone", CFrame.new(944, 46, -944, 1, 0, 0, 0), workspace.Baseplate},
  --[99] t=1781713669.59
  {"Cobblestone", CFrame.new(944, 42, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[100] t=1781713670.18
  {"Cobblestone", CFrame.new(944, 46, -940, 1, 0, 0, 0), workspace.Baseplate},
  --[101] t=1781713670.99
  {"Cobblestone", CFrame.new(944, 42, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[102] t=1781713671.54
  {"Cobblestone", CFrame.new(944, 46, -936, 1, 0, 0, 0), workspace.Baseplate},
  --[103] t=1781713672.12
  {"Cobblestone", CFrame.new(944, 42, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[104] t=1781713672.66
  {"Cobblestone", CFrame.new(944, 46, -932, 1, 0, 0, 0), workspace.Baseplate},
  --[105] t=1781713673.28
  {"Cobblestone", CFrame.new(944, 42, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[106] t=1781713673.78
  {"Cobblestone", CFrame.new(944, 46, -928, 1, 0, 0, 0), workspace.Baseplate},
  --[107] t=1781713674.27
  {"Cobblestone", CFrame.new(944, 42, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[108] t=1781713674.97
  {"Cobblestone", CFrame.new(944, 46, -924, 1, 0, 0, 0), workspace.Baseplate},
  --[109] t=1781713708.36
  {"Cobblestone", CFrame.new(944, 2, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[110] t=1781713708.67
  {"Cobblestone", CFrame.new(944, 2, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[111] t=1781713709.27
  {"Cobblestone", CFrame.new(944, 2, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[112] t=1781713709.87
  {"Cobblestone", CFrame.new(944, 2, -900, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[113] t=1781713710.99
  {"Cobblestone", CFrame.new(944, 2, -896, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[114] t=1781713711.26
  {"Cobblestone", CFrame.new(944, 2, -892, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[115] t=1781713713.00
  {"Cobblestone", CFrame.new(944, 2, -888, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[116] t=1781713713.36
  {"Cobblestone", CFrame.new(944, 2, -884, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[117] t=1781713713.69
  {"Cobblestone", CFrame.new(944, 2, -880, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[118] t=1781713714.08
  {"Cobblestone", CFrame.new(944, 2, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[119] t=1781713714.46
  {"Cobblestone", CFrame.new(944, 2, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[120] t=1781713714.84
  {"Cobblestone", CFrame.new(944, 2, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[121] t=1781713716.28
  {"Cobblestone", CFrame.new(944, 6, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[122] t=1781713716.64
  {"Cobblestone", CFrame.new(944, 6, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[123] t=1781713716.94
  {"Cobblestone", CFrame.new(944, 6, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[124] t=1781713717.34
  {"Cobblestone", CFrame.new(944, 6, -900, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[125] t=1781713717.64
  {"Cobblestone", CFrame.new(944, 6, -896, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[126] t=1781713718.06
  {"Cobblestone", CFrame.new(944, 6, -892, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[127] t=1781713718.39
  {"Cobblestone", CFrame.new(944, 6, -888, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[128] t=1781713718.70
  {"Cobblestone", CFrame.new(944, 6, -884, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[129] t=1781713719.72
  {"Cobblestone", CFrame.new(944, 6, -880, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[130] t=1781713720.00
  {"Cobblestone", CFrame.new(944, 6, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[131] t=1781713720.32
  {"Cobblestone", CFrame.new(944, 6, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[132] t=1781713720.86
  {"Cobblestone", CFrame.new(944, 6, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[133] t=1781713722.38
  {"Cobblestone", CFrame.new(944, 10, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[134] t=1781713722.65
  {"Cobblestone", CFrame.new(944, 10, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[135] t=1781713722.85
  {"Cobblestone", CFrame.new(944, 10, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[136] t=1781713723.04
  {"Cobblestone", CFrame.new(944, 10, -900, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[137] t=1781713723.25
  {"Cobblestone", CFrame.new(944, 10, -896, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[138] t=1781713723.44
  {"Cobblestone", CFrame.new(944, 10, -892, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[139] t=1781713723.67
  {"Cobblestone", CFrame.new(944, 10, -888, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[140] t=1781713723.93
  {"Cobblestone", CFrame.new(944, 10, -884, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[141] t=1781713724.26
  {"Cobblestone", CFrame.new(944, 10, -880, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[142] t=1781713724.55
  {"Cobblestone", CFrame.new(944, 10, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[143] t=1781713724.90
  {"Cobblestone", CFrame.new(944, 10, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[144] t=1781713725.72
  {"Cobblestone", CFrame.new(944, 10, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[145] t=1781713727.01
  {"Cobblestone", CFrame.new(944, 14, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[146] t=1781713727.25
  {"Cobblestone", CFrame.new(944, 14, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[147] t=1781713727.51
  {"Cobblestone", CFrame.new(944, 14, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[148] t=1781713729.21
  {"Cobblestone", CFrame.new(944, 18, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[149] t=1781713729.50
  {"Cobblestone", CFrame.new(944, 18, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[150] t=1781713729.82
  {"Cobblestone", CFrame.new(944, 18, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[151] t=1781713730.37
  {"Cobblestone", CFrame.new(944, 22, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[152] t=1781713730.67
  {"Cobblestone", CFrame.new(944, 22, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[153] t=1781713730.96
  {"Cobblestone", CFrame.new(944, 22, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[154] t=1781713731.47
  {"Cobblestone", CFrame.new(944, 26, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[155] t=1781713731.75
  {"Cobblestone", CFrame.new(944, 26, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[156] t=1781713732.06
  {"Cobblestone", CFrame.new(944, 26, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[157] t=1781713732.54
  {"Cobblestone", CFrame.new(944, 30, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[158] t=1781713732.89
  {"Cobblestone", CFrame.new(944, 30, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[159] t=1781713733.23
  {"Cobblestone", CFrame.new(944, 30, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[160] t=1781713743.06
  {"Cobblestone", CFrame.new(944, 34, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[161] t=1781713743.44
  {"Cobblestone", CFrame.new(944, 38, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[162] t=1781713743.86
  {"Cobblestone", CFrame.new(944, 42, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[163] t=1781713744.98
  {"Cobblestone", CFrame.new(944, 46, -912, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[164] t=1781713745.62
  {"Cobblestone", CFrame.new(944, 34, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[165] t=1781713746.02
  {"Cobblestone", CFrame.new(944, 38, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[166] t=1781713746.43
  {"Cobblestone", CFrame.new(944, 42, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[167] t=1781713746.92
  {"Cobblestone", CFrame.new(944, 46, -908, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[168] t=1781713748.32
  {"Cobblestone", CFrame.new(944, 34, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[169] t=1781713748.66
  {"Cobblestone", CFrame.new(944, 38, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[170] t=1781713748.91
  {"Cobblestone", CFrame.new(944, 42, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[171] t=1781713749.17
  {"Cobblestone", CFrame.new(944, 46, -904, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[172] t=1781713751.27
  {"Cobblestone", CFrame.new(944, 14, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[173] t=1781713754.39
  {"Cobblestone", CFrame.new(944, 14, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[174] t=1781713754.61
  {"Cobblestone", CFrame.new(944, 14, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[175] t=1781713754.94
  {"Cobblestone", CFrame.new(944, 18, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[176] t=1781713755.21
  {"Cobblestone", CFrame.new(944, 18, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[177] t=1781713755.62
  {"Cobblestone", CFrame.new(944, 18, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[178] t=1781713758.91
  {"Cobblestone", CFrame.new(944, 22, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[179] t=1781713759.25
  {"Cobblestone", CFrame.new(944, 22, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[180] t=1781713760.07
  {"Cobblestone", CFrame.new(944, 22, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[181] t=1781713763.16
  {"Cobblestone", CFrame.new(944, 26, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[182] t=1781713763.43
  {"Cobblestone", CFrame.new(944, 26, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[183] t=1781713763.81
  {"Cobblestone", CFrame.new(944, 30, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[184] t=1781713764.06
  {"Cobblestone", CFrame.new(944, 30, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[185] t=1781713764.53
  {"Cobblestone", CFrame.new(944, 26, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[186] t=1781713765.97
  {"Cobblestone", CFrame.new(944, 30, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[187] t=1781713770.02
  {"Cobblestone", CFrame.new(944, 34, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[188] t=1781713770.40
  {"Cobblestone", CFrame.new(944, 34, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[189] t=1781713770.76
  {"Cobblestone", CFrame.new(944, 38, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[190] t=1781713771.01
  {"Cobblestone", CFrame.new(944, 38, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[191] t=1781713771.50
  {"Cobblestone", CFrame.new(944, 42, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[192] t=1781713771.73
  {"Cobblestone", CFrame.new(944, 42, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[193] t=1781713773.18
  {"Cobblestone", CFrame.new(944, 46, -872, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[194] t=1781713773.43
  {"Cobblestone", CFrame.new(944, 46, -868, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[195] t=1781713776.52
  {"Cobblestone", CFrame.new(944, 34, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[196] t=1781713776.83
  {"Cobblestone", CFrame.new(944, 38, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[197] t=1781713777.20
  {"Cobblestone", CFrame.new(944, 42, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[198] t=1781713777.74
  {"Cobblestone", CFrame.new(944, 46, -876, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[199] t=1781713782.85
  {"Cobblestone", CFrame.new(944, 2, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[200] t=1781713783.47
  {"Cobblestone", CFrame.new(944, 2, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[201] t=1781713784.00
  {"Cobblestone", CFrame.new(944, 2, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[202] t=1781713784.34
  {"Cobblestone", CFrame.new(944, 2, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[203] t=1781713784.79
  {"Cobblestone", CFrame.new(944, 2, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[204] t=1781713785.89
  {"Cobblestone", CFrame.new(944, 6, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[205] t=1781713786.16
  {"Cobblestone", CFrame.new(944, 6, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[206] t=1781713786.47
  {"Cobblestone", CFrame.new(944, 6, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[207] t=1781713789.79
  {"Cobblestone", CFrame.new(944, 10, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[208] t=1781713790.01
  {"Cobblestone", CFrame.new(944, 10, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[209] t=1781713790.31
  {"Cobblestone", CFrame.new(944, 14, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[210] t=1781713790.54
  {"Cobblestone", CFrame.new(944, 14, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[211] t=1781713790.81
  {"Cobblestone", CFrame.new(944, 18, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[212] t=1781713791.04
  {"Cobblestone", CFrame.new(944, 18, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[213] t=1781713791.33
  {"Cobblestone", CFrame.new(944, 22, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[214] t=1781713791.57
  {"Cobblestone", CFrame.new(944, 22, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[215] t=1781713792.44
  {"Cobblestone", CFrame.new(944, 26, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[216] t=1781713792.68
  {"Cobblestone", CFrame.new(944, 26, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[217] t=1781713793.04
  {"Cobblestone", CFrame.new(944, 30, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[218] t=1781713793.28
  {"Cobblestone", CFrame.new(944, 30, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[219] t=1781713794.74
  {"Cobblestone", CFrame.new(944, 34, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[220] t=1781713794.98
  {"Cobblestone", CFrame.new(944, 34, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[221] t=1781713795.33
  {"Cobblestone", CFrame.new(944, 38, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[222] t=1781713795.64
  {"Cobblestone", CFrame.new(944, 38, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[223] t=1781713797.73
  {"Cobblestone", CFrame.new(944, 10, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[224] t=1781713798.18
  {"Cobblestone", CFrame.new(944, 14, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[225] t=1781713798.56
  {"Cobblestone", CFrame.new(944, 18, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[226] t=1781713798.77
  {"Cobblestone", CFrame.new(944, 22, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[227] t=1781713799.02
  {"Cobblestone", CFrame.new(944, 26, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[228] t=1781713799.28
  {"Cobblestone", CFrame.new(944, 30, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[229] t=1781713799.68
  {"Cobblestone", CFrame.new(944, 34, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[230] t=1781713800.03
  {"Cobblestone", CFrame.new(944, 38, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[231] t=1781713801.30
  {"Cobblestone", CFrame.new(944, 42, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[232] t=1781713801.53
  {"Cobblestone", CFrame.new(944, 42, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[233] t=1781713801.98
  {"Cobblestone", CFrame.new(944, 46, -856, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[234] t=1781713802.26
  {"Cobblestone", CFrame.new(944, 46, -852, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[235] t=1781713803.79
  {"Cobblestone", CFrame.new(944, 42, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[236] t=1781713804.24
  {"Cobblestone", CFrame.new(944, 46, -848, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[237] t=1781713807.12
  {"Cobblestone", CFrame.new(944, 6, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[238] t=1781713807.48
  {"Cobblestone", CFrame.new(944, 6, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[239] t=1781713809.88
  {"Cobblestone", CFrame.new(944, 22, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[240] t=1781713810.38
  {"Cobblestone", CFrame.new(944, 26, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[241] t=1781713811.63
  {"Cobblestone", CFrame.new(944, 22, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[242] t=1781713811.92
  {"Cobblestone", CFrame.new(944, 26, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[243] t=1781713812.39
  {"Cobblestone", CFrame.new(944, 22, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[244] t=1781713812.63
  {"Cobblestone", CFrame.new(944, 26, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[245] t=1781713814.66
  {"Cobblestone", CFrame.new(944, 2, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[246] t=1781713815.31
  {"Cobblestone", CFrame.new(944, 6, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[247] t=1781713816.26
  {"Cobblestone", CFrame.new(944, 2, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[248] t=1781713816.64
  {"Cobblestone", CFrame.new(944, 6, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[249] t=1781713817.06
  {"Cobblestone", CFrame.new(944, 10, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[250] t=1781713817.68
  {"Cobblestone", CFrame.new(944, 14, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[251] t=1781713818.23
  {"Cobblestone", CFrame.new(944, 18, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[252] t=1781713820.36
  {"Cobblestone", CFrame.new(944, 2, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[253] t=1781713820.96
  {"Cobblestone", CFrame.new(944, 6, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[254] t=1781713821.44
  {"Cobblestone", CFrame.new(944, 10, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[255] t=1781713822.12
  {"Cobblestone", CFrame.new(944, 14, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[256] t=1781713822.78
  {"Cobblestone", CFrame.new(944, 18, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[257] t=1781713829.29
  {"Cobblestone", CFrame.new(944, 42, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[258] t=1781713829.51
  {"Cobblestone", CFrame.new(944, 46, -844, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[259] t=1781713829.98
  {"Cobblestone", CFrame.new(944, 42, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[260] t=1781713830.19
  {"Cobblestone", CFrame.new(944, 46, -840, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[261] t=1781713830.75
  {"Cobblestone", CFrame.new(944, 42, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[262] t=1781713830.98
  {"Cobblestone", CFrame.new(944, 46, -836, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[263] t=1781713831.45
  {"Cobblestone", CFrame.new(944, 42, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[264] t=1781713831.69
  {"Cobblestone", CFrame.new(944, 46, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[265] t=1781713833.54
  {"Cobblestone", CFrame.new(944, 38, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[266] t=1781713833.99
  {"Cobblestone", CFrame.new(944, 34, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[267] t=1781713834.50
  {"Cobblestone", CFrame.new(944, 30, -832, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[268] t=1781713835.63
  {"Cobblestone", CFrame.new(944, 46, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[269] t=1781713835.99
  {"Cobblestone", CFrame.new(944, 42, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[270] t=1781713836.58
  {"Cobblestone", CFrame.new(944, 38, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[271] t=1781713837.13
  {"Cobblestone", CFrame.new(944, 34, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[272] t=1781713837.76
  {"Cobblestone", CFrame.new(944, 30, -828, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[273] t=1781713851.15
  {"Cobblestone", CFrame.new(944, 2, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[274] t=1781713853.39
  {"Cobblestone", CFrame.new(944, 2, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[275] t=1781713855.80
  {"Cobblestone", CFrame.new(944, 2, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[276] t=1781713858.25
  {"Cobblestone", CFrame.new(944, 6, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[277] t=1781713858.55
  {"Cobblestone", CFrame.new(944, 6, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[278] t=1781713858.86
  {"Cobblestone", CFrame.new(944, 6, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[279] t=1781713859.21
  {"Cobblestone", CFrame.new(944, 10, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[280] t=1781713859.50
  {"Cobblestone", CFrame.new(944, 10, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[281] t=1781713861.10
  {"Cobblestone", CFrame.new(944, 10, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[282] t=1781713861.63
  {"Cobblestone", CFrame.new(944, 14, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[283] t=1781713861.90
  {"Cobblestone", CFrame.new(944, 14, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[284] t=1781713862.21
  {"Cobblestone", CFrame.new(944, 14, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[285] t=1781713862.78
  {"Cobblestone", CFrame.new(944, 18, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[286] t=1781713863.10
  {"Cobblestone", CFrame.new(944, 18, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[287] t=1781713863.36
  {"Cobblestone", CFrame.new(944, 18, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[288] t=1781713864.01
  {"Cobblestone", CFrame.new(944, 22, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[289] t=1781713864.36
  {"Cobblestone", CFrame.new(944, 22, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[290] t=1781713864.66
  {"Cobblestone", CFrame.new(944, 22, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[291] t=1781713865.31
  {"Cobblestone", CFrame.new(944, 26, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[292] t=1781713865.61
  {"Cobblestone", CFrame.new(944, 26, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[293] t=1781713865.93
  {"Cobblestone", CFrame.new(944, 26, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[294] t=1781713867.27
  {"Cobblestone", CFrame.new(944, 30, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[295] t=1781713867.61
  {"Cobblestone", CFrame.new(944, 30, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[296] t=1781713867.93
  {"Cobblestone", CFrame.new(944, 30, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[297] t=1781713872.17
  {"Cobblestone", CFrame.new(944, 34, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[298] t=1781713872.54
  {"Cobblestone", CFrame.new(944, 34, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[299] t=1781713872.98
  {"Cobblestone", CFrame.new(944, 34, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[300] t=1781713873.85
  {"Cobblestone", CFrame.new(944, 38, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[301] t=1781713874.60
  {"Cobblestone", CFrame.new(944, 38, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[302] t=1781713875.08
  {"Cobblestone", CFrame.new(944, 38, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[303] t=1781713875.94
  {"Cobblestone", CFrame.new(944, 42, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[304] t=1781713877.95
  {"Cobblestone", CFrame.new(944, 42, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[305] t=1781713878.42
  {"Cobblestone", CFrame.new(944, 42, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[306] t=1781713879.14
  {"Cobblestone", CFrame.new(944, 46, -792, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[307] t=1781713879.68
  {"Cobblestone", CFrame.new(944, 46, -800, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[308] t=1781713880.18
  {"Cobblestone", CFrame.new(944, 46, -796, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[309] t=1781713882.42
  {"Cobblestone", CFrame.new(944, 42, -804, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[310] t=1781713882.69
  {"Cobblestone", CFrame.new(944, 46, -804, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[311] t=1781713883.22
  {"Cobblestone", CFrame.new(944, 42, -808, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[312] t=1781713883.53
  {"Cobblestone", CFrame.new(944, 46, -808, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[313] t=1781713884.07
  {"Cobblestone", CFrame.new(944, 42, -812, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[314] t=1781713884.39
  {"Cobblestone", CFrame.new(944, 46, -812, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[315] t=1781713886.07
  {"Cobblestone", CFrame.new(944, 42, -788, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[316] t=1781713886.39
  {"Cobblestone", CFrame.new(944, 46, -788, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[317] t=1781713886.81
  {"Cobblestone", CFrame.new(944, 42, -784, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[318] t=1781713887.04
  {"Cobblestone", CFrame.new(944, 46, -784, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[319] t=1781713887.60
  {"Cobblestone", CFrame.new(944, 42, -780, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[320] t=1781713887.84
  {"Cobblestone", CFrame.new(944, 46, -780, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[321] t=1781713904.47
  {"Cobblestone", CFrame.new(944, 2, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[322] t=1781713905.38
  {"Cobblestone", CFrame.new(944, 6, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[323] t=1781713906.67
  {"Cobblestone", CFrame.new(944, 2, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[324] t=1781713907.07
  {"Cobblestone", CFrame.new(944, 2, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[325] t=1781713907.53
  {"Cobblestone", CFrame.new(944, 6, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[326] t=1781713907.97
  {"Cobblestone", CFrame.new(944, 6, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[327] t=1781713908.48
  {"Cobblestone", CFrame.new(944, 10, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[328] t=1781713908.88
  {"Cobblestone", CFrame.new(944, 10, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[329] t=1781713909.37
  {"Cobblestone", CFrame.new(944, 10, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[330] t=1781713910.46
  {"Cobblestone", CFrame.new(944, 14, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[331] t=1781713910.75
  {"Cobblestone", CFrame.new(944, 14, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[332] t=1781713911.00
  {"Cobblestone", CFrame.new(944, 14, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[333] t=1781713911.37
  {"Cobblestone", CFrame.new(944, 18, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[334] t=1781713911.64
  {"Cobblestone", CFrame.new(944, 18, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[335] t=1781713911.95
  {"Cobblestone", CFrame.new(944, 18, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[336] t=1781713913.04
  {"Cobblestone", CFrame.new(944, 22, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[337] t=1781713913.38
  {"Cobblestone", CFrame.new(944, 22, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[338] t=1781713913.70
  {"Cobblestone", CFrame.new(944, 22, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[339] t=1781713914.10
  {"Cobblestone", CFrame.new(944, 26, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[340] t=1781713914.37
  {"Cobblestone", CFrame.new(944, 26, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[341] t=1781713914.71
  {"Cobblestone", CFrame.new(944, 26, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[342] t=1781713915.17
  {"Cobblestone", CFrame.new(944, 30, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[343] t=1781713915.48
  {"Cobblestone", CFrame.new(944, 30, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[344] t=1781713915.80
  {"Cobblestone", CFrame.new(944, 30, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[345] t=1781713919.85
  {"Cobblestone", CFrame.new(944, 34, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[346] t=1781713920.07
  {"Cobblestone", CFrame.new(944, 34, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[347] t=1781713920.54
  {"Cobblestone", CFrame.new(944, 34, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[348] t=1781713921.46
  {"Cobblestone", CFrame.new(944, 38, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[349] t=1781713921.74
  {"Cobblestone", CFrame.new(944, 38, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[350] t=1781713922.10
  {"Cobblestone", CFrame.new(944, 38, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[351] t=1781713928.46
  {"Cobblestone", CFrame.new(944, 42, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[352] t=1781713928.78
  {"Cobblestone", CFrame.new(944, 42, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[353] t=1781713929.11
  {"Cobblestone", CFrame.new(944, 42, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[354] t=1781713930.49
  {"Cobblestone", CFrame.new(944, 46, -768, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[355] t=1781713930.80
  {"Cobblestone", CFrame.new(944, 46, -764, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[356] t=1781713931.09
  {"Cobblestone", CFrame.new(944, 46, -760, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[357] t=1781713934.43
  {"Cobblestone", CFrame.new(944, 2, -756, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[358] t=1781713934.67
  {"Cobblestone", CFrame.new(944, 6, -756, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[359] t=1781713936.43
  {"Cobblestone", CFrame.new(944, 2, -752, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[360] t=1781713936.67
  {"Cobblestone", CFrame.new(944, 6, -752, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[361] t=1781713937.21
  {"Cobblestone", CFrame.new(944, 2, -748, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[362] t=1781713937.49
  {"Cobblestone", CFrame.new(944, 6, -748, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[363] t=1781713938.72
  {"Cobblestone", CFrame.new(944, 2, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[364] t=1781713939.00
  {"Cobblestone", CFrame.new(944, 2, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[365] t=1781713939.36
  {"Cobblestone", CFrame.new(944, 2, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[366] t=1781713939.89
  {"Cobblestone", CFrame.new(944, 6, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[367] t=1781713940.14
  {"Cobblestone", CFrame.new(944, 6, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[368] t=1781713940.42
  {"Cobblestone", CFrame.new(944, 6, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[369] t=1781713940.90
  {"Cobblestone", CFrame.new(944, 10, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[370] t=1781713941.24
  {"Cobblestone", CFrame.new(944, 10, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[371] t=1781713941.52
  {"Cobblestone", CFrame.new(944, 10, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[372] t=1781713942.12
  {"Cobblestone", CFrame.new(944, 14, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[373] t=1781713942.49
  {"Cobblestone", CFrame.new(944, 14, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[374] t=1781713942.78
  {"Cobblestone", CFrame.new(944, 14, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[375] t=1781713946.11
  {"Cobblestone", CFrame.new(944, 18, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[376] t=1781713946.40
  {"Cobblestone", CFrame.new(944, 18, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[377] t=1781713946.68
  {"Cobblestone", CFrame.new(944, 18, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[378] t=1781713947.12
  {"Cobblestone", CFrame.new(944, 22, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[379] t=1781713947.41
  {"Cobblestone", CFrame.new(944, 22, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[380] t=1781713947.68
  {"Cobblestone", CFrame.new(944, 22, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[381] t=1781713948.22
  {"Cobblestone", CFrame.new(944, 26, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[382] t=1781713948.50
  {"Cobblestone", CFrame.new(944, 26, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[383] t=1781713948.81
  {"Cobblestone", CFrame.new(944, 26, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[384] t=1781713949.24
  {"Cobblestone", CFrame.new(944, 30, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[385] t=1781713949.55
  {"Cobblestone", CFrame.new(944, 30, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[386] t=1781713949.82
  {"Cobblestone", CFrame.new(944, 30, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[387] t=1781713952.82
  {"Cobblestone", CFrame.new(944, 34, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[388] t=1781713953.15
  {"Cobblestone", CFrame.new(944, 34, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[389] t=1781713953.48
  {"Cobblestone", CFrame.new(944, 34, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[390] t=1781713953.89
  {"Cobblestone", CFrame.new(944, 38, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[391] t=1781713954.23
  {"Cobblestone", CFrame.new(944, 38, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[392] t=1781713954.57
  {"Cobblestone", CFrame.new(944, 38, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[393] t=1781713954.93
  {"Cobblestone", CFrame.new(944, 42, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[394] t=1781713955.24
  {"Cobblestone", CFrame.new(944, 42, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[395] t=1781713955.51
  {"Cobblestone", CFrame.new(944, 42, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[396] t=1781713956.04
  {"Cobblestone", CFrame.new(944, 46, -736, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[397] t=1781713956.30
  {"Cobblestone", CFrame.new(944, 46, -740, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[398] t=1781713956.64
  {"Cobblestone", CFrame.new(944, 46, -744, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[399] t=1781713958.07
  {"Cobblestone", CFrame.new(944, 42, -756, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[400] t=1781713958.30
  {"Cobblestone", CFrame.new(944, 46, -756, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[401] t=1781713958.60
  {"Cobblestone", CFrame.new(944, 42, -752, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[402] t=1781713958.85
  {"Cobblestone", CFrame.new(944, 46, -752, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[403] t=1781713959.29
  {"Cobblestone", CFrame.new(944, 42, -748, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[404] t=1781713959.52
  {"Cobblestone", CFrame.new(944, 46, -748, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[405] t=1781713968.26
  {"Cobblestone", CFrame.new(944, 2, -700, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[406] t=1781713968.52
  {"Cobblestone", CFrame.new(944, 2, -696, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[407] t=1781713969.13
  {"Cobblestone", CFrame.new(944, 6, -700, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[408] t=1781713969.38
  {"Cobblestone", CFrame.new(944, 6, -696, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[409] t=1781713970.33
  {"Cobblestone", CFrame.new(944, 6, -704, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[410] t=1781713971.77
  {"Cobblestone", CFrame.new(944, 10, -704, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[411] t=1781713972.65
  {"Cobblestone", CFrame.new(944, 10, -708, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[412] t=1781713973.17
  {"Cobblestone", CFrame.new(944, 14, -708, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[413] t=1781713975.01
  {"Cobblestone", CFrame.new(944, 14, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[414] t=1781713975.54
  {"Cobblestone", CFrame.new(944, 18, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[415] t=1781713976.51
  {"Cobblestone", CFrame.new(944, 22, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[416] t=1781713977.10
  {"Cobblestone", CFrame.new(944, 18, -708, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[417] t=1781713977.75
  {"Cobblestone", CFrame.new(944, 14, -704, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[418] t=1781713978.33
  {"Cobblestone", CFrame.new(944, 10, -700, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[419] t=1781713979.41
  {"Cobblestone", CFrame.new(944, 2, -692, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[420] t=1781713980.03
  {"Cobblestone", CFrame.new(944, 6, -692, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[421] t=1781713982.94
  {"Cobblestone", CFrame.new(944, 6, -688, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[422] t=1781713983.38
  {"Cobblestone", CFrame.new(944, 10, -688, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[423] t=1781713984.77
  {"Cobblestone", CFrame.new(944, 10, -684, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[424] t=1781713985.25
  {"Cobblestone", CFrame.new(944, 14, -684, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[425] t=1781713985.91
  {"Cobblestone", CFrame.new(944, 14, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[426] t=1781713986.33
  {"Cobblestone", CFrame.new(944, 18, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[427] t=1781713987.37
  {"Cobblestone", CFrame.new(944, 18, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[428] t=1781713988.01
  {"Cobblestone", CFrame.new(944, 18, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[429] t=1781713989.00
  {"Cobblestone", CFrame.new(944, 22, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[430] t=1781713989.82
  {"Cobblestone", CFrame.new(944, 22, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[431] t=1781713990.25
  {"Cobblestone", CFrame.new(944, 18, -684, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[432] t=1781713990.80
  {"Cobblestone", CFrame.new(944, 14, -688, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[433] t=1781713991.28
  {"Cobblestone", CFrame.new(944, 10, -692, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[434] t=1781713995.75
  {"Cobblestone", CFrame.new(944, 18, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[435] t=1781713996.14
  {"Cobblestone", CFrame.new(944, 22, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[436] t=1781713998.34
  {"Cobblestone", CFrame.new(944, 26, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[437] t=1781713998.71
  {"Cobblestone", CFrame.new(944, 26, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[438] t=1781713999.14
  {"Cobblestone", CFrame.new(944, 30, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[439] t=1781713999.42
  {"Cobblestone", CFrame.new(944, 30, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[440] t=1781713999.89
  {"Cobblestone", CFrame.new(944, 34, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[441] t=1781714000.24
  {"Cobblestone", CFrame.new(944, 34, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[442] t=1781714000.82
  {"Cobblestone", CFrame.new(944, 38, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[443] t=1781714001.12
  {"Cobblestone", CFrame.new(944, 38, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[444] t=1781714001.65
  {"Cobblestone", CFrame.new(944, 42, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[445] t=1781714001.92
  {"Cobblestone", CFrame.new(944, 42, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[446] t=1781714003.43
  {"Cobblestone", CFrame.new(944, 46, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[447] t=1781714003.66
  {"Cobblestone", CFrame.new(944, 46, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[448] t=1781714005.23
  {"Cobblestone", CFrame.new(944, 26, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[449] t=1781714005.46
  {"Cobblestone", CFrame.new(944, 26, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[450] t=1781714008.36
  {"Cobblestone", CFrame.new(944, 30, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[451] t=1781714008.63
  {"Cobblestone", CFrame.new(944, 30, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[452] t=1781714009.01
  {"Cobblestone", CFrame.new(944, 34, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[453] t=1781714009.28
  {"Cobblestone", CFrame.new(944, 34, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[454] t=1781714009.69
  {"Cobblestone", CFrame.new(944, 38, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[455] t=1781714009.93
  {"Cobblestone", CFrame.new(944, 38, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[456] t=1781714010.35
  {"Cobblestone", CFrame.new(944, 42, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[457] t=1781714010.60
  {"Cobblestone", CFrame.new(944, 42, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[458] t=1781714012.15
  {"Cobblestone", CFrame.new(944, 46, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[459] t=1781714012.46
  {"Cobblestone", CFrame.new(944, 46, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[460] t=1781714016.41
  {"Cobblestone", CFrame.new(944, 14, -676, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[461] t=1781714017.21
  {"Cobblestone", CFrame.new(944, 10, -680, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[462] t=1781714018.01
  {"Cobblestone", CFrame.new(944, 6, -684, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[463] t=1781714018.65
  {"Cobblestone", CFrame.new(944, 2, -688, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[464] t=1781714020.17
  {"Cobblestone", CFrame.new(944, 22, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[465] t=1781714022.72
  {"Cobblestone", CFrame.new(944, 26, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[466] t=1781714023.01
  {"Cobblestone", CFrame.new(944, 30, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[467] t=1781714028.05
  {"Cobblestone", CFrame.new(944, 34, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[468] t=1781714028.37
  {"Cobblestone", CFrame.new(944, 38, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[469] t=1781714028.64
  {"Cobblestone", CFrame.new(944, 42, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[470] t=1781714029.01
  {"Cobblestone", CFrame.new(944, 46, -672, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[471] t=1781714032.31
  {"Cobblestone", CFrame.new(944, 2, -704, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[472] t=1781714032.87
  {"Cobblestone", CFrame.new(944, 6, -708, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[473] t=1781714033.41
  {"Cobblestone", CFrame.new(944, 10, -712, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[474] t=1781714033.93
  {"Cobblestone", CFrame.new(944, 14, -716, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[475] t=1781714034.51
  {"Cobblestone", CFrame.new(944, 18, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[476] t=1781714037.56
  {"Cobblestone", CFrame.new(944, 22, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[477] t=1781714037.88
  {"Cobblestone", CFrame.new(944, 26, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[478] t=1781714038.08
  {"Cobblestone", CFrame.new(944, 30, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[479] t=1781714038.29
  {"Cobblestone", CFrame.new(944, 34, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[480] t=1781714038.52
  {"Cobblestone", CFrame.new(944, 38, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[481] t=1781714038.88
  {"Cobblestone", CFrame.new(944, 42, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[482] t=1781714039.23
  {"Cobblestone", CFrame.new(944, 46, -720, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[483] t=1781714045.20
  {"Cobblestone", CFrame.new(944, 2, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[484] t=1781714045.65
  {"Cobblestone", CFrame.new(944, 2, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[485] t=1781714047.13
  {"Cobblestone", CFrame.new(944, 6, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[486] t=1781714047.46
  {"Cobblestone", CFrame.new(944, 6, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[487] t=1781714047.97
  {"Cobblestone", CFrame.new(944, 2, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[488] t=1781714048.33
  {"Cobblestone", CFrame.new(944, 6, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[489] t=1781714048.83
  {"Cobblestone", CFrame.new(944, 10, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[490] t=1781714049.10
  {"Cobblestone", CFrame.new(944, 10, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[491] t=1781714049.37
  {"Cobblestone", CFrame.new(944, 10, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[492] t=1781714049.72
  {"Cobblestone", CFrame.new(944, 14, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[493] t=1781714050.03
  {"Cobblestone", CFrame.new(944, 14, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[494] t=1781714050.26
  {"Cobblestone", CFrame.new(944, 14, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[495] t=1781714050.72
  {"Cobblestone", CFrame.new(944, 18, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[496] t=1781714051.00
  {"Cobblestone", CFrame.new(944, 18, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[497] t=1781714051.36
  {"Cobblestone", CFrame.new(944, 18, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[498] t=1781714051.84
  {"Cobblestone", CFrame.new(944, 22, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[499] t=1781714052.16
  {"Cobblestone", CFrame.new(944, 22, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[500] t=1781714052.44
  {"Cobblestone", CFrame.new(944, 22, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[501] t=1781714052.91
  {"Cobblestone", CFrame.new(944, 26, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[502] t=1781714053.15
  {"Cobblestone", CFrame.new(944, 26, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[503] t=1781714053.42
  {"Cobblestone", CFrame.new(944, 26, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[504] t=1781714055.43
  {"Cobblestone", CFrame.new(944, 30, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[505] t=1781714056.01
  {"Cobblestone", CFrame.new(944, 30, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[506] t=1781714060.46
  {"Cobblestone", CFrame.new(944, 30, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[507] t=1781714060.73
  {"Cobblestone", CFrame.new(944, 34, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[508] t=1781714061.75
  {"Cobblestone", CFrame.new(944, 34, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[509] t=1781714062.00
  {"Cobblestone", CFrame.new(944, 34, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[510] t=1781714062.49
  {"Cobblestone", CFrame.new(944, 38, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[511] t=1781714062.88
  {"Cobblestone", CFrame.new(944, 38, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[512] t=1781714063.14
  {"Cobblestone", CFrame.new(944, 38, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[513] t=1781714063.55
  {"Cobblestone", CFrame.new(944, 42, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[514] t=1781714063.92
  {"Cobblestone", CFrame.new(944, 42, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[515] t=1781714064.20
  {"Cobblestone", CFrame.new(944, 42, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[516] t=1781714065.51
  {"Cobblestone", CFrame.new(944, 46, -652, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[517] t=1781714065.89
  {"Cobblestone", CFrame.new(944, 46, -660, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[518] t=1781714066.17
  {"Cobblestone", CFrame.new(944, 46, -656, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[519] t=1781714067.77
  {"Cobblestone", CFrame.new(944, 42, -648, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[520] t=1781714067.96
  {"Cobblestone", CFrame.new(944, 46, -648, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[521] t=1781714068.33
  {"Cobblestone", CFrame.new(944, 42, -644, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[522] t=1781714068.55
  {"Cobblestone", CFrame.new(944, 46, -644, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[523] t=1781714068.92
  {"Cobblestone", CFrame.new(944, 42, -640, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[524] t=1781714069.14
  {"Cobblestone", CFrame.new(944, 46, -640, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[525] t=1781714074.11
  {"Cobblestone", CFrame.new(944, 2, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[526] t=1781714074.38
  {"Cobblestone", CFrame.new(944, 2, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[527] t=1781714074.64
  {"Cobblestone", CFrame.new(944, 2, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[528] t=1781714075.36
  {"Cobblestone", CFrame.new(944, 6, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[529] t=1781714075.92
  {"Cobblestone", CFrame.new(944, 6, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[530] t=1781714082.44
  {"Cobblestone", CFrame.new(944, 6, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[531] t=1781714082.88
  {"Cobblestone", CFrame.new(944, 10, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[532] t=1781714083.23
  {"Cobblestone", CFrame.new(944, 10, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[533] t=1781714083.56
  {"Cobblestone", CFrame.new(944, 10, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[534] t=1781714083.96
  {"Cobblestone", CFrame.new(944, 14, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[535] t=1781714084.29
  {"Cobblestone", CFrame.new(944, 14, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[536] t=1781714084.54
  {"Cobblestone", CFrame.new(944, 14, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[537] t=1781714084.93
  {"Cobblestone", CFrame.new(944, 18, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[538] t=1781714085.33
  {"Cobblestone", CFrame.new(944, 18, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[539] t=1781714085.61
  {"Cobblestone", CFrame.new(944, 18, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[540] t=1781714086.01
  {"Cobblestone", CFrame.new(944, 22, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[541] t=1781714086.45
  {"Cobblestone", CFrame.new(944, 22, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[542] t=1781714086.70
  {"Cobblestone", CFrame.new(944, 22, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[543] t=1781714087.03
  {"Cobblestone", CFrame.new(944, 26, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[544] t=1781714087.48
  {"Cobblestone", CFrame.new(944, 26, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[545] t=1781714087.73
  {"Cobblestone", CFrame.new(944, 26, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[546] t=1781714088.02
  {"Cobblestone", CFrame.new(944, 30, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[547] t=1781714088.46
  {"Cobblestone", CFrame.new(944, 30, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[548] t=1781714088.70
  {"Cobblestone", CFrame.new(944, 30, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[549] t=1781714089.02
  {"Cobblestone", CFrame.new(944, 34, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[550] t=1781714089.41
  {"Cobblestone", CFrame.new(944, 34, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[551] t=1781714089.68
  {"Cobblestone", CFrame.new(944, 34, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[552] t=1781714090.02
  {"Cobblestone", CFrame.new(944, 38, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[553] t=1781714090.39
  {"Cobblestone", CFrame.new(944, 38, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[554] t=1781714090.68
  {"Cobblestone", CFrame.new(944, 38, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[555] t=1781714090.99
  {"Cobblestone", CFrame.new(944, 42, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[556] t=1781714091.37
  {"Cobblestone", CFrame.new(944, 42, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[557] t=1781714091.62
  {"Cobblestone", CFrame.new(944, 42, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[558] t=1781714091.93
  {"Cobblestone", CFrame.new(944, 46, -628, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[559] t=1781714092.30
  {"Cobblestone", CFrame.new(944, 46, -636, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[560] t=1781714092.58
  {"Cobblestone", CFrame.new(944, 46, -632, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[561] t=1781714096.03
  {"Cobblestone", CFrame.new(944, 26, -648, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[562] t=1781714096.60
  {"Cobblestone", CFrame.new(944, 30, -648, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[563] t=1781714097.32
  {"Cobblestone", CFrame.new(944, 26, -644, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[564] t=1781714097.56
  {"Cobblestone", CFrame.new(944, 30, -644, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[565] t=1781714098.23
  {"Cobblestone", CFrame.new(944, 26, -640, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[566] t=1781714098.45
  {"Cobblestone", CFrame.new(944, 30, -640, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[567] t=1781714101.93
  {"Cobblestone", CFrame.new(944, 2, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[568] t=1781714103.59
  {"Cobblestone", CFrame.new(944, 2, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[569] t=1781714103.94
  {"Cobblestone", CFrame.new(944, 2, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[570] t=1781714104.25
  {"Cobblestone", CFrame.new(944, 2, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[571] t=1781714104.52
  {"Cobblestone", CFrame.new(944, 2, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[572] t=1781714104.83
  {"Cobblestone", CFrame.new(944, 2, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[573] t=1781714105.16
  {"Cobblestone", CFrame.new(944, 2, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[574] t=1781714105.49
  {"Cobblestone", CFrame.new(944, 2, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[575] t=1781714106.16
  {"Cobblestone", CFrame.new(944, 6, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[576] t=1781714106.43
  {"Cobblestone", CFrame.new(944, 6, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[577] t=1781714106.71
  {"Cobblestone", CFrame.new(944, 6, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[578] t=1781714107.10
  {"Cobblestone", CFrame.new(944, 6, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[579] t=1781714107.36
  {"Cobblestone", CFrame.new(944, 6, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[580] t=1781714107.68
  {"Cobblestone", CFrame.new(944, 6, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[581] t=1781714108.06
  {"Cobblestone", CFrame.new(944, 6, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[582] t=1781714108.38
  {"Cobblestone", CFrame.new(944, 6, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[583] t=1781714108.85
  {"Cobblestone", CFrame.new(944, 10, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[584] t=1781714109.15
  {"Cobblestone", CFrame.new(944, 10, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[585] t=1781714109.52
  {"Cobblestone", CFrame.new(944, 10, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[586] t=1781714109.89
  {"Cobblestone", CFrame.new(944, 10, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[587] t=1781714110.83
  {"Cobblestone", CFrame.new(944, 14, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[588] t=1781714111.13
  {"Cobblestone", CFrame.new(944, 14, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[589] t=1781714111.42
  {"Cobblestone", CFrame.new(944, 14, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[590] t=1781714112.14
  {"Cobblestone", CFrame.new(944, 18, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[591] t=1781714112.37
  {"Cobblestone", CFrame.new(944, 18, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[592] t=1781714112.69
  {"Cobblestone", CFrame.new(944, 18, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[593] t=1781714113.98
  {"Cobblestone", CFrame.new(944, 22, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[594] t=1781714114.25
  {"Cobblestone", CFrame.new(944, 22, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[595] t=1781714114.54
  {"Cobblestone", CFrame.new(944, 22, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[596] t=1781714114.96
  {"Cobblestone", CFrame.new(944, 26, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[597] t=1781714115.21
  {"Cobblestone", CFrame.new(944, 26, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[598] t=1781714115.46
  {"Cobblestone", CFrame.new(944, 26, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[599] t=1781714115.88
  {"Cobblestone", CFrame.new(944, 30, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[600] t=1781714116.10
  {"Cobblestone", CFrame.new(944, 30, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[601] t=1781714116.42
  {"Cobblestone", CFrame.new(944, 30, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[602] t=1781714123.13
  {"Cobblestone", CFrame.new(944, 34, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[603] t=1781714123.44
  {"Cobblestone", CFrame.new(944, 34, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[604] t=1781714123.73
  {"Cobblestone", CFrame.new(944, 34, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[605] t=1781714129.62
  {"Cobblestone", CFrame.new(944, 38, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[606] t=1781714129.97
  {"Cobblestone", CFrame.new(944, 38, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[607] t=1781714130.26
  {"Cobblestone", CFrame.new(944, 38, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[608] t=1781714130.84
  {"Cobblestone", CFrame.new(944, 42, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[609] t=1781714131.22
  {"Cobblestone", CFrame.new(944, 42, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[610] t=1781714131.48
  {"Cobblestone", CFrame.new(944, 42, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[611] t=1781714131.89
  {"Cobblestone", CFrame.new(944, 46, -608, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[612] t=1781714132.28
  {"Cobblestone", CFrame.new(944, 46, -616, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[613] t=1781714132.51
  {"Cobblestone", CFrame.new(944, 46, -612, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[614] t=1781714134.19
  {"Cobblestone", CFrame.new(944, 42, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[615] t=1781714134.48
  {"Cobblestone", CFrame.new(944, 46, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[616] t=1781714134.90
  {"Cobblestone", CFrame.new(944, 42, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[617] t=1781714135.16
  {"Cobblestone", CFrame.new(944, 46, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[618] t=1781714135.56
  {"Cobblestone", CFrame.new(944, 42, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[619] t=1781714135.82
  {"Cobblestone", CFrame.new(944, 46, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[620] t=1781714139.24
  {"Cobblestone", CFrame.new(944, 42, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[621] t=1781714139.45
  {"Cobblestone", CFrame.new(944, 46, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[622] t=1781714140.14
  {"Cobblestone", CFrame.new(944, 42, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[623] t=1781714140.38
  {"Cobblestone", CFrame.new(944, 46, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[624] t=1781714143.55
  {"Cobblestone", CFrame.new(944, 22, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[625] t=1781714143.78
  {"Cobblestone", CFrame.new(944, 26, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[626] t=1781714145.37
  {"Cobblestone", CFrame.new(944, 22, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[627] t=1781714145.67
  {"Cobblestone", CFrame.new(944, 26, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[628] t=1781714146.22
  {"Cobblestone", CFrame.new(944, 22, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[629] t=1781714146.44
  {"Cobblestone", CFrame.new(944, 26, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[630] t=1781714148.83
  {"Cobblestone", CFrame.new(944, 10, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[631] t=1781714149.16
  {"Cobblestone", CFrame.new(944, 10, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[632] t=1781714149.45
  {"Cobblestone", CFrame.new(944, 10, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[633] t=1781714149.79
  {"Cobblestone", CFrame.new(944, 10, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[634] t=1781714155.14
  {"Cobblestone", CFrame.new(944, 38, -604, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[635] t=1781714155.54
  {"Cobblestone", CFrame.new(944, 38, -600, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[636] t=1781714155.90
  {"Cobblestone", CFrame.new(944, 38, -596, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[637] t=1781714156.29
  {"Cobblestone", CFrame.new(944, 38, -592, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[638] t=1781714156.74
  {"Cobblestone", CFrame.new(944, 38, -588, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[639] t=1781714161.86
  {"Cobblestone", CFrame.new(944, 2, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[640] t=1781714162.14
  {"Cobblestone", CFrame.new(944, 2, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[641] t=1781714162.95
  {"Cobblestone", CFrame.new(944, 2, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[642] t=1781714174.12
  {"Cobblestone", CFrame.new(944, 6, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[643] t=1781714174.45
  {"Cobblestone", CFrame.new(944, 6, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[644] t=1781714174.67
  {"Cobblestone", CFrame.new(944, 6, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[645] t=1781714175.10
  {"Cobblestone", CFrame.new(944, 10, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[646] t=1781714175.43
  {"Cobblestone", CFrame.new(944, 10, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[647] t=1781714175.65
  {"Cobblestone", CFrame.new(944, 10, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[648] t=1781714175.95
  {"Cobblestone", CFrame.new(944, 14, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[649] t=1781714176.29
  {"Cobblestone", CFrame.new(944, 14, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[650] t=1781714176.52
  {"Cobblestone", CFrame.new(944, 14, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[651] t=1781714176.84
  {"Cobblestone", CFrame.new(944, 18, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[652] t=1781714177.22
  {"Cobblestone", CFrame.new(944, 18, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[653] t=1781714177.44
  {"Cobblestone", CFrame.new(944, 18, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[654] t=1781714177.81
  {"Cobblestone", CFrame.new(944, 22, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[655] t=1781714178.14
  {"Cobblestone", CFrame.new(944, 22, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[656] t=1781714178.37
  {"Cobblestone", CFrame.new(944, 22, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[657] t=1781714178.71
  {"Cobblestone", CFrame.new(944, 26, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[658] t=1781714179.06
  {"Cobblestone", CFrame.new(944, 26, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[659] t=1781714179.29
  {"Cobblestone", CFrame.new(944, 26, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[660] t=1781714179.55
  {"Cobblestone", CFrame.new(944, 30, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[661] t=1781714180.02
  {"Cobblestone", CFrame.new(944, 30, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[662] t=1781714180.28
  {"Cobblestone", CFrame.new(944, 30, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[663] t=1781714180.60
  {"Cobblestone", CFrame.new(944, 34, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[664] t=1781714181.02
  {"Cobblestone", CFrame.new(944, 34, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[665] t=1781714181.26
  {"Cobblestone", CFrame.new(944, 34, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[666] t=1781714181.56
  {"Cobblestone", CFrame.new(944, 38, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[667] t=1781714182.05
  {"Cobblestone", CFrame.new(944, 38, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[668] t=1781714182.28
  {"Cobblestone", CFrame.new(944, 38, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[669] t=1781714182.66
  {"Cobblestone", CFrame.new(944, 42, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[670] t=1781714183.07
  {"Cobblestone", CFrame.new(944, 42, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[671] t=1781714183.34
  {"Cobblestone", CFrame.new(944, 42, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[672] t=1781714184.99
  {"Cobblestone", CFrame.new(944, 46, -568, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[673] t=1781714185.34
  {"Cobblestone", CFrame.new(944, 46, -576, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[674] t=1781714185.66
  {"Cobblestone", CFrame.new(944, 46, -572, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[675] t=1781714188.55
  {"Cobblestone", CFrame.new(944, 26, -564, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[676] t=1781714188.88
  {"Cobblestone", CFrame.new(944, 30, -564, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[677] t=1781714190.12
  {"Cobblestone", CFrame.new(944, 26, -560, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[678] t=1781714190.37
  {"Cobblestone", CFrame.new(944, 30, -560, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[679] t=1781714190.94
  {"Cobblestone", CFrame.new(944, 26, -556, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[680] t=1781714191.19
  {"Cobblestone", CFrame.new(944, 30, -556, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[681] t=1781714194.22
  {"Cobblestone", CFrame.new(944, 2, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[682] t=1781714194.70
  {"Cobblestone", CFrame.new(944, 2, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[683] t=1781714195.13
  {"Cobblestone", CFrame.new(944, 2, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[684] t=1781714196.72
  {"Cobblestone", CFrame.new(944, 6, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[685] t=1781714197.08
  {"Cobblestone", CFrame.new(944, 6, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[686] t=1781714197.36
  {"Cobblestone", CFrame.new(944, 6, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[687] t=1781714197.82
  {"Cobblestone", CFrame.new(944, 10, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[688] t=1781714198.26
  {"Cobblestone", CFrame.new(944, 10, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[689] t=1781714198.61
  {"Cobblestone", CFrame.new(944, 10, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[690] t=1781714200.03
  {"Cobblestone", CFrame.new(944, 14, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[691] t=1781714200.50
  {"Cobblestone", CFrame.new(944, 14, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[692] t=1781714200.98
  {"Cobblestone", CFrame.new(944, 14, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[693] t=1781714204.80
  {"Cobblestone", CFrame.new(944, 18, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[694] t=1781714205.05
  {"Cobblestone", CFrame.new(944, 18, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[695] t=1781714205.51
  {"Cobblestone", CFrame.new(944, 18, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[696] t=1781714205.83
  {"Cobblestone", CFrame.new(944, 22, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[697] t=1781714206.07
  {"Cobblestone", CFrame.new(944, 22, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[698] t=1781714206.37
  {"Cobblestone", CFrame.new(944, 22, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[699] t=1781714206.77
  {"Cobblestone", CFrame.new(944, 26, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[700] t=1781714207.02
  {"Cobblestone", CFrame.new(944, 26, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[701] t=1781714207.33
  {"Cobblestone", CFrame.new(944, 26, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[702] t=1781714207.74
  {"Cobblestone", CFrame.new(944, 30, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[703] t=1781714207.97
  {"Cobblestone", CFrame.new(944, 30, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[704] t=1781714208.32
  {"Cobblestone", CFrame.new(944, 30, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[705] t=1781714208.67
  {"Cobblestone", CFrame.new(944, 34, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[706] t=1781714208.95
  {"Cobblestone", CFrame.new(944, 34, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[707] t=1781714209.26
  {"Cobblestone", CFrame.new(944, 34, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[708] t=1781714209.67
  {"Cobblestone", CFrame.new(944, 38, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[709] t=1781714209.91
  {"Cobblestone", CFrame.new(944, 38, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[710] t=1781714210.16
  {"Cobblestone", CFrame.new(944, 38, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[711] t=1781714210.57
  {"Cobblestone", CFrame.new(944, 42, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[712] t=1781714210.80
  {"Cobblestone", CFrame.new(944, 42, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[713] t=1781714211.09
  {"Cobblestone", CFrame.new(944, 42, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[714] t=1781714214.83
  {"Cobblestone", CFrame.new(944, 46, -544, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[715] t=1781714215.06
  {"Cobblestone", CFrame.new(944, 46, -548, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[716] t=1781714215.32
  {"Cobblestone", CFrame.new(944, 46, -552, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[717] t=1781714218.00
  {"Cobblestone", CFrame.new(944, 2, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[718] t=1781714218.64
  {"Cobblestone", CFrame.new(944, 6, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[719] t=1781714219.97
  {"Cobblestone", CFrame.new(944, 2, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[720] t=1781714220.20
  {"Cobblestone", CFrame.new(944, 6, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[721] t=1781714220.55
  {"Cobblestone", CFrame.new(944, 2, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[722] t=1781714220.77
  {"Cobblestone", CFrame.new(944, 6, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[723] t=1781714221.11
  {"Cobblestone", CFrame.new(944, 2, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[724] t=1781714221.37
  {"Cobblestone", CFrame.new(944, 6, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[725] t=1781714221.81
  {"Cobblestone", CFrame.new(944, 2, -516, 1, 0, 0, 0), workspace.Baseplate},
  --[726] t=1781714222.02
  {"Cobblestone", CFrame.new(944, 6, -516, 1, 0, 0, 0), workspace.Baseplate},
  --[727] t=1781714222.40
  {"Cobblestone", CFrame.new(944, 2, -512, 1, 0, 0, 0), workspace.Baseplate},
  --[728] t=1781714222.63
  {"Cobblestone", CFrame.new(944, 6, -512, 1, 0, 0, 0), workspace.Baseplate},
  --[729] t=1781714223.12
  {"Cobblestone", CFrame.new(944, 2, -508, 1, 0, 0, 0), workspace.Baseplate},
  --[730] t=1781714223.32
  {"Cobblestone", CFrame.new(944, 6, -508, 1, 0, 0, 0), workspace.Baseplate},
  --[731] t=1781714224.00
  {"Cobblestone", CFrame.new(944, 10, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[732] t=1781714224.24
  {"Cobblestone", CFrame.new(944, 10, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[733] t=1781714224.52
  {"Cobblestone", CFrame.new(944, 10, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[734] t=1781714224.79
  {"Cobblestone", CFrame.new(944, 10, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[735] t=1781714225.15
  {"Cobblestone", CFrame.new(944, 10, -516, 1, 0, 0, 0), workspace.Baseplate},
  --[736] t=1781714225.50
  {"Cobblestone", CFrame.new(944, 10, -512, 1, 0, 0, 0), workspace.Baseplate},
  --[737] t=1781714225.79
  {"Cobblestone", CFrame.new(944, 10, -508, 1, 0, 0, 0), workspace.Baseplate},
  --[738] t=1781714227.57
  {"Cobblestone", CFrame.new(944, 2, -504, 1, 0, 0, 0), workspace.Baseplate},
  --[739] t=1781714227.83
  {"Cobblestone", CFrame.new(944, 6, -504, 1, 0, 0, 0), workspace.Baseplate},
  --[740] t=1781714228.19
  {"Cobblestone", CFrame.new(944, 10, -504, 1, 0, 0, 0), workspace.Baseplate},
  --[741] t=1781714229.88
  {"Cobblestone", CFrame.new(944, 14, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[742] t=1781714230.15
  {"Cobblestone", CFrame.new(944, 14, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[743] t=1781714233.48
  {"Cobblestone", CFrame.new(944, 14, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[744] t=1781714234.84
  {"Cobblestone", CFrame.new(944, 2, -500, 1, 0, 0, 0), workspace.Baseplate},
  --[745] t=1781714235.05
  {"Cobblestone", CFrame.new(944, 6, -500, 1, 0, 0, 0), workspace.Baseplate},
  --[746] t=1781714235.35
  {"Cobblestone", CFrame.new(944, 10, -500, 1, 0, 0, 0), workspace.Baseplate},
  --[747] t=1781714236.04
  {"Cobblestone", CFrame.new(944, 2, -496, 1, 0, 0, 0), workspace.Baseplate},
  --[748] t=1781714236.27
  {"Cobblestone", CFrame.new(944, 6, -496, 1, 0, 0, 0), workspace.Baseplate},
  --[749] t=1781714236.55
  {"Cobblestone", CFrame.new(944, 10, -496, 1, 0, 0, 0), workspace.Baseplate},
  --[750] t=1781714237.86
  {"Cobblestone", CFrame.new(944, 18, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[751] t=1781714238.13
  {"Cobblestone", CFrame.new(944, 18, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[752] t=1781714238.42
  {"Cobblestone", CFrame.new(944, 18, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[753] t=1781714238.96
  {"Cobblestone", CFrame.new(944, 22, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[754] t=1781714239.20
  {"Cobblestone", CFrame.new(944, 22, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[755] t=1781714239.49
  {"Cobblestone", CFrame.new(944, 22, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[756] t=1781714240.55
  {"Cobblestone", CFrame.new(944, 22, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[757] t=1781714241.02
  {"Cobblestone", CFrame.new(944, 22, -516, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[758] t=1781714241.32
  {"Cobblestone", CFrame.new(944, 22, -512, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[759] t=1781714241.65
  {"Cobblestone", CFrame.new(944, 22, -508, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[760] t=1781714241.96
  {"Cobblestone", CFrame.new(944, 22, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[761] t=1781714242.31
  {"Cobblestone", CFrame.new(944, 22, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[762] t=1781714242.75
  {"Cobblestone", CFrame.new(944, 22, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[763] t=1781714244.55
  {"Cobblestone", CFrame.new(944, 26, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[764] t=1781714244.80
  {"Cobblestone", CFrame.new(944, 26, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[765] t=1781714245.03
  {"Cobblestone", CFrame.new(944, 26, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[766] t=1781714245.27
  {"Cobblestone", CFrame.new(944, 26, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[767] t=1781714245.55
  {"Cobblestone", CFrame.new(944, 26, -516, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[768] t=1781714245.93
  {"Cobblestone", CFrame.new(944, 26, -512, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[769] t=1781714246.21
  {"Cobblestone", CFrame.new(944, 26, -508, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[770] t=1781714246.54
  {"Cobblestone", CFrame.new(944, 26, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[771] t=1781714249.10
  {"Cobblestone", CFrame.new(944, 26, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[772] t=1781714249.50
  {"Cobblestone", CFrame.new(944, 26, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[773] t=1781714253.37
  {"Cobblestone", CFrame.new(944, 30, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[774] t=1781714253.62
  {"Cobblestone", CFrame.new(944, 30, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[775] t=1781714253.86
  {"Cobblestone", CFrame.new(944, 30, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[776] t=1781714254.42
  {"Cobblestone", CFrame.new(944, 34, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[777] t=1781714254.65
  {"Cobblestone", CFrame.new(944, 34, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[778] t=1781714254.94
  {"Cobblestone", CFrame.new(944, 34, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[779] t=1781714255.52
  {"Cobblestone", CFrame.new(944, 38, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[780] t=1781714255.80
  {"Cobblestone", CFrame.new(944, 38, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[781] t=1781714256.12
  {"Cobblestone", CFrame.new(944, 38, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[782] t=1781714256.72
  {"Cobblestone", CFrame.new(944, 42, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[783] t=1781714257.01
  {"Cobblestone", CFrame.new(944, 42, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[784] t=1781714257.28
  {"Cobblestone", CFrame.new(944, 42, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[785] t=1781714257.80
  {"Cobblestone", CFrame.new(944, 46, -496, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[786] t=1781714258.11
  {"Cobblestone", CFrame.new(944, 46, -504, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[787] t=1781714258.82
  {"Cobblestone", CFrame.new(944, 46, -500, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[788] t=1781714261.10
  {"Cobblestone", CFrame.new(944, 38, -508, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[789] t=1781714261.37
  {"Cobblestone", CFrame.new(944, 42, -508, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[790] t=1781714261.70
  {"Cobblestone", CFrame.new(944, 46, -508, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[791] t=1781714262.28
  {"Cobblestone", CFrame.new(944, 38, -512, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[792] t=1781714262.53
  {"Cobblestone", CFrame.new(944, 42, -512, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[793] t=1781714262.82
  {"Cobblestone", CFrame.new(944, 46, -512, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[794] t=1781714263.37
  {"Cobblestone", CFrame.new(944, 38, -516, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[795] t=1781714263.60
  {"Cobblestone", CFrame.new(944, 42, -516, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[796] t=1781714263.85
  {"Cobblestone", CFrame.new(944, 46, -516, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[797] t=1781714264.42
  {"Cobblestone", CFrame.new(944, 38, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[798] t=1781714264.68
  {"Cobblestone", CFrame.new(944, 42, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[799] t=1781714265.01
  {"Cobblestone", CFrame.new(944, 46, -520, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[800] t=1781714265.52
  {"Cobblestone", CFrame.new(944, 38, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[801] t=1781714265.76
  {"Cobblestone", CFrame.new(944, 42, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[802] t=1781714266.06
  {"Cobblestone", CFrame.new(944, 46, -524, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[803] t=1781714266.66
  {"Cobblestone", CFrame.new(944, 38, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[804] t=1781714266.90
  {"Cobblestone", CFrame.new(944, 42, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[805] t=1781714267.19
  {"Cobblestone", CFrame.new(944, 46, -528, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[806] t=1781714267.70
  {"Cobblestone", CFrame.new(944, 38, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[807] t=1781714267.95
  {"Cobblestone", CFrame.new(944, 42, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[808] t=1781714268.34
  {"Cobblestone", CFrame.new(944, 46, -532, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
}

local castle = {
  --[1] t=1781715956.50
  {"Mossy Stone Blocks", CFrame.new(212, 2, -60, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[2] t=1781715957.27
  {"Mossy Stone Blocks", CFrame.new(212, 2, -64, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[3] t=1781715957.62
  {"Mossy Stone Blocks", CFrame.new(212, 2, -68, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[4] t=1781715957.96
  {"Mossy Stone Blocks", CFrame.new(212, 2, -72, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[5] t=1781715958.29
  {"Mossy Stone Blocks", CFrame.new(212, 2, -76, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[6] t=1781715958.65
  {"Mossy Stone Blocks", CFrame.new(212, 2, -80, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[7] t=1781715959.85
  {"Mossy Stone Blocks", CFrame.new(212, 2, -84, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[8] t=1781715960.20
  {"Mossy Stone Blocks", CFrame.new(212, 2, -88, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[9] t=1781715960.57
  {"Mossy Stone Blocks", CFrame.new(212, 2, -92, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[10] t=1781715960.92
  {"Mossy Stone Blocks", CFrame.new(212, 2, -96, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[11] t=1781715961.27
  {"Mossy Stone Blocks", CFrame.new(212, 2, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[12] t=1781715961.65
  {"Mossy Stone Blocks", CFrame.new(212, 2, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[13] t=1781715966.02
  {"Mossy Stone Blocks", CFrame.new(212, 2, -116, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[14] t=1781715966.99
  {"Mossy Stone Blocks", CFrame.new(212, 2, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[15] t=1781715967.32
  {"Mossy Stone Blocks", CFrame.new(212, 2, -124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[16] t=1781715967.62
  {"Mossy Stone Blocks", CFrame.new(212, 2, -128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[17] t=1781715967.97
  {"Mossy Stone Blocks", CFrame.new(212, 2, -132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[18] t=1781715977.86
  {"Mossy Stone Blocks", CFrame.new(212, 2, -136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[19] t=1781715978.57
  {"Mossy Stone Blocks", CFrame.new(212, 2, -140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[20] t=1781715979.19
  {"Mossy Stone Blocks", CFrame.new(212, 2, -144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[21] t=1781715979.55
  {"Mossy Stone Blocks", CFrame.new(212, 2, -148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[22] t=1781715979.89
  {"Mossy Stone Blocks", CFrame.new(212, 2, -152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[23] t=1781715980.27
  {"Mossy Stone Blocks", CFrame.new(212, 2, -156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[24] t=1781715980.61
  {"Mossy Stone Blocks", CFrame.new(212, 2, -160, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[25] t=1781715985.46
  {"Mossy Stone Blocks", CFrame.new(212, 6, -116, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[26] t=1781715985.88
  {"Mossy Stone Blocks", CFrame.new(212, 10, -116, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[27] t=1781715986.63
  {"Mossy Stone Blocks", CFrame.new(212, 10, -112, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[28] t=1781715986.94
  {"Mossy Stone Blocks", CFrame.new(212, 10, -108, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[29] t=1781715987.32
  {"Mossy Stone Blocks", CFrame.new(212, 10, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[30] t=1781715987.84
  {"Mossy Stone Blocks", CFrame.new(212, 6, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[31] t=1781715993.74
  {"Mossy Stone Blocks", CFrame.new(208, 2, -160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[32] t=1781715994.05
  {"Mossy Stone Blocks", CFrame.new(204, 2, -160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[33] t=1781715995.22
  {"Mossy Stone Blocks", CFrame.new(200, 2, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[34] t=1781715996.01
  {"Mossy Stone Blocks", CFrame.new(200, 2, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[35] t=1781715996.42
  {"Mossy Stone Blocks", CFrame.new(200, 2, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[36] t=1781715997.39
  {"Mossy Stone Blocks", CFrame.new(200, 2, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[37] t=1781715997.70
  {"Mossy Stone Blocks", CFrame.new(200, 2, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[38] t=1781715998.44
  {"Mossy Stone Blocks", CFrame.new(204, 2, -184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[39] t=1781716000.35
  {"Mossy Stone Blocks", CFrame.new(208, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[40] t=1781716000.89
  {"Mossy Stone Blocks", CFrame.new(212, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[41] t=1781716002.08
  {"Mossy Stone Blocks", CFrame.new(216, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[42] t=1781716002.76
  {"Mossy Stone Blocks", CFrame.new(220, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[43] t=1781716003.38
  {"Mossy Stone Blocks", CFrame.new(224, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[44] t=1781716004.96
  {"Mossy Stone Blocks", CFrame.new(228, 2, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[45] t=1781716006.59
  {"Mossy Stone Blocks", CFrame.new(228, 2, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[46] t=1781716006.95
  {"Mossy Stone Blocks", CFrame.new(228, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[47] t=1781716007.34
  {"Mossy Stone Blocks", CFrame.new(228, 2, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[48] t=1781716007.78
  {"Mossy Stone Blocks", CFrame.new(228, 2, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[49] t=1781716008.58
  {"Mossy Stone Blocks", CFrame.new(216, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[50] t=1781716008.86
  {"Mossy Stone Blocks", CFrame.new(220, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[51] t=1781716009.38
  {"Mossy Stone Blocks", CFrame.new(224, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[52] t=1781716014.91
  {"Mossy Stone Blocks", CFrame.new(208, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[53] t=1781716016.42
  {"Mossy Stone Blocks", CFrame.new(204, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[54] t=1781716016.82
  {"Mossy Stone Blocks", CFrame.new(200, 2, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[55] t=1781716020.87
  {"Mossy Stone Blocks", CFrame.new(200, 2, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[56] t=1781716021.24
  {"Mossy Stone Blocks", CFrame.new(200, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[57] t=1781716021.59
  {"Mossy Stone Blocks", CFrame.new(200, 2, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[58] t=1781716021.97
  {"Mossy Stone Blocks", CFrame.new(200, 2, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[59] t=1781716023.19
  {"Mossy Stone Blocks", CFrame.new(204, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[60] t=1781716023.58
  {"Mossy Stone Blocks", CFrame.new(208, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[61] t=1781716023.95
  {"Mossy Stone Blocks", CFrame.new(212, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[62] t=1781716024.32
  {"Mossy Stone Blocks", CFrame.new(216, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[63] t=1781716028.31
  {"Mossy Stone Blocks", CFrame.new(216, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[64] t=1781716028.70
  {"Mossy Stone Blocks", CFrame.new(220, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[65] t=1781716029.06
  {"Mossy Stone Blocks", CFrame.new(224, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[66] t=1781716029.52
  {"Mossy Stone Blocks", CFrame.new(228, 2, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[67] t=1781716029.84
  {"Mossy Stone Blocks", CFrame.new(228, 2, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[68] t=1781716030.17
  {"Mossy Stone Blocks", CFrame.new(228, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[69] t=1781716030.54
  {"Mossy Stone Blocks", CFrame.new(228, 2, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[70] t=1781716030.94
  {"Mossy Stone Blocks", CFrame.new(228, 2, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[71] t=1781716031.34
  {"Mossy Stone Blocks", CFrame.new(224, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[72] t=1781716031.66
  {"Mossy Stone Blocks", CFrame.new(220, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[73] t=1781716036.56
  {"Mossy Stone Blocks", CFrame.new(212, 6, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[74] t=1781716036.85
  {"Mossy Stone Blocks", CFrame.new(212, 6, -96, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[75] t=1781716037.17
  {"Mossy Stone Blocks", CFrame.new(212, 6, -92, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[76] t=1781716037.50
  {"Mossy Stone Blocks", CFrame.new(212, 6, -88, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[77] t=1781716037.78
  {"Mossy Stone Blocks", CFrame.new(212, 6, -84, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[78] t=1781716038.15
  {"Mossy Stone Blocks", CFrame.new(212, 6, -80, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[79] t=1781716038.48
  {"Mossy Stone Blocks", CFrame.new(212, 6, -76, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[80] t=1781716038.82
  {"Mossy Stone Blocks", CFrame.new(212, 6, -72, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[81] t=1781716039.81
  {"Mossy Stone Blocks", CFrame.new(212, 6, -68, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[82] t=1781716040.05
  {"Mossy Stone Blocks", CFrame.new(212, 6, -64, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[83] t=1781716041.02
  {"Mossy Stone Blocks", CFrame.new(212, 10, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[84] t=1781716041.26
  {"Mossy Stone Blocks", CFrame.new(212, 10, -96, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[85] t=1781716041.54
  {"Mossy Stone Blocks", CFrame.new(212, 10, -92, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[86] t=1781716041.83
  {"Mossy Stone Blocks", CFrame.new(212, 10, -88, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[87] t=1781716042.92
  {"Mossy Stone Blocks", CFrame.new(212, 10, -84, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[88] t=1781716043.20
  {"Mossy Stone Blocks", CFrame.new(212, 10, -80, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[89] t=1781716043.47
  {"Mossy Stone Blocks", CFrame.new(212, 10, -76, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[90] t=1781716043.83
  {"Mossy Stone Blocks", CFrame.new(212, 10, -72, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[91] t=1781716044.14
  {"Mossy Stone Blocks", CFrame.new(212, 10, -68, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[92] t=1781716044.63
  {"Mossy Stone Blocks", CFrame.new(212, 10, -64, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[93] t=1781716046.77
  {"Mossy Stone Blocks", CFrame.new(224, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[94] t=1781716047.01
  {"Mossy Stone Blocks", CFrame.new(220, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[95] t=1781716047.33
  {"Mossy Stone Blocks", CFrame.new(216, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[96] t=1781716047.65
  {"Mossy Stone Blocks", CFrame.new(212, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[97] t=1781716047.97
  {"Mossy Stone Blocks", CFrame.new(208, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[98] t=1781716048.36
  {"Mossy Stone Blocks", CFrame.new(204, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[99] t=1781716048.97
  {"Mossy Stone Blocks", CFrame.new(224, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[100] t=1781716049.22
  {"Mossy Stone Blocks", CFrame.new(220, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[101] t=1781716049.55
  {"Mossy Stone Blocks", CFrame.new(216, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[102] t=1781716049.97
  {"Mossy Stone Blocks", CFrame.new(212, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[103] t=1781716050.30
  {"Mossy Stone Blocks", CFrame.new(208, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[104] t=1781716050.67
  {"Mossy Stone Blocks", CFrame.new(204, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[105] t=1781716051.20
  {"Mossy Stone Blocks", CFrame.new(200, 6, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[106] t=1781716051.45
  {"Mossy Stone Blocks", CFrame.new(200, 6, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[107] t=1781716052.50
  {"Mossy Stone Blocks", CFrame.new(200, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[108] t=1781716052.72
  {"Mossy Stone Blocks", CFrame.new(200, 6, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[109] t=1781716053.00
  {"Mossy Stone Blocks", CFrame.new(200, 6, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[110] t=1781716053.46
  {"Mossy Stone Blocks", CFrame.new(200, 10, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[111] t=1781716053.69
  {"Mossy Stone Blocks", CFrame.new(200, 10, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[112] t=1781716053.96
  {"Mossy Stone Blocks", CFrame.new(200, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[113] t=1781716054.36
  {"Mossy Stone Blocks", CFrame.new(200, 10, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[114] t=1781716054.72
  {"Mossy Stone Blocks", CFrame.new(200, 10, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[115] t=1781716055.69
  {"Mossy Stone Blocks", CFrame.new(224, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[116] t=1781716055.96
  {"Mossy Stone Blocks", CFrame.new(220, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[117] t=1781716056.26
  {"Mossy Stone Blocks", CFrame.new(216, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[118] t=1781716056.64
  {"Mossy Stone Blocks", CFrame.new(212, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[119] t=1781716056.96
  {"Mossy Stone Blocks", CFrame.new(208, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[120] t=1781716057.34
  {"Mossy Stone Blocks", CFrame.new(204, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[121] t=1781716062.75
  {"Mossy Stone Blocks", CFrame.new(224, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[122] t=1781716063.09
  {"Mossy Stone Blocks", CFrame.new(220, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[123] t=1781716063.34
  {"Mossy Stone Blocks", CFrame.new(216, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[124] t=1781716063.63
  {"Mossy Stone Blocks", CFrame.new(212, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[125] t=1781716063.94
  {"Mossy Stone Blocks", CFrame.new(208, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[126] t=1781716064.26
  {"Mossy Stone Blocks", CFrame.new(204, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[127] t=1781716065.33
  {"Mossy Stone Blocks", CFrame.new(228, 6, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[128] t=1781716065.58
  {"Mossy Stone Blocks", CFrame.new(228, 6, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[129] t=1781716065.85
  {"Mossy Stone Blocks", CFrame.new(228, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[130] t=1781716066.17
  {"Mossy Stone Blocks", CFrame.new(228, 6, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[131] t=1781716066.50
  {"Mossy Stone Blocks", CFrame.new(228, 6, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[132] t=1781716067.00
  {"Mossy Stone Blocks", CFrame.new(228, 10, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[133] t=1781716067.27
  {"Mossy Stone Blocks", CFrame.new(228, 10, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[134] t=1781716067.54
  {"Mossy Stone Blocks", CFrame.new(228, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[135] t=1781716068.01
  {"Mossy Stone Blocks", CFrame.new(228, 10, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[136] t=1781716068.34
  {"Mossy Stone Blocks", CFrame.new(228, 10, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[137] t=1781716072.02
  {"Mossy Stone Blocks", CFrame.new(212, 6, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[138] t=1781716072.43
  {"Mossy Stone Blocks", CFrame.new(212, 10, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[139] t=1781716073.33
  {"Mossy Stone Blocks", CFrame.new(212, 6, -124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[140] t=1781716073.59
  {"Mossy Stone Blocks", CFrame.new(212, 6, -128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[141] t=1781716073.87
  {"Mossy Stone Blocks", CFrame.new(212, 6, -132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[142] t=1781716074.21
  {"Mossy Stone Blocks", CFrame.new(212, 6, -136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[143] t=1781716074.50
  {"Mossy Stone Blocks", CFrame.new(212, 6, -140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[144] t=1781716074.83
  {"Mossy Stone Blocks", CFrame.new(212, 6, -144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[145] t=1781716075.21
  {"Mossy Stone Blocks", CFrame.new(212, 6, -148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[146] t=1781716075.55
  {"Mossy Stone Blocks", CFrame.new(212, 6, -152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[147] t=1781716076.06
  {"Mossy Stone Blocks", CFrame.new(212, 6, -156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[148] t=1781716076.81
  {"Mossy Stone Blocks", CFrame.new(212, 10, -124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[149] t=1781716077.18
  {"Mossy Stone Blocks", CFrame.new(212, 10, -128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[150] t=1781716077.50
  {"Mossy Stone Blocks", CFrame.new(212, 10, -132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[151] t=1781716077.83
  {"Mossy Stone Blocks", CFrame.new(212, 10, -136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[152] t=1781716078.17
  {"Mossy Stone Blocks", CFrame.new(212, 10, -140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[153] t=1781716078.54
  {"Mossy Stone Blocks", CFrame.new(212, 10, -148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[154] t=1781716079.38
  {"Mossy Stone Blocks", CFrame.new(212, 10, -144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[155] t=1781716079.80
  {"Mossy Stone Blocks", CFrame.new(212, 10, -152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[156] t=1781716080.18
  {"Mossy Stone Blocks", CFrame.new(212, 10, -156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[157] t=1781716081.86
  {"Mossy Stone Blocks", CFrame.new(224, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[158] t=1781716082.10
  {"Mossy Stone Blocks", CFrame.new(220, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[159] t=1781716082.33
  {"Mossy Stone Blocks", CFrame.new(216, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[160] t=1781716082.55
  {"Mossy Stone Blocks", CFrame.new(212, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[161] t=1781716082.76
  {"Mossy Stone Blocks", CFrame.new(208, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[162] t=1781716082.99
  {"Mossy Stone Blocks", CFrame.new(204, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[163] t=1781716084.01
  {"Mossy Stone Blocks", CFrame.new(224, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[164] t=1781716084.23
  {"Mossy Stone Blocks", CFrame.new(220, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[165] t=1781716084.40
  {"Mossy Stone Blocks", CFrame.new(216, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[166] t=1781716084.59
  {"Mossy Stone Blocks", CFrame.new(212, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[167] t=1781716084.79
  {"Mossy Stone Blocks", CFrame.new(208, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[168] t=1781716085.36
  {"Mossy Stone Blocks", CFrame.new(204, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[169] t=1781716085.91
  {"Mossy Stone Blocks", CFrame.new(224, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[170] t=1781716086.12
  {"Mossy Stone Blocks", CFrame.new(220, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[171] t=1781716086.30
  {"Mossy Stone Blocks", CFrame.new(216, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[172] t=1781716086.49
  {"Mossy Stone Blocks", CFrame.new(212, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[173] t=1781716086.68
  {"Mossy Stone Blocks", CFrame.new(208, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[174] t=1781716087.08
  {"Mossy Stone Blocks", CFrame.new(204, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[175] t=1781716088.01
  {"Mossy Stone Blocks", CFrame.new(224, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[176] t=1781716088.21
  {"Mossy Stone Blocks", CFrame.new(220, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[177] t=1781716088.40
  {"Mossy Stone Blocks", CFrame.new(216, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[178] t=1781716088.58
  {"Mossy Stone Blocks", CFrame.new(212, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[179] t=1781716088.78
  {"Mossy Stone Blocks", CFrame.new(208, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[180] t=1781716088.98
  {"Mossy Stone Blocks", CFrame.new(204, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[181] t=1781716089.90
  {"Mossy Stone Blocks", CFrame.new(200, 6, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[182] t=1781716090.11
  {"Mossy Stone Blocks", CFrame.new(200, 6, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[183] t=1781716090.33
  {"Mossy Stone Blocks", CFrame.new(200, 6, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[184] t=1781716090.62
  {"Mossy Stone Blocks", CFrame.new(200, 6, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[185] t=1781716090.87
  {"Mossy Stone Blocks", CFrame.new(200, 6, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[186] t=1781716091.39
  {"Mossy Stone Blocks", CFrame.new(200, 10, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[187] t=1781716091.62
  {"Mossy Stone Blocks", CFrame.new(200, 10, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[188] t=1781716091.88
  {"Mossy Stone Blocks", CFrame.new(200, 10, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[189] t=1781716092.18
  {"Mossy Stone Blocks", CFrame.new(200, 10, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[190] t=1781716092.46
  {"Mossy Stone Blocks", CFrame.new(200, 10, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[191] t=1781716095.40
  {"Mossy Stone Blocks", CFrame.new(228, 6, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[192] t=1781716095.62
  {"Mossy Stone Blocks", CFrame.new(228, 6, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[193] t=1781716095.84
  {"Mossy Stone Blocks", CFrame.new(228, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[194] t=1781716096.05
  {"Mossy Stone Blocks", CFrame.new(228, 6, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[195] t=1781716096.35
  {"Mossy Stone Blocks", CFrame.new(228, 6, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[196] t=1781716096.89
  {"Mossy Stone Blocks", CFrame.new(228, 10, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[197] t=1781716097.07
  {"Mossy Stone Blocks", CFrame.new(228, 10, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[198] t=1781716097.28
  {"Mossy Stone Blocks", CFrame.new(228, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[199] t=1781716097.47
  {"Mossy Stone Blocks", CFrame.new(228, 10, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[200] t=1781716097.87
  {"Mossy Stone Blocks", CFrame.new(228, 10, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[201] t=1781716104.80
  {"Mossy Stone Blocks", CFrame.new(212, 14, -156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[202] t=1781716105.03
  {"Mossy Stone Blocks", CFrame.new(212, 14, -152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[203] t=1781716105.31
  {"Mossy Stone Blocks", CFrame.new(212, 14, -148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[204] t=1781716105.57
  {"Mossy Stone Blocks", CFrame.new(212, 14, -144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[205] t=1781716106.21
  {"Mossy Stone Blocks", CFrame.new(212, 14, -140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[206] t=1781716106.51
  {"Mossy Stone Blocks", CFrame.new(212, 14, -136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[207] t=1781716106.77
  {"Mossy Stone Blocks", CFrame.new(212, 14, -132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[208] t=1781716107.57
  {"Mossy Stone Blocks", CFrame.new(212, 14, -128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[209] t=1781716107.81
  {"Mossy Stone Blocks", CFrame.new(212, 14, -124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[210] t=1781716108.09
  {"Mossy Stone Blocks", CFrame.new(212, 14, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[211] t=1781716108.80
  {"Mossy Stone Blocks", CFrame.new(212, 14, -116, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[212] t=1781716109.07
  {"Mossy Stone Blocks", CFrame.new(212, 14, -112, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[213] t=1781716109.39
  {"Mossy Stone Blocks", CFrame.new(208, 14, -112, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[214] t=1781716110.03
  {"Mossy Stone Blocks", CFrame.new(212, 14, -108, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[215] t=1781716110.80
  {"Mossy Stone Blocks", CFrame.new(212, 14, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[216] t=1781716111.10
  {"Mossy Stone Blocks", CFrame.new(212, 14, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[217] t=1781716111.86
  {"Mossy Stone Blocks", CFrame.new(212, 14, -96, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[218] t=1781716112.11
  {"Mossy Stone Blocks", CFrame.new(212, 14, -92, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[219] t=1781716112.68
  {"Mossy Stone Blocks", CFrame.new(212, 14, -88, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[220] t=1781716112.96
  {"Mossy Stone Blocks", CFrame.new(212, 14, -84, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[221] t=1781716113.59
  {"Mossy Stone Blocks", CFrame.new(212, 14, -80, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[222] t=1781716113.92
  {"Mossy Stone Blocks", CFrame.new(212, 14, -76, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[223] t=1781716114.57
  {"Mossy Stone Blocks", CFrame.new(212, 14, -72, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[224] t=1781716114.82
  {"Mossy Stone Blocks", CFrame.new(212, 14, -68, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[225] t=1781716115.20
  {"Mossy Stone Blocks", CFrame.new(212, 14, -64, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[226] t=1781716121.01
  {"Mossy Stone Blocks", CFrame.new(208, 14, -116, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[227] t=1781716121.93
  {"Mossy Stone Blocks", CFrame.new(208, 10, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[228] t=1781716122.42
  {"Mossy Stone Blocks", CFrame.new(208, 6, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[229] t=1781716122.90
  {"Mossy Stone Blocks", CFrame.new(208, 2, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[230] t=1781716123.84
  {"Mossy Stone Blocks", CFrame.new(208, 14, -108, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[231] t=1781716124.87
  {"Mossy Stone Blocks", CFrame.new(208, 14, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[232] t=1781716125.76
  {"Mossy Stone Blocks", CFrame.new(208, 10, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[233] t=1781716126.29
  {"Mossy Stone Blocks", CFrame.new(208, 6, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[234] t=1781716126.68
  {"Mossy Stone Blocks", CFrame.new(208, 2, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[235] t=1781716136.93
  {"Mossy Stone Blocks", CFrame.new(212, 18, -156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[236] t=1781716137.20
  {"Mossy Stone Blocks", CFrame.new(212, 18, -152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[237] t=1781716137.46
  {"Mossy Stone Blocks", CFrame.new(212, 18, -148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[238] t=1781716137.71
  {"Mossy Stone Blocks", CFrame.new(212, 18, -144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[239] t=1781716137.97
  {"Mossy Stone Blocks", CFrame.new(212, 18, -140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[240] t=1781716139.27
  {"Mossy Stone Blocks", CFrame.new(212, 18, -136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[241] t=1781716140.10
  {"Mossy Stone Blocks", CFrame.new(212, 18, -132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[242] t=1781716140.47
  {"Mossy Stone Blocks", CFrame.new(212, 18, -128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[243] t=1781716140.89
  {"Mossy Stone Blocks", CFrame.new(212, 18, -124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[244] t=1781716141.21
  {"Mossy Stone Blocks", CFrame.new(212, 18, -120, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[245] t=1781716141.41
  {"Mossy Stone Blocks", CFrame.new(212, 18, -116, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[246] t=1781716141.63
  {"Mossy Stone Blocks", CFrame.new(212, 18, -112, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[247] t=1781716141.90
  {"Mossy Stone Blocks", CFrame.new(212, 18, -108, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[248] t=1781716142.36
  {"Mossy Stone Blocks", CFrame.new(212, 18, -104, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[249] t=1781716143.46
  {"Mossy Stone Blocks", CFrame.new(212, 18, -100, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[250] t=1781716143.69
  {"Mossy Stone Blocks", CFrame.new(212, 18, -96, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[251] t=1781716143.91
  {"Mossy Stone Blocks", CFrame.new(212, 18, -92, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[252] t=1781716144.12
  {"Mossy Stone Blocks", CFrame.new(212, 18, -88, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[253] t=1781716144.33
  {"Mossy Stone Blocks", CFrame.new(212, 18, -84, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[254] t=1781716144.56
  {"Mossy Stone Blocks", CFrame.new(212, 18, -80, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[255] t=1781716145.27
  {"Mossy Stone Blocks", CFrame.new(212, 18, -76, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[256] t=1781716145.79
  {"Mossy Stone Blocks", CFrame.new(212, 18, -72, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[257] t=1781716146.73
  {"Mossy Stone Blocks", CFrame.new(212, 18, -68, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[258] t=1781716147.29
  {"Mossy Stone Blocks", CFrame.new(212, 18, -64, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[259] t=1781716149.19
  {"Mossy Stone Blocks", CFrame.new(224, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[260] t=1781716149.40
  {"Mossy Stone Blocks", CFrame.new(220, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[261] t=1781716149.60
  {"Mossy Stone Blocks", CFrame.new(216, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[262] t=1781716149.85
  {"Mossy Stone Blocks", CFrame.new(212, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[263] t=1781716150.19
  {"Mossy Stone Blocks", CFrame.new(208, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[264] t=1781716150.75
  {"Mossy Stone Blocks", CFrame.new(204, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[265] t=1781716152.06
  {"Mossy Stone Blocks", CFrame.new(200, 14, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[266] t=1781716152.29
  {"Mossy Stone Blocks", CFrame.new(200, 14, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[267] t=1781716152.57
  {"Mossy Stone Blocks", CFrame.new(200, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[268] t=1781716152.98
  {"Mossy Stone Blocks", CFrame.new(200, 14, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[269] t=1781716153.41
  {"Mossy Stone Blocks", CFrame.new(200, 14, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[270] t=1781716154.17
  {"Mossy Stone Blocks", CFrame.new(224, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[271] t=1781716154.42
  {"Mossy Stone Blocks", CFrame.new(220, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[272] t=1781716154.65
  {"Mossy Stone Blocks", CFrame.new(216, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[273] t=1781716154.89
  {"Mossy Stone Blocks", CFrame.new(212, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[274] t=1781716155.39
  {"Mossy Stone Blocks", CFrame.new(208, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[275] t=1781716156.05
  {"Mossy Stone Blocks", CFrame.new(204, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[276] t=1781716156.94
  {"Mossy Stone Blocks", CFrame.new(200, 18, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[277] t=1781716157.17
  {"Mossy Stone Blocks", CFrame.new(200, 18, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[278] t=1781716157.44
  {"Mossy Stone Blocks", CFrame.new(200, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[279] t=1781716157.78
  {"Mossy Stone Blocks", CFrame.new(200, 18, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[280] t=1781716158.26
  {"Mossy Stone Blocks", CFrame.new(200, 18, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[281] t=1781716158.89
  {"Mossy Stone Blocks", CFrame.new(224, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[282] t=1781716159.11
  {"Mossy Stone Blocks", CFrame.new(220, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[283] t=1781716159.32
  {"Mossy Stone Blocks", CFrame.new(216, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[284] t=1781716159.54
  {"Mossy Stone Blocks", CFrame.new(212, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[285] t=1781716159.87
  {"Mossy Stone Blocks", CFrame.new(208, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[286] t=1781716160.49
  {"Mossy Stone Blocks", CFrame.new(204, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[287] t=1781716161.22
  {"Mossy Stone Blocks", CFrame.new(200, 22, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[288] t=1781716161.51
  {"Mossy Stone Blocks", CFrame.new(200, 22, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[289] t=1781716161.79
  {"Mossy Stone Blocks", CFrame.new(200, 22, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[290] t=1781716162.10
  {"Mossy Stone Blocks", CFrame.new(200, 22, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[291] t=1781716162.44
  {"Mossy Stone Blocks", CFrame.new(200, 22, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[292] t=1781716163.12
  {"Mossy Stone Blocks", CFrame.new(224, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[293] t=1781716163.36
  {"Mossy Stone Blocks", CFrame.new(220, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[294] t=1781716163.62
  {"Mossy Stone Blocks", CFrame.new(216, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[295] t=1781716163.87
  {"Mossy Stone Blocks", CFrame.new(212, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[296] t=1781716164.29
  {"Mossy Stone Blocks", CFrame.new(208, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[297] t=1781716164.96
  {"Mossy Stone Blocks", CFrame.new(204, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[298] t=1781716165.63
  {"Mossy Stone Blocks", CFrame.new(200, 26, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[299] t=1781716165.88
  {"Mossy Stone Blocks", CFrame.new(200, 26, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[300] t=1781716166.15
  {"Mossy Stone Blocks", CFrame.new(200, 26, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[301] t=1781716166.45
  {"Mossy Stone Blocks", CFrame.new(200, 26, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[302] t=1781716166.98
  {"Mossy Stone Blocks", CFrame.new(200, 26, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[303] t=1781716171.75
  {"Mossy Stone Blocks", CFrame.new(228, 14, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[304] t=1781716172.01
  {"Mossy Stone Blocks", CFrame.new(228, 14, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[305] t=1781716172.26
  {"Mossy Stone Blocks", CFrame.new(228, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[306] t=1781716172.53
  {"Mossy Stone Blocks", CFrame.new(228, 14, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[307] t=1781716172.91
  {"Mossy Stone Blocks", CFrame.new(228, 14, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[308] t=1781716173.76
  {"Mossy Stone Blocks", CFrame.new(228, 18, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[309] t=1781716174.00
  {"Mossy Stone Blocks", CFrame.new(228, 18, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[310] t=1781716174.36
  {"Mossy Stone Blocks", CFrame.new(228, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[311] t=1781716174.68
  {"Mossy Stone Blocks", CFrame.new(228, 18, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[312] t=1781716174.94
  {"Mossy Stone Blocks", CFrame.new(228, 18, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[313] t=1781716175.58
  {"Mossy Stone Blocks", CFrame.new(228, 22, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[314] t=1781716175.77
  {"Mossy Stone Blocks", CFrame.new(228, 22, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[315] t=1781716176.02
  {"Mossy Stone Blocks", CFrame.new(228, 22, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[316] t=1781716176.32
  {"Mossy Stone Blocks", CFrame.new(228, 22, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[317] t=1781716176.61
  {"Mossy Stone Blocks", CFrame.new(228, 22, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[318] t=1781716177.18
  {"Mossy Stone Blocks", CFrame.new(228, 26, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[319] t=1781716177.43
  {"Mossy Stone Blocks", CFrame.new(228, 26, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[320] t=1781716177.71
  {"Mossy Stone Blocks", CFrame.new(228, 26, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[321] t=1781716178.02
  {"Mossy Stone Blocks", CFrame.new(228, 26, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[322] t=1781716178.35
  {"Mossy Stone Blocks", CFrame.new(228, 26, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[323] t=1781716182.42
  {"Mossy Stone Blocks", CFrame.new(224, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[324] t=1781716182.70
  {"Mossy Stone Blocks", CFrame.new(220, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[325] t=1781716182.98
  {"Mossy Stone Blocks", CFrame.new(216, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[326] t=1781716183.30
  {"Mossy Stone Blocks", CFrame.new(212, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[327] t=1781716189.09
  {"Mossy Stone Blocks", CFrame.new(208, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[328] t=1781716189.41
  {"Mossy Stone Blocks", CFrame.new(204, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[329] t=1781716190.14
  {"Mossy Stone Blocks", CFrame.new(224, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[330] t=1781716190.43
  {"Mossy Stone Blocks", CFrame.new(220, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[331] t=1781716190.72
  {"Mossy Stone Blocks", CFrame.new(216, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[332] t=1781716191.05
  {"Mossy Stone Blocks", CFrame.new(212, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[333] t=1781716191.48
  {"Mossy Stone Blocks", CFrame.new(208, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[334] t=1781716191.87
  {"Mossy Stone Blocks", CFrame.new(204, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[335] t=1781716192.48
  {"Mossy Stone Blocks", CFrame.new(224, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[336] t=1781716192.72
  {"Mossy Stone Blocks", CFrame.new(220, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[337] t=1781716193.07
  {"Mossy Stone Blocks", CFrame.new(216, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[338] t=1781716193.39
  {"Mossy Stone Blocks", CFrame.new(212, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[339] t=1781716193.80
  {"Mossy Stone Blocks", CFrame.new(208, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[340] t=1781716194.18
  {"Mossy Stone Blocks", CFrame.new(204, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[341] t=1781716195.22
  {"Mossy Stone Blocks", CFrame.new(224, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[342] t=1781716195.56
  {"Mossy Stone Blocks", CFrame.new(220, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[343] t=1781716195.83
  {"Mossy Stone Blocks", CFrame.new(216, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[344] t=1781716196.19
  {"Mossy Stone Blocks", CFrame.new(212, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[345] t=1781716196.50
  {"Mossy Stone Blocks", CFrame.new(208, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[346] t=1781716196.90
  {"Mossy Stone Blocks", CFrame.new(204, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[347] t=1781716201.90
  {"Mossy Stone Blocks", CFrame.new(200, 30, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[348] t=1781716202.41
  {"Mossy Stone Blocks", CFrame.new(200, 30, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[349] t=1781716202.90
  {"Mossy Stone Blocks", CFrame.new(200, 30, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[350] t=1781716204.13
  {"Mossy Stone Blocks", CFrame.new(204, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[351] t=1781716205.27
  {"Mossy Stone Blocks", CFrame.new(212, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[352] t=1781716205.87
  {"Mossy Stone Blocks", CFrame.new(220, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[353] t=1781716206.59
  {"Mossy Stone Blocks", CFrame.new(228, 30, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[354] t=1781716207.60
  {"Mossy Stone Blocks", CFrame.new(228, 30, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[355] t=1781716211.22
  {"Mossy Stone Blocks", CFrame.new(204, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[356] t=1781716211.92
  {"Mossy Stone Blocks", CFrame.new(212, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[357] t=1781716212.53
  {"Mossy Stone Blocks", CFrame.new(220, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[358] t=1781716216.91
  {"Mossy Stone Blocks", CFrame.new(228, 30, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[359] t=1781716224.34
  {"Mossy Stone Blocks", CFrame.new(224, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[360] t=1781716224.60
  {"Mossy Stone Blocks", CFrame.new(220, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[361] t=1781716224.85
  {"Mossy Stone Blocks", CFrame.new(216, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[362] t=1781716225.13
  {"Mossy Stone Blocks", CFrame.new(212, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[363] t=1781716225.48
  {"Mossy Stone Blocks", CFrame.new(208, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[364] t=1781716225.87
  {"Mossy Stone Blocks", CFrame.new(204, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[365] t=1781716226.53
  {"Mossy Stone Blocks", CFrame.new(224, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[366] t=1781716226.75
  {"Mossy Stone Blocks", CFrame.new(220, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[367] t=1781716226.97
  {"Mossy Stone Blocks", CFrame.new(216, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[368] t=1781716227.22
  {"Mossy Stone Blocks", CFrame.new(212, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[369] t=1781716227.63
  {"Mossy Stone Blocks", CFrame.new(208, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[370] t=1781716227.97
  {"Mossy Stone Blocks", CFrame.new(204, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[371] t=1781716228.85
  {"Mossy Stone Blocks", CFrame.new(224, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[372] t=1781716229.06
  {"Mossy Stone Blocks", CFrame.new(220, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[373] t=1781716229.30
  {"Mossy Stone Blocks", CFrame.new(216, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[374] t=1781716229.63
  {"Mossy Stone Blocks", CFrame.new(212, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[375] t=1781716230.00
  {"Mossy Stone Blocks", CFrame.new(208, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[376] t=1781716230.33
  {"Mossy Stone Blocks", CFrame.new(204, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[377] t=1781716230.89
  {"Mossy Stone Blocks", CFrame.new(224, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[378] t=1781716231.14
  {"Mossy Stone Blocks", CFrame.new(220, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[379] t=1781716231.35
  {"Mossy Stone Blocks", CFrame.new(216, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[380] t=1781716231.61
  {"Mossy Stone Blocks", CFrame.new(212, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[381] t=1781716231.98
  {"Mossy Stone Blocks", CFrame.new(208, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[382] t=1781716232.34
  {"Mossy Stone Blocks", CFrame.new(204, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[383] t=1781716236.75
  {"Mossy Stone Blocks", CFrame.new(200, 14, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[384] t=1781716237.03
  {"Mossy Stone Blocks", CFrame.new(200, 14, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[385] t=1781716237.34
  {"Mossy Stone Blocks", CFrame.new(200, 14, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[386] t=1781716237.59
  {"Mossy Stone Blocks", CFrame.new(200, 14, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[387] t=1781716237.87
  {"Mossy Stone Blocks", CFrame.new(200, 14, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[388] t=1781716238.97
  {"Mossy Stone Blocks", CFrame.new(200, 18, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[389] t=1781716239.23
  {"Mossy Stone Blocks", CFrame.new(200, 18, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[390] t=1781716239.49
  {"Mossy Stone Blocks", CFrame.new(200, 18, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[391] t=1781716239.88
  {"Mossy Stone Blocks", CFrame.new(200, 18, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[392] t=1781716240.16
  {"Mossy Stone Blocks", CFrame.new(200, 18, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[393] t=1781716241.35
  {"Mossy Stone Blocks", CFrame.new(200, 22, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[394] t=1781716241.56
  {"Mossy Stone Blocks", CFrame.new(200, 22, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[395] t=1781716241.80
  {"Mossy Stone Blocks", CFrame.new(200, 22, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[396] t=1781716242.06
  {"Mossy Stone Blocks", CFrame.new(200, 22, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[397] t=1781716242.44
  {"Mossy Stone Blocks", CFrame.new(200, 22, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[398] t=1781716243.80
  {"Mossy Stone Blocks", CFrame.new(200, 26, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[399] t=1781716244.04
  {"Mossy Stone Blocks", CFrame.new(200, 26, -176, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[400] t=1781716244.30
  {"Mossy Stone Blocks", CFrame.new(200, 26, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[401] t=1781716244.53
  {"Mossy Stone Blocks", CFrame.new(200, 26, -168, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[402] t=1781716244.85
  {"Mossy Stone Blocks", CFrame.new(200, 26, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[403] t=1781716246.07
  {"Mossy Stone Blocks", CFrame.new(228, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[404] t=1781716248.39
  {"Mossy Stone Blocks", CFrame.new(228, 14, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[405] t=1781716248.58
  {"Mossy Stone Blocks", CFrame.new(228, 14, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[406] t=1781716249.16
  {"Mossy Stone Blocks", CFrame.new(228, 14, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[407] t=1781716249.36
  {"Mossy Stone Blocks", CFrame.new(228, 14, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[408] t=1781716249.65
  {"Mossy Stone Blocks", CFrame.new(228, 18, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[409] t=1781716249.85
  {"Mossy Stone Blocks", CFrame.new(228, 18, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[410] t=1781716250.07
  {"Mossy Stone Blocks", CFrame.new(228, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[411] t=1781716250.31
  {"Mossy Stone Blocks", CFrame.new(228, 18, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[412] t=1781716250.70
  {"Mossy Stone Blocks", CFrame.new(228, 18, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[413] t=1781716251.27
  {"Mossy Stone Blocks", CFrame.new(228, 22, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[414] t=1781716251.49
  {"Mossy Stone Blocks", CFrame.new(228, 22, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[415] t=1781716251.70
  {"Mossy Stone Blocks", CFrame.new(228, 22, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[416] t=1781716251.94
  {"Mossy Stone Blocks", CFrame.new(228, 22, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[417] t=1781716252.45
  {"Mossy Stone Blocks", CFrame.new(228, 22, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[418] t=1781716252.91
  {"Mossy Stone Blocks", CFrame.new(228, 26, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[419] t=1781716253.13
  {"Mossy Stone Blocks", CFrame.new(228, 26, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[420] t=1781716253.40
  {"Mossy Stone Blocks", CFrame.new(228, 26, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[421] t=1781716253.76
  {"Mossy Stone Blocks", CFrame.new(228, 26, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[422] t=1781716254.12
  {"Mossy Stone Blocks", CFrame.new(228, 26, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[423] t=1781716260.66
  {"Mossy Stone Blocks", CFrame.new(204, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[424] t=1781716260.95
  {"Mossy Stone Blocks", CFrame.new(208, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[425] t=1781716261.25
  {"Mossy Stone Blocks", CFrame.new(212, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[426] t=1781716261.54
  {"Mossy Stone Blocks", CFrame.new(216, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[427] t=1781716261.92
  {"Mossy Stone Blocks", CFrame.new(220, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[428] t=1781716262.45
  {"Mossy Stone Blocks", CFrame.new(224, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[429] t=1781716262.99
  {"Mossy Stone Blocks", CFrame.new(204, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[430] t=1781716263.22
  {"Mossy Stone Blocks", CFrame.new(208, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[431] t=1781716263.43
  {"Mossy Stone Blocks", CFrame.new(212, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[432] t=1781716263.68
  {"Mossy Stone Blocks", CFrame.new(216, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[433] t=1781716264.04
  {"Mossy Stone Blocks", CFrame.new(220, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[434] t=1781716264.50
  {"Mossy Stone Blocks", CFrame.new(224, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[435] t=1781716265.13
  {"Mossy Stone Blocks", CFrame.new(204, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[436] t=1781716265.41
  {"Mossy Stone Blocks", CFrame.new(208, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[437] t=1781716265.64
  {"Mossy Stone Blocks", CFrame.new(212, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[438] t=1781716266.00
  {"Mossy Stone Blocks", CFrame.new(216, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[439] t=1781716266.38
  {"Mossy Stone Blocks", CFrame.new(220, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[440] t=1781716266.86
  {"Mossy Stone Blocks", CFrame.new(224, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[441] t=1781716267.65
  {"Mossy Stone Blocks", CFrame.new(204, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[442] t=1781716267.94
  {"Mossy Stone Blocks", CFrame.new(208, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[443] t=1781716268.25
  {"Mossy Stone Blocks", CFrame.new(212, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[444] t=1781716268.78
  {"Mossy Stone Blocks", CFrame.new(220, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[445] t=1781716269.24
  {"Mossy Stone Blocks", CFrame.new(224, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[446] t=1781716269.70
  {"Mossy Stone Blocks", CFrame.new(216, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[447] t=1781716277.76
  {"Mossy Stone Blocks", CFrame.new(200, 30, -164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[448] t=1781716278.15
  {"Mossy Stone Blocks", CFrame.new(200, 30, -172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[449] t=1781716278.57
  {"Mossy Stone Blocks", CFrame.new(200, 30, -180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[450] t=1781716281.59
  {"Mossy Stone Blocks", CFrame.new(204, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[451] t=1781716287.15
  {"Mossy Stone Blocks", CFrame.new(204, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[452] t=1781716287.67
  {"Mossy Stone Blocks", CFrame.new(212, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[453] t=1781716288.55
  {"Mossy Stone Blocks", CFrame.new(212, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[454] t=1781716289.04
  {"Mossy Stone Blocks", CFrame.new(220, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[455] t=1781716289.73
  {"Mossy Stone Blocks", CFrame.new(220, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[456] t=1781716291.17
  {"Mossy Stone Blocks", CFrame.new(228, 30, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[457] t=1781716291.67
  {"Mossy Stone Blocks", CFrame.new(228, 30, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[458] t=1781716292.14
  {"Mossy Stone Blocks", CFrame.new(228, 30, -180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[459] t=1781716300.12
  {"Mossy Stone Blocks", CFrame.new(232, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[460] t=1781716300.85
  {"Mossy Stone Blocks", CFrame.new(236, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[461] t=1781716301.55
  {"Mossy Stone Blocks", CFrame.new(240, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[462] t=1781716302.15
  {"Mossy Stone Blocks", CFrame.new(244, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[463] t=1781716305.33
  {"Mossy Stone Blocks", CFrame.new(248, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[464] t=1781716305.55
  {"Mossy Stone Blocks", CFrame.new(252, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[465] t=1781716305.75
  {"Mossy Stone Blocks", CFrame.new(256, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[466] t=1781716305.94
  {"Mossy Stone Blocks", CFrame.new(260, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[467] t=1781716306.12
  {"Mossy Stone Blocks", CFrame.new(264, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[468] t=1781716306.30
  {"Mossy Stone Blocks", CFrame.new(268, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[469] t=1781716306.48
  {"Mossy Stone Blocks", CFrame.new(272, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[470] t=1781716306.64
  {"Mossy Stone Blocks", CFrame.new(276, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[471] t=1781716306.80
  {"Mossy Stone Blocks", CFrame.new(280, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[472] t=1781716306.97
  {"Mossy Stone Blocks", CFrame.new(284, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[473] t=1781716307.14
  {"Mossy Stone Blocks", CFrame.new(288, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[474] t=1781716307.31
  {"Mossy Stone Blocks", CFrame.new(292, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[475] t=1781716307.50
  {"Mossy Stone Blocks", CFrame.new(296, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[476] t=1781716307.87
  {"Mossy Stone Blocks", CFrame.new(300, 2, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[477] t=1781716313.61
  {"Mossy Stone Blocks", CFrame.new(232, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[478] t=1781716314.08
  {"Mossy Stone Blocks", CFrame.new(236, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[479] t=1781716314.28
  {"Mossy Stone Blocks", CFrame.new(240, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[480] t=1781716314.46
  {"Mossy Stone Blocks", CFrame.new(244, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[481] t=1781716314.64
  {"Mossy Stone Blocks", CFrame.new(248, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[482] t=1781716314.82
  {"Mossy Stone Blocks", CFrame.new(252, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[483] t=1781716315.06
  {"Mossy Stone Blocks", CFrame.new(256, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[484] t=1781716315.25
  {"Mossy Stone Blocks", CFrame.new(260, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[485] t=1781716315.45
  {"Mossy Stone Blocks", CFrame.new(264, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[486] t=1781716315.64
  {"Mossy Stone Blocks", CFrame.new(268, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[487] t=1781716315.84
  {"Mossy Stone Blocks", CFrame.new(272, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[488] t=1781716316.04
  {"Mossy Stone Blocks", CFrame.new(276, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[489] t=1781716316.22
  {"Mossy Stone Blocks", CFrame.new(280, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[490] t=1781716316.76
  {"Mossy Stone Blocks", CFrame.new(284, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[491] t=1781716316.98
  {"Mossy Stone Blocks", CFrame.new(288, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[492] t=1781716320.25
  {"Mossy Stone Blocks", CFrame.new(232, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[493] t=1781716320.60
  {"Mossy Stone Blocks", CFrame.new(236, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[494] t=1781716320.76
  {"Mossy Stone Blocks", CFrame.new(240, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[495] t=1781716320.94
  {"Mossy Stone Blocks", CFrame.new(244, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[496] t=1781716321.12
  {"Mossy Stone Blocks", CFrame.new(248, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[497] t=1781716321.30
  {"Mossy Stone Blocks", CFrame.new(252, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[498] t=1781716321.49
  {"Mossy Stone Blocks", CFrame.new(256, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[499] t=1781716321.67
  {"Mossy Stone Blocks", CFrame.new(260, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[500] t=1781716321.86
  {"Mossy Stone Blocks", CFrame.new(264, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[501] t=1781716322.05
  {"Mossy Stone Blocks", CFrame.new(268, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[502] t=1781716322.23
  {"Mossy Stone Blocks", CFrame.new(272, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[503] t=1781716322.42
  {"Mossy Stone Blocks", CFrame.new(276, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[504] t=1781716322.60
  {"Mossy Stone Blocks", CFrame.new(280, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[505] t=1781716322.81
  {"Mossy Stone Blocks", CFrame.new(284, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[506] t=1781716327.36
  {"Mossy Stone Blocks", CFrame.new(232, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[507] t=1781716327.54
  {"Mossy Stone Blocks", CFrame.new(236, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[508] t=1781716327.73
  {"Mossy Stone Blocks", CFrame.new(240, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[509] t=1781716327.93
  {"Mossy Stone Blocks", CFrame.new(244, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[510] t=1781716328.12
  {"Mossy Stone Blocks", CFrame.new(248, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[511] t=1781716328.31
  {"Mossy Stone Blocks", CFrame.new(252, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[512] t=1781716328.53
  {"Mossy Stone Blocks", CFrame.new(256, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[513] t=1781716328.73
  {"Mossy Stone Blocks", CFrame.new(260, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[514] t=1781716328.97
  {"Mossy Stone Blocks", CFrame.new(264, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[515] t=1781716329.20
  {"Mossy Stone Blocks", CFrame.new(268, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[516] t=1781716329.55
  {"Mossy Stone Blocks", CFrame.new(272, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[517] t=1781716329.89
  {"Mossy Stone Blocks", CFrame.new(276, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[518] t=1781716330.25
  {"Mossy Stone Blocks", CFrame.new(280, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[519] t=1781716333.22
  {"Mossy Stone Blocks", CFrame.new(232, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[520] t=1781716333.40
  {"Mossy Stone Blocks", CFrame.new(236, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[521] t=1781716333.60
  {"Mossy Stone Blocks", CFrame.new(240, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[522] t=1781716333.78
  {"Mossy Stone Blocks", CFrame.new(244, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[523] t=1781716333.97
  {"Mossy Stone Blocks", CFrame.new(248, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[524] t=1781716334.16
  {"Mossy Stone Blocks", CFrame.new(252, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[525] t=1781716334.36
  {"Mossy Stone Blocks", CFrame.new(256, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[526] t=1781716334.59
  {"Mossy Stone Blocks", CFrame.new(260, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[527] t=1781716334.79
  {"Mossy Stone Blocks", CFrame.new(264, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[528] t=1781716335.00
  {"Mossy Stone Blocks", CFrame.new(268, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[529] t=1781716335.21
  {"Mossy Stone Blocks", CFrame.new(272, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[530] t=1781716337.22
  {"Mossy Stone Blocks", CFrame.new(276, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[531] t=1781716337.61
  {"Mossy Stone Blocks", CFrame.new(280, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[532] t=1781716338.65
  {"Mossy Stone Blocks", CFrame.new(284, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[533] t=1781716338.91
  {"Mossy Stone Blocks", CFrame.new(284, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[534] t=1781716339.37
  {"Mossy Stone Blocks", CFrame.new(288, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[535] t=1781716339.62
  {"Mossy Stone Blocks", CFrame.new(288, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[536] t=1781716339.90
  {"Mossy Stone Blocks", CFrame.new(288, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[537] t=1781716340.72
  {"Mossy Stone Blocks", CFrame.new(292, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[538] t=1781716340.97
  {"Mossy Stone Blocks", CFrame.new(296, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[539] t=1781716341.33
  {"Mossy Stone Blocks", CFrame.new(300, 6, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[540] t=1781716341.66
  {"Mossy Stone Blocks", CFrame.new(292, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[541] t=1781716341.89
  {"Mossy Stone Blocks", CFrame.new(296, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[542] t=1781716342.14
  {"Mossy Stone Blocks", CFrame.new(300, 10, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[543] t=1781716342.56
  {"Mossy Stone Blocks", CFrame.new(292, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[544] t=1781716342.78
  {"Mossy Stone Blocks", CFrame.new(296, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[545] t=1781716343.03
  {"Mossy Stone Blocks", CFrame.new(300, 14, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[546] t=1781716343.47
  {"Mossy Stone Blocks", CFrame.new(292, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[547] t=1781716343.69
  {"Mossy Stone Blocks", CFrame.new(296, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[548] t=1781716343.96
  {"Mossy Stone Blocks", CFrame.new(300, 18, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[549] t=1781716348.48
  {"Mossy Stone Blocks", CFrame.new(300, 2, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[550] t=1781716348.71
  {"Mossy Stone Blocks", CFrame.new(300, 2, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[551] t=1781716350.07
  {"Mossy Stone Blocks", CFrame.new(304, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[552] t=1781716351.23
  {"Mossy Stone Blocks", CFrame.new(300, 2, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[553] t=1781716351.95
  {"Mossy Stone Blocks", CFrame.new(300, 2, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[554] t=1781716352.83
  {"Mossy Stone Blocks", CFrame.new(304, 2, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[555] t=1781716358.64
  {"Mossy Stone Blocks", CFrame.new(308, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[556] t=1781716359.12
  {"Mossy Stone Blocks", CFrame.new(312, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[557] t=1781716359.58
  {"Mossy Stone Blocks", CFrame.new(316, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[558] t=1781716360.07
  {"Mossy Stone Blocks", CFrame.new(320, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[559] t=1781716360.68
  {"Mossy Stone Blocks", CFrame.new(324, 2, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[560] t=1781716362.42
  {"Mossy Stone Blocks", CFrame.new(312, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[561] t=1781716362.89
  {"Mossy Stone Blocks", CFrame.new(316, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[562] t=1781716363.23
  {"Mossy Stone Blocks", CFrame.new(320, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[563] t=1781716363.61
  {"Mossy Stone Blocks", CFrame.new(324, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[564] t=1781716364.43
  {"Mossy Stone Blocks", CFrame.new(308, 2, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[565] t=1781716366.90
  {"Mossy Stone Blocks", CFrame.new(328, 2, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[566] t=1781716367.23
  {"Mossy Stone Blocks", CFrame.new(328, 2, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[567] t=1781716367.45
  {"Mossy Stone Blocks", CFrame.new(328, 2, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[568] t=1781716367.76
  {"Mossy Stone Blocks", CFrame.new(328, 2, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[569] t=1781716368.22
  {"Mossy Stone Blocks", CFrame.new(328, 2, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[570] t=1781716379.34
  {"Mossy Stone Blocks", CFrame.new(316, 2, -156, 1, 0, 0, 0), workspace.Baseplate},
  --[571] t=1781716379.79
  {"Mossy Stone Blocks", CFrame.new(316, 2, -152, 1, 0, 0, 0), workspace.Baseplate},
  --[572] t=1781716380.02
  {"Mossy Stone Blocks", CFrame.new(316, 2, -148, 1, 0, 0, 0), workspace.Baseplate},
  --[573] t=1781716380.29
  {"Mossy Stone Blocks", CFrame.new(316, 2, -144, 1, 0, 0, 0), workspace.Baseplate},
  --[574] t=1781716380.51
  {"Mossy Stone Blocks", CFrame.new(316, 2, -140, 1, 0, 0, 0), workspace.Baseplate},
  --[575] t=1781716380.73
  {"Mossy Stone Blocks", CFrame.new(316, 2, -136, 1, 0, 0, 0), workspace.Baseplate},
  --[576] t=1781716381.66
  {"Mossy Stone Blocks", CFrame.new(316, 2, -132, 1, 0, 0, 0), workspace.Baseplate},
  --[577] t=1781716381.88
  {"Mossy Stone Blocks", CFrame.new(316, 2, -128, 1, 0, 0, 0), workspace.Baseplate},
  --[578] t=1781716382.07
  {"Mossy Stone Blocks", CFrame.new(316, 2, -124, 1, 0, 0, 0), workspace.Baseplate},
  --[579] t=1781716382.29
  {"Mossy Stone Blocks", CFrame.new(316, 2, -120, 1, 0, 0, 0), workspace.Baseplate},
  --[580] t=1781716382.48
  {"Mossy Stone Blocks", CFrame.new(316, 2, -116, 1, 0, 0, 0), workspace.Baseplate},
  --[581] t=1781716382.66
  {"Mossy Stone Blocks", CFrame.new(316, 2, -112, 1, 0, 0, 0), workspace.Baseplate},
  --[582] t=1781716383.61
  {"Mossy Stone Blocks", CFrame.new(316, 2, -108, 1, 0, 0, 0), workspace.Baseplate},
  --[583] t=1781716383.85
  {"Mossy Stone Blocks", CFrame.new(316, 2, -104, 1, 0, 0, 0), workspace.Baseplate},
  --[584] t=1781716384.05
  {"Mossy Stone Blocks", CFrame.new(316, 2, -100, 1, 0, 0, 0), workspace.Baseplate},
  --[585] t=1781716384.24
  {"Mossy Stone Blocks", CFrame.new(316, 2, -96, 1, 0, 0, 0), workspace.Baseplate},
  --[586] t=1781716389.34
  {"Mossy Stone Blocks", CFrame.new(232, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[587] t=1781716389.62
  {"Mossy Stone Blocks", CFrame.new(236, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[588] t=1781716389.86
  {"Mossy Stone Blocks", CFrame.new(240, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[589] t=1781716390.07
  {"Mossy Stone Blocks", CFrame.new(244, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[590] t=1781716390.25
  {"Mossy Stone Blocks", CFrame.new(248, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[591] t=1781716391.26
  {"Mossy Stone Blocks", CFrame.new(252, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[592] t=1781716391.45
  {"Mossy Stone Blocks", CFrame.new(256, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[593] t=1781716391.66
  {"Mossy Stone Blocks", CFrame.new(260, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[594] t=1781716391.85
  {"Mossy Stone Blocks", CFrame.new(264, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[595] t=1781716392.08
  {"Mossy Stone Blocks", CFrame.new(268, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[596] t=1781716392.29
  {"Mossy Stone Blocks", CFrame.new(272, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[597] t=1781716392.46
  {"Mossy Stone Blocks", CFrame.new(276, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[598] t=1781716392.64
  {"Mossy Stone Blocks", CFrame.new(280, 2, -48, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[599] t=1781716394.24
  {"Mossy Stone Blocks", CFrame.new(284, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[600] t=1781716394.49
  {"Mossy Stone Blocks", CFrame.new(288, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[601] t=1781716426.69
  {"Mossy Stone Blocks", CFrame.new(292, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[602] t=1781716427.16
  {"Mossy Stone Blocks", CFrame.new(296, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[603] t=1781716427.68
  {"Mossy Stone Blocks", CFrame.new(300, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[604] t=1781716434.88
  {"Mossy Stone Blocks", CFrame.new(300, 2, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[605] t=1781716435.13
  {"Mossy Stone Blocks", CFrame.new(300, 2, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[606] t=1781716438.57
  {"Mossy Stone Blocks", CFrame.new(304, 2, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[607] t=1781716439.00
  {"Mossy Stone Blocks", CFrame.new(308, 2, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[608] t=1781716439.39
  {"Mossy Stone Blocks", CFrame.new(312, 2, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[609] t=1781716439.93
  {"Mossy Stone Blocks", CFrame.new(316, 2, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[610] t=1781716440.38
  {"Mossy Stone Blocks", CFrame.new(320, 2, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[611] t=1781716445.04
  {"Mossy Stone Blocks", CFrame.new(324, 2, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[612] t=1781716449.63
  {"Mossy Stone Blocks", CFrame.new(316, 2, -64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[613] t=1781716449.87
  {"Mossy Stone Blocks", CFrame.new(316, 2, -68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[614] t=1781716450.17
  {"Mossy Stone Blocks", CFrame.new(316, 2, -72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[615] t=1781716450.47
  {"Mossy Stone Blocks", CFrame.new(316, 2, -76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[616] t=1781716450.73
  {"Mossy Stone Blocks", CFrame.new(316, 2, -80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[617] t=1781716450.98
  {"Mossy Stone Blocks", CFrame.new(316, 2, -84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[618] t=1781716451.34
  {"Mossy Stone Blocks", CFrame.new(316, 2, -88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[619] t=1781716451.70
  {"Mossy Stone Blocks", CFrame.new(316, 2, -92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[620] t=1781716453.84
  {"Mossy Stone Blocks", CFrame.new(328, 2, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[621] t=1781716454.13
  {"Mossy Stone Blocks", CFrame.new(328, 2, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[622] t=1781716454.35
  {"Mossy Stone Blocks", CFrame.new(328, 2, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[623] t=1781716454.64
  {"Mossy Stone Blocks", CFrame.new(328, 2, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[624] t=1781716467.75
  {"Mossy Stone Blocks", CFrame.new(328, 2, -40, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[625] t=1781716469.19
  {"Mossy Stone Blocks", CFrame.new(324, 2, -36, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[626] t=1781716471.74
  {"Mossy Stone Blocks", CFrame.new(320, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[627] t=1781716472.12
  {"Mossy Stone Blocks", CFrame.new(316, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[628] t=1781716472.49
  {"Mossy Stone Blocks", CFrame.new(312, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[629] t=1781716472.92
  {"Mossy Stone Blocks", CFrame.new(308, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[630] t=1781716474.98
  {"Mossy Stone Blocks", CFrame.new(304, 2, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[631] t=1781716475.59
  {"Mossy Stone Blocks", CFrame.new(300, 2, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[632] t=1781716475.97
  {"Mossy Stone Blocks", CFrame.new(300, 2, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[633] t=1781716481.69
  {"Mossy Stone Blocks", CFrame.new(232, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[634] t=1781716482.15
  {"Mossy Stone Blocks", CFrame.new(232, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[635] t=1781716482.66
  {"Mossy Stone Blocks", CFrame.new(236, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[636] t=1781716482.91
  {"Mossy Stone Blocks", CFrame.new(240, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[637] t=1781716483.14
  {"Mossy Stone Blocks", CFrame.new(244, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[638] t=1781716484.08
  {"Mossy Stone Blocks", CFrame.new(248, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[639] t=1781716484.31
  {"Mossy Stone Blocks", CFrame.new(252, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[640] t=1781716484.58
  {"Mossy Stone Blocks", CFrame.new(256, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[641] t=1781716484.78
  {"Mossy Stone Blocks", CFrame.new(260, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[642] t=1781716484.97
  {"Mossy Stone Blocks", CFrame.new(264, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[643] t=1781716485.20
  {"Mossy Stone Blocks", CFrame.new(268, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[644] t=1781716485.40
  {"Mossy Stone Blocks", CFrame.new(272, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[645] t=1781716485.62
  {"Mossy Stone Blocks", CFrame.new(276, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[646] t=1781716486.01
  {"Mossy Stone Blocks", CFrame.new(280, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[647] t=1781716486.44
  {"Mossy Stone Blocks", CFrame.new(284, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[648] t=1781716487.93
  {"Mossy Stone Blocks", CFrame.new(232, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[649] t=1781716488.15
  {"Mossy Stone Blocks", CFrame.new(236, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[650] t=1781716488.37
  {"Mossy Stone Blocks", CFrame.new(240, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[651] t=1781716488.58
  {"Mossy Stone Blocks", CFrame.new(244, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[652] t=1781716488.79
  {"Mossy Stone Blocks", CFrame.new(248, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[653] t=1781716488.97
  {"Mossy Stone Blocks", CFrame.new(252, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[654] t=1781716489.20
  {"Mossy Stone Blocks", CFrame.new(256, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[655] t=1781716489.40
  {"Mossy Stone Blocks", CFrame.new(260, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[656] t=1781716489.58
  {"Mossy Stone Blocks", CFrame.new(264, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[657] t=1781716489.77
  {"Mossy Stone Blocks", CFrame.new(268, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[658] t=1781716489.95
  {"Mossy Stone Blocks", CFrame.new(272, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[659] t=1781716490.14
  {"Mossy Stone Blocks", CFrame.new(276, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[660] t=1781716490.33
  {"Mossy Stone Blocks", CFrame.new(280, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[661] t=1781716490.52
  {"Mossy Stone Blocks", CFrame.new(284, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[662] t=1781716492.44
  {"Mossy Stone Blocks", CFrame.new(232, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[663] t=1781716492.67
  {"Mossy Stone Blocks", CFrame.new(236, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[664] t=1781716492.87
  {"Mossy Stone Blocks", CFrame.new(240, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[665] t=1781716493.07
  {"Mossy Stone Blocks", CFrame.new(244, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[666] t=1781716493.27
  {"Mossy Stone Blocks", CFrame.new(248, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[667] t=1781716493.45
  {"Mossy Stone Blocks", CFrame.new(252, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[668] t=1781716493.63
  {"Mossy Stone Blocks", CFrame.new(256, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[669] t=1781716493.81
  {"Mossy Stone Blocks", CFrame.new(260, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[670] t=1781716494.00
  {"Mossy Stone Blocks", CFrame.new(264, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[671] t=1781716494.20
  {"Mossy Stone Blocks", CFrame.new(268, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[672] t=1781716494.39
  {"Mossy Stone Blocks", CFrame.new(272, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[673] t=1781716494.59
  {"Mossy Stone Blocks", CFrame.new(276, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[674] t=1781716494.82
  {"Mossy Stone Blocks", CFrame.new(280, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[675] t=1781716498.67
  {"Mossy Stone Blocks", CFrame.new(232, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[676] t=1781716498.99
  {"Mossy Stone Blocks", CFrame.new(236, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[677] t=1781716499.17
  {"Mossy Stone Blocks", CFrame.new(240, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[678] t=1781716499.35
  {"Mossy Stone Blocks", CFrame.new(244, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[679] t=1781716499.52
  {"Mossy Stone Blocks", CFrame.new(248, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[680] t=1781716499.75
  {"Mossy Stone Blocks", CFrame.new(252, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[681] t=1781716499.94
  {"Mossy Stone Blocks", CFrame.new(256, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[682] t=1781716500.12
  {"Mossy Stone Blocks", CFrame.new(260, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[683] t=1781716500.30
  {"Mossy Stone Blocks", CFrame.new(264, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[684] t=1781716500.50
  {"Mossy Stone Blocks", CFrame.new(268, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[685] t=1781716500.70
  {"Mossy Stone Blocks", CFrame.new(272, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[686] t=1781716500.89
  {"Mossy Stone Blocks", CFrame.new(276, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[687] t=1781716501.08
  {"Mossy Stone Blocks", CFrame.new(280, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[688] t=1781716504.43
  {"Mossy Stone Blocks", CFrame.new(284, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[689] t=1781716504.69
  {"Mossy Stone Blocks", CFrame.new(284, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[690] t=1781716506.27
  {"Mossy Stone Blocks", CFrame.new(288, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[691] t=1781716506.50
  {"Mossy Stone Blocks", CFrame.new(292, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[692] t=1781716506.82
  {"Mossy Stone Blocks", CFrame.new(296, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[693] t=1781716507.26
  {"Mossy Stone Blocks", CFrame.new(288, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[694] t=1781716507.50
  {"Mossy Stone Blocks", CFrame.new(292, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[695] t=1781716507.75
  {"Mossy Stone Blocks", CFrame.new(296, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[696] t=1781716508.20
  {"Mossy Stone Blocks", CFrame.new(288, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[697] t=1781716508.44
  {"Mossy Stone Blocks", CFrame.new(292, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[698] t=1781716508.73
  {"Mossy Stone Blocks", CFrame.new(296, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[699] t=1781716509.29
  {"Mossy Stone Blocks", CFrame.new(288, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[700] t=1781716509.51
  {"Mossy Stone Blocks", CFrame.new(292, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[701] t=1781716509.88
  {"Mossy Stone Blocks", CFrame.new(296, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[702] t=1781716512.24
  {"Mossy Stone Blocks", CFrame.new(300, 6, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[703] t=1781716512.45
  {"Mossy Stone Blocks", CFrame.new(300, 6, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[704] t=1781716512.82
  {"Mossy Stone Blocks", CFrame.new(300, 10, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[705] t=1781716513.02
  {"Mossy Stone Blocks", CFrame.new(300, 10, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[706] t=1781716513.47
  {"Mossy Stone Blocks", CFrame.new(300, 14, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[707] t=1781716513.67
  {"Mossy Stone Blocks", CFrame.new(300, 14, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[708] t=1781716514.12
  {"Mossy Stone Blocks", CFrame.new(300, 18, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[709] t=1781716514.33
  {"Mossy Stone Blocks", CFrame.new(300, 18, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[710] t=1781716515.00
  {"Mossy Stone Blocks", CFrame.new(304, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[711] t=1781716515.22
  {"Mossy Stone Blocks", CFrame.new(308, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[712] t=1781716515.61
  {"Mossy Stone Blocks", CFrame.new(304, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[713] t=1781716515.83
  {"Mossy Stone Blocks", CFrame.new(308, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[714] t=1781716516.12
  {"Mossy Stone Blocks", CFrame.new(304, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[715] t=1781716516.35
  {"Mossy Stone Blocks", CFrame.new(308, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[716] t=1781716516.81
  {"Mossy Stone Blocks", CFrame.new(304, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[717] t=1781716517.01
  {"Mossy Stone Blocks", CFrame.new(308, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[718] t=1781716517.54
  {"Mossy Stone Blocks", CFrame.new(312, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[719] t=1781716517.77
  {"Mossy Stone Blocks", CFrame.new(316, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[720] t=1781716518.14
  {"Mossy Stone Blocks", CFrame.new(312, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[721] t=1781716518.36
  {"Mossy Stone Blocks", CFrame.new(316, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[722] t=1781716518.62
  {"Mossy Stone Blocks", CFrame.new(312, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[723] t=1781716518.85
  {"Mossy Stone Blocks", CFrame.new(316, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[724] t=1781716519.20
  {"Mossy Stone Blocks", CFrame.new(312, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[725] t=1781716519.43
  {"Mossy Stone Blocks", CFrame.new(316, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[726] t=1781716519.96
  {"Mossy Stone Blocks", CFrame.new(320, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[727] t=1781716520.37
  {"Mossy Stone Blocks", CFrame.new(324, 6, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[728] t=1781716520.63
  {"Mossy Stone Blocks", CFrame.new(320, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[729] t=1781716520.90
  {"Mossy Stone Blocks", CFrame.new(324, 10, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[730] t=1781716521.26
  {"Mossy Stone Blocks", CFrame.new(320, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[731] t=1781716521.49
  {"Mossy Stone Blocks", CFrame.new(324, 14, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[732] t=1781716522.18
  {"Mossy Stone Blocks", CFrame.new(320, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[733] t=1781716522.56
  {"Mossy Stone Blocks", CFrame.new(324, 18, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[734] t=1781716525.69
  {"Mossy Stone Blocks", CFrame.new(300, 6, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[735] t=1781716525.87
  {"Mossy Stone Blocks", CFrame.new(300, 6, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[736] t=1781716526.17
  {"Mossy Stone Blocks", CFrame.new(300, 10, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[737] t=1781716526.37
  {"Mossy Stone Blocks", CFrame.new(300, 10, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[738] t=1781716526.68
  {"Mossy Stone Blocks", CFrame.new(300, 14, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[739] t=1781716526.90
  {"Mossy Stone Blocks", CFrame.new(300, 14, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[740] t=1781716527.31
  {"Mossy Stone Blocks", CFrame.new(300, 18, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[741] t=1781716527.51
  {"Mossy Stone Blocks", CFrame.new(300, 18, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[742] t=1781716528.68
  {"Mossy Stone Blocks", CFrame.new(304, 6, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[743] t=1781716528.88
  {"Mossy Stone Blocks", CFrame.new(312, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[744] t=1781716529.39
  {"Mossy Stone Blocks", CFrame.new(312, 6, -188, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[745] t=1781716529.93
  {"Mossy Stone Blocks", CFrame.new(308, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[746] t=1781716530.35
  {"Mossy Stone Blocks", CFrame.new(304, 10, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[747] t=1781716530.55
  {"Mossy Stone Blocks", CFrame.new(308, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[748] t=1781716530.86
  {"Mossy Stone Blocks", CFrame.new(312, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[749] t=1781716531.36
  {"Mossy Stone Blocks", CFrame.new(304, 14, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[750] t=1781716531.59
  {"Mossy Stone Blocks", CFrame.new(308, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[751] t=1781716531.82
  {"Mossy Stone Blocks", CFrame.new(312, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[752] t=1781716532.48
  {"Mossy Stone Blocks", CFrame.new(304, 18, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[753] t=1781716532.69
  {"Mossy Stone Blocks", CFrame.new(308, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[754] t=1781716532.99
  {"Mossy Stone Blocks", CFrame.new(312, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[755] t=1781716533.84
  {"Mossy Stone Blocks", CFrame.new(316, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[756] t=1781716534.05
  {"Mossy Stone Blocks", CFrame.new(320, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[757] t=1781716534.29
  {"Mossy Stone Blocks", CFrame.new(324, 6, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[758] t=1781716534.74
  {"Mossy Stone Blocks", CFrame.new(316, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[759] t=1781716534.94
  {"Mossy Stone Blocks", CFrame.new(320, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[760] t=1781716535.19
  {"Mossy Stone Blocks", CFrame.new(324, 10, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[761] t=1781716535.65
  {"Mossy Stone Blocks", CFrame.new(316, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[762] t=1781716535.85
  {"Mossy Stone Blocks", CFrame.new(320, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[763] t=1781716536.11
  {"Mossy Stone Blocks", CFrame.new(324, 14, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[764] t=1781716536.56
  {"Mossy Stone Blocks", CFrame.new(316, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[765] t=1781716536.77
  {"Mossy Stone Blocks", CFrame.new(320, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[766] t=1781716537.01
  {"Mossy Stone Blocks", CFrame.new(324, 18, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[767] t=1781716538.02
  {"Mossy Stone Blocks", CFrame.new(328, 6, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[768] t=1781716538.23
  {"Mossy Stone Blocks", CFrame.new(328, 6, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[769] t=1781716538.48
  {"Mossy Stone Blocks", CFrame.new(328, 6, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[770] t=1781716538.84
  {"Mossy Stone Blocks", CFrame.new(328, 6, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[771] t=1781716539.11
  {"Mossy Stone Blocks", CFrame.new(328, 6, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[772] t=1781716539.80
  {"Mossy Stone Blocks", CFrame.new(328, 10, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[773] t=1781716540.03
  {"Mossy Stone Blocks", CFrame.new(328, 10, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[774] t=1781716540.25
  {"Mossy Stone Blocks", CFrame.new(328, 10, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[775] t=1781716540.45
  {"Mossy Stone Blocks", CFrame.new(328, 10, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[776] t=1781716540.86
  {"Mossy Stone Blocks", CFrame.new(328, 10, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[777] t=1781716541.50
  {"Mossy Stone Blocks", CFrame.new(328, 14, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[778] t=1781716541.73
  {"Mossy Stone Blocks", CFrame.new(328, 14, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[779] t=1781716541.98
  {"Mossy Stone Blocks", CFrame.new(328, 14, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[780] t=1781716542.28
  {"Mossy Stone Blocks", CFrame.new(328, 14, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[781] t=1781716542.69
  {"Mossy Stone Blocks", CFrame.new(328, 14, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[782] t=1781716543.52
  {"Mossy Stone Blocks", CFrame.new(328, 18, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[783] t=1781716543.75
  {"Mossy Stone Blocks", CFrame.new(328, 18, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[784] t=1781716544.00
  {"Mossy Stone Blocks", CFrame.new(328, 18, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[785] t=1781716544.35
  {"Mossy Stone Blocks", CFrame.new(328, 18, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[786] t=1781716544.74
  {"Mossy Stone Blocks", CFrame.new(328, 18, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[787] t=1781716547.32
  {"Mossy Stone Blocks", CFrame.new(316, 6, -156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[788] t=1781716547.54
  {"Mossy Stone Blocks", CFrame.new(316, 6, -152, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[789] t=1781716547.77
  {"Mossy Stone Blocks", CFrame.new(316, 6, -148, 1, 0, 0, 0), workspace.Baseplate},
  --[790] t=1781716549.17
  {"Mossy Stone Blocks", CFrame.new(316, 6, -144, 1, 0, 0, 0), workspace.Baseplate},
  --[791] t=1781716549.37
  {"Mossy Stone Blocks", CFrame.new(316, 6, -140, 1, 0, 0, 0), workspace.Baseplate},
  --[792] t=1781716549.55
  {"Mossy Stone Blocks", CFrame.new(316, 6, -136, 1, 0, 0, 0), workspace.Baseplate},
  --[793] t=1781716549.74
  {"Mossy Stone Blocks", CFrame.new(316, 6, -132, 1, 0, 0, 0), workspace.Baseplate},
  --[794] t=1781716549.92
  {"Mossy Stone Blocks", CFrame.new(316, 6, -128, 1, 0, 0, 0), workspace.Baseplate},
  --[795] t=1781716550.11
  {"Mossy Stone Blocks", CFrame.new(316, 6, -124, 1, 0, 0, 0), workspace.Baseplate},
  --[796] t=1781716550.29
  {"Mossy Stone Blocks", CFrame.new(316, 6, -120, 1, 0, 0, 0), workspace.Baseplate},
  --[797] t=1781716550.49
  {"Mossy Stone Blocks", CFrame.new(316, 6, -116, 1, 0, 0, 0), workspace.Baseplate},
  --[798] t=1781716550.70
  {"Mossy Stone Blocks", CFrame.new(316, 6, -112, 1, 0, 0, 0), workspace.Baseplate},
  --[799] t=1781716550.89
  {"Mossy Stone Blocks", CFrame.new(316, 6, -108, 1, 0, 0, 0), workspace.Baseplate},
  --[800] t=1781716552.35
  {"Mossy Stone Blocks", CFrame.new(316, 6, -104, 1, 0, 0, 0), workspace.Baseplate},
  --[801] t=1781716552.53
  {"Mossy Stone Blocks", CFrame.new(316, 6, -100, 1, 0, 0, 0), workspace.Baseplate},
  --[802] t=1781716552.72
  {"Mossy Stone Blocks", CFrame.new(316, 6, -96, 1, 0, 0, 0), workspace.Baseplate},
  --[803] t=1781716552.91
  {"Mossy Stone Blocks", CFrame.new(316, 6, -92, 1, 0, 0, 0), workspace.Baseplate},
  --[804] t=1781716553.10
  {"Mossy Stone Blocks", CFrame.new(316, 6, -88, 1, 0, 0, 0), workspace.Baseplate},
  --[805] t=1781716553.29
  {"Mossy Stone Blocks", CFrame.new(316, 6, -84, 1, 0, 0, 0), workspace.Baseplate},
  --[806] t=1781716553.50
  {"Mossy Stone Blocks", CFrame.new(316, 6, -80, 1, 0, 0, 0), workspace.Baseplate},
  --[807] t=1781716553.70
  {"Mossy Stone Blocks", CFrame.new(316, 6, -76, 1, 0, 0, 0), workspace.Baseplate},
  --[808] t=1781716554.73
  {"Mossy Stone Blocks", CFrame.new(316, 6, -72, 1, 0, 0, 0), workspace.Baseplate},
  --[809] t=1781716555.91
  {"Mossy Stone Blocks", CFrame.new(316, 6, -68, 1, 0, 0, 0), workspace.Baseplate},
  --[810] t=1781716556.17
  {"Mossy Stone Blocks", CFrame.new(316, 6, -64, 1, 0, 0, 0), workspace.Baseplate},
  --[811] t=1781716556.54
  {"Mossy Stone Blocks", CFrame.new(316, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[812] t=1781716557.78
  {"Mossy Stone Blocks", CFrame.new(316, 10, -156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[813] t=1781716557.96
  {"Mossy Stone Blocks", CFrame.new(316, 10, -152, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[814] t=1781716558.13
  {"Mossy Stone Blocks", CFrame.new(316, 10, -148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[815] t=1781716558.31
  {"Mossy Stone Blocks", CFrame.new(316, 10, -144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[816] t=1781716558.52
  {"Mossy Stone Blocks", CFrame.new(316, 10, -140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[817] t=1781716558.70
  {"Mossy Stone Blocks", CFrame.new(316, 10, -136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[818] t=1781716558.87
  {"Mossy Stone Blocks", CFrame.new(316, 10, -132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[819] t=1781716559.06
  {"Mossy Stone Blocks", CFrame.new(316, 10, -128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[820] t=1781716559.24
  {"Mossy Stone Blocks", CFrame.new(316, 10, -124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[821] t=1781716559.46
  {"Mossy Stone Blocks", CFrame.new(316, 10, -120, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[822] t=1781716559.65
  {"Mossy Stone Blocks", CFrame.new(316, 10, -116, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[823] t=1781716559.82
  {"Mossy Stone Blocks", CFrame.new(316, 10, -112, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[824] t=1781716560.01
  {"Mossy Stone Blocks", CFrame.new(316, 10, -108, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[825] t=1781716560.20
  {"Mossy Stone Blocks", CFrame.new(316, 10, -104, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[826] t=1781716560.39
  {"Mossy Stone Blocks", CFrame.new(316, 10, -100, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[827] t=1781716560.56
  {"Mossy Stone Blocks", CFrame.new(316, 10, -96, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[828] t=1781716560.73
  {"Mossy Stone Blocks", CFrame.new(316, 10, -92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[829] t=1781716560.91
  {"Mossy Stone Blocks", CFrame.new(316, 10, -88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[830] t=1781716561.08
  {"Mossy Stone Blocks", CFrame.new(316, 10, -84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[831] t=1781716561.26
  {"Mossy Stone Blocks", CFrame.new(316, 10, -80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[832] t=1781716561.45
  {"Mossy Stone Blocks", CFrame.new(316, 10, -76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[833] t=1781716563.40
  {"Mossy Stone Blocks", CFrame.new(316, 14, -156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[834] t=1781716563.57
  {"Mossy Stone Blocks", CFrame.new(316, 14, -152, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[835] t=1781716563.74
  {"Mossy Stone Blocks", CFrame.new(316, 14, -148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[836] t=1781716564.01
  {"Mossy Stone Blocks", CFrame.new(316, 14, -144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[837] t=1781716564.22
  {"Mossy Stone Blocks", CFrame.new(316, 14, -140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[838] t=1781716564.41
  {"Mossy Stone Blocks", CFrame.new(316, 14, -136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[839] t=1781716564.63
  {"Mossy Stone Blocks", CFrame.new(316, 14, -132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[840] t=1781716564.85
  {"Mossy Stone Blocks", CFrame.new(316, 14, -128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[841] t=1781716565.08
  {"Mossy Stone Blocks", CFrame.new(316, 14, -124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[842] t=1781716565.30
  {"Mossy Stone Blocks", CFrame.new(316, 14, -120, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[843] t=1781716565.52
  {"Mossy Stone Blocks", CFrame.new(316, 14, -116, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[844] t=1781716565.71
  {"Mossy Stone Blocks", CFrame.new(316, 14, -112, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[845] t=1781716567.49
  {"Mossy Stone Blocks", CFrame.new(316, 18, -156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[846] t=1781716567.69
  {"Mossy Stone Blocks", CFrame.new(316, 18, -152, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[847] t=1781716567.87
  {"Mossy Stone Blocks", CFrame.new(316, 18, -148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[848] t=1781716568.07
  {"Mossy Stone Blocks", CFrame.new(316, 18, -144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[849] t=1781716568.25
  {"Mossy Stone Blocks", CFrame.new(316, 18, -140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[850] t=1781716568.44
  {"Mossy Stone Blocks", CFrame.new(316, 18, -136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[851] t=1781716568.67
  {"Mossy Stone Blocks", CFrame.new(316, 18, -132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[852] t=1781716568.90
  {"Mossy Stone Blocks", CFrame.new(316, 18, -128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[853] t=1781716569.12
  {"Mossy Stone Blocks", CFrame.new(316, 18, -124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[854] t=1781716569.32
  {"Mossy Stone Blocks", CFrame.new(316, 18, -120, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[855] t=1781716569.53
  {"Mossy Stone Blocks", CFrame.new(316, 18, -116, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[856] t=1781716571.36
  {"Mossy Stone Blocks", CFrame.new(316, 14, -108, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[857] t=1781716571.55
  {"Mossy Stone Blocks", CFrame.new(316, 14, -104, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[858] t=1781716571.74
  {"Mossy Stone Blocks", CFrame.new(316, 14, -100, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[859] t=1781716571.94
  {"Mossy Stone Blocks", CFrame.new(316, 14, -96, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[860] t=1781716572.13
  {"Mossy Stone Blocks", CFrame.new(316, 14, -92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[861] t=1781716572.34
  {"Mossy Stone Blocks", CFrame.new(316, 14, -88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[862] t=1781716572.56
  {"Mossy Stone Blocks", CFrame.new(316, 14, -84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[863] t=1781716572.81
  {"Mossy Stone Blocks", CFrame.new(316, 14, -80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[864] t=1781716573.72
  {"Mossy Stone Blocks", CFrame.new(316, 18, -112, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[865] t=1781716573.91
  {"Mossy Stone Blocks", CFrame.new(316, 18, -108, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[866] t=1781716574.08
  {"Mossy Stone Blocks", CFrame.new(316, 18, -104, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[867] t=1781716574.27
  {"Mossy Stone Blocks", CFrame.new(316, 18, -100, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[868] t=1781716574.47
  {"Mossy Stone Blocks", CFrame.new(316, 18, -96, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[869] t=1781716574.68
  {"Mossy Stone Blocks", CFrame.new(316, 18, -92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[870] t=1781716574.89
  {"Mossy Stone Blocks", CFrame.new(316, 18, -88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[871] t=1781716575.09
  {"Mossy Stone Blocks", CFrame.new(316, 18, -84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[872] t=1781716575.56
  {"Mossy Stone Blocks", CFrame.new(316, 18, -80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[873] t=1781716576.24
  {"Mossy Stone Blocks", CFrame.new(316, 14, -76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[874] t=1781716576.44
  {"Mossy Stone Blocks", CFrame.new(316, 18, -76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[875] t=1781716577.14
  {"Mossy Stone Blocks", CFrame.new(316, 10, -72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[876] t=1781716577.36
  {"Mossy Stone Blocks", CFrame.new(316, 10, -68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[877] t=1781716577.62
  {"Mossy Stone Blocks", CFrame.new(316, 10, -64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[878] t=1781716578.26
  {"Mossy Stone Blocks", CFrame.new(316, 14, -72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[879] t=1781716578.47
  {"Mossy Stone Blocks", CFrame.new(316, 14, -68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[880] t=1781716578.69
  {"Mossy Stone Blocks", CFrame.new(316, 14, -64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[881] t=1781716579.07
  {"Mossy Stone Blocks", CFrame.new(316, 18, -72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[882] t=1781716579.26
  {"Mossy Stone Blocks", CFrame.new(316, 18, -68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[883] t=1781716579.44
  {"Mossy Stone Blocks", CFrame.new(316, 18, -64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[884] t=1781716580.06
  {"Mossy Stone Blocks", CFrame.new(316, 10, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[885] t=1781716580.29
  {"Mossy Stone Blocks", CFrame.new(316, 14, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[886] t=1781716581.86
  {"Mossy Stone Blocks", CFrame.new(316, 18, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[887] t=1781716585.31
  {"Mossy Stone Blocks", CFrame.new(300, 6, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[888] t=1781716585.53
  {"Mossy Stone Blocks", CFrame.new(300, 6, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[889] t=1781716585.73
  {"Mossy Stone Blocks", CFrame.new(300, 6, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[890] t=1781716585.94
  {"Mossy Stone Blocks", CFrame.new(300, 6, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[891] t=1781716586.16
  {"Mossy Stone Blocks", CFrame.new(300, 6, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[892] t=1781716586.86
  {"Mossy Stone Blocks", CFrame.new(300, 10, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[893] t=1781716587.07
  {"Mossy Stone Blocks", CFrame.new(300, 10, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[894] t=1781716587.26
  {"Mossy Stone Blocks", CFrame.new(300, 10, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[895] t=1781716587.48
  {"Mossy Stone Blocks", CFrame.new(300, 10, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[896] t=1781716587.75
  {"Mossy Stone Blocks", CFrame.new(300, 10, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[897] t=1781716588.52
  {"Mossy Stone Blocks", CFrame.new(300, 14, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[898] t=1781716588.74
  {"Mossy Stone Blocks", CFrame.new(300, 14, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[899] t=1781716588.96
  {"Mossy Stone Blocks", CFrame.new(300, 14, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[900] t=1781716589.22
  {"Mossy Stone Blocks", CFrame.new(300, 14, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[901] t=1781716589.47
  {"Mossy Stone Blocks", CFrame.new(300, 14, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[902] t=1781716590.23
  {"Mossy Stone Blocks", CFrame.new(300, 18, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[903] t=1781716590.43
  {"Mossy Stone Blocks", CFrame.new(300, 18, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[904] t=1781716590.63
  {"Mossy Stone Blocks", CFrame.new(300, 18, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[905] t=1781716590.84
  {"Mossy Stone Blocks", CFrame.new(300, 18, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[906] t=1781716591.07
  {"Mossy Stone Blocks", CFrame.new(300, 18, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[907] t=1781716592.40
  {"Mossy Stone Blocks", CFrame.new(304, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[908] t=1781716592.61
  {"Mossy Stone Blocks", CFrame.new(308, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[909] t=1781716592.80
  {"Mossy Stone Blocks", CFrame.new(312, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[910] t=1781716593.00
  {"Mossy Stone Blocks", CFrame.new(316, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[911] t=1781716593.22
  {"Mossy Stone Blocks", CFrame.new(320, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[912] t=1781716593.61
  {"Mossy Stone Blocks", CFrame.new(324, 6, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[913] t=1781716594.27
  {"Mossy Stone Blocks", CFrame.new(304, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[914] t=1781716594.47
  {"Mossy Stone Blocks", CFrame.new(308, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[915] t=1781716594.68
  {"Mossy Stone Blocks", CFrame.new(312, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[916] t=1781716594.90
  {"Mossy Stone Blocks", CFrame.new(316, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[917] t=1781716595.11
  {"Mossy Stone Blocks", CFrame.new(320, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[918] t=1781716595.54
  {"Mossy Stone Blocks", CFrame.new(324, 10, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[919] t=1781716596.28
  {"Mossy Stone Blocks", CFrame.new(304, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[920] t=1781716596.49
  {"Mossy Stone Blocks", CFrame.new(308, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[921] t=1781716596.70
  {"Mossy Stone Blocks", CFrame.new(312, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[922] t=1781716596.90
  {"Mossy Stone Blocks", CFrame.new(316, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[923] t=1781716597.20
  {"Mossy Stone Blocks", CFrame.new(320, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[924] t=1781716597.56
  {"Mossy Stone Blocks", CFrame.new(324, 14, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[925] t=1781716598.30
  {"Mossy Stone Blocks", CFrame.new(304, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[926] t=1781716598.51
  {"Mossy Stone Blocks", CFrame.new(308, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[927] t=1781716598.72
  {"Mossy Stone Blocks", CFrame.new(312, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[928] t=1781716598.92
  {"Mossy Stone Blocks", CFrame.new(316, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[929] t=1781716599.16
  {"Mossy Stone Blocks", CFrame.new(320, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[930] t=1781716599.51
  {"Mossy Stone Blocks", CFrame.new(324, 18, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[931] t=1781716600.78
  {"Mossy Stone Blocks", CFrame.new(328, 6, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[932] t=1781716600.98
  {"Mossy Stone Blocks", CFrame.new(328, 6, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[933] t=1781716601.22
  {"Mossy Stone Blocks", CFrame.new(328, 6, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[934] t=1781716601.46
  {"Mossy Stone Blocks", CFrame.new(328, 6, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[935] t=1781716601.75
  {"Mossy Stone Blocks", CFrame.new(328, 6, -40, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[936] t=1781716602.32
  {"Mossy Stone Blocks", CFrame.new(328, 10, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[937] t=1781716602.53
  {"Mossy Stone Blocks", CFrame.new(328, 10, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[938] t=1781716602.77
  {"Mossy Stone Blocks", CFrame.new(328, 10, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[939] t=1781716603.07
  {"Mossy Stone Blocks", CFrame.new(328, 10, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[940] t=1781716603.33
  {"Mossy Stone Blocks", CFrame.new(328, 10, -40, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[941] t=1781716604.05
  {"Mossy Stone Blocks", CFrame.new(328, 14, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[942] t=1781716604.43
  {"Mossy Stone Blocks", CFrame.new(328, 14, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[943] t=1781716604.70
  {"Mossy Stone Blocks", CFrame.new(328, 14, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[944] t=1781716604.96
  {"Mossy Stone Blocks", CFrame.new(328, 14, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[945] t=1781716605.29
  {"Mossy Stone Blocks", CFrame.new(328, 14, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[946] t=1781716606.69
  {"Mossy Stone Blocks", CFrame.new(328, 18, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[947] t=1781716606.93
  {"Mossy Stone Blocks", CFrame.new(328, 18, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[948] t=1781716607.19
  {"Mossy Stone Blocks", CFrame.new(328, 18, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[949] t=1781716607.46
  {"Mossy Stone Blocks", CFrame.new(328, 18, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[950] t=1781716607.76
  {"Mossy Stone Blocks", CFrame.new(328, 18, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[951] t=1781716608.42
  {"Mossy Stone Blocks", CFrame.new(320, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[952] t=1781716608.64
  {"Mossy Stone Blocks", CFrame.new(324, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[953] t=1781716608.92
  {"Mossy Stone Blocks", CFrame.new(320, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[954] t=1781716609.13
  {"Mossy Stone Blocks", CFrame.new(324, 10, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[955] t=1781716609.40
  {"Mossy Stone Blocks", CFrame.new(320, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[956] t=1781716609.60
  {"Mossy Stone Blocks", CFrame.new(324, 14, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[957] t=1781716609.91
  {"Mossy Stone Blocks", CFrame.new(320, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[958] t=1781716610.11
  {"Mossy Stone Blocks", CFrame.new(324, 18, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[959] t=1781716613.28
  {"Mossy Stone Blocks", CFrame.new(312, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[960] t=1781716613.48
  {"Mossy Stone Blocks", CFrame.new(308, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[961] t=1781716613.96
  {"Mossy Stone Blocks", CFrame.new(312, 10, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[962] t=1781716614.13
  {"Mossy Stone Blocks", CFrame.new(308, 10, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[963] t=1781716614.39
  {"Mossy Stone Blocks", CFrame.new(312, 14, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[964] t=1781716614.59
  {"Mossy Stone Blocks", CFrame.new(308, 14, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[965] t=1781716614.94
  {"Mossy Stone Blocks", CFrame.new(312, 18, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[966] t=1781716615.12
  {"Mossy Stone Blocks", CFrame.new(308, 18, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[967] t=1781716615.85
  {"Mossy Stone Blocks", CFrame.new(304, 6, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[968] t=1781716616.07
  {"Mossy Stone Blocks", CFrame.new(304, 10, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[969] t=1781716616.30
  {"Mossy Stone Blocks", CFrame.new(304, 14, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[970] t=1781716616.55
  {"Mossy Stone Blocks", CFrame.new(304, 18, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[971] t=1781716620.57
  {"Mossy Stone Blocks", CFrame.new(300, 22, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[972] t=1781716620.80
  {"Mossy Stone Blocks", CFrame.new(300, 22, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[973] t=1781716621.04
  {"Mossy Stone Blocks", CFrame.new(300, 22, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[974] t=1781716621.29
  {"Mossy Stone Blocks", CFrame.new(300, 22, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[975] t=1781716621.57
  {"Mossy Stone Blocks", CFrame.new(300, 22, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[976] t=1781716621.88
  {"Mossy Stone Blocks", CFrame.new(300, 26, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[977] t=1781716622.11
  {"Mossy Stone Blocks", CFrame.new(300, 26, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[978] t=1781716622.56
  {"Mossy Stone Blocks", CFrame.new(300, 26, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[979] t=1781716623.07
  {"Mossy Stone Blocks", CFrame.new(300, 26, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[980] t=1781716623.28
  {"Mossy Stone Blocks", CFrame.new(300, 26, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[981] t=1781716627.22
  {"Mossy Stone Blocks", CFrame.new(324, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[982] t=1781716627.41
  {"Mossy Stone Blocks", CFrame.new(320, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[983] t=1781716627.62
  {"Mossy Stone Blocks", CFrame.new(316, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[984] t=1781716627.81
  {"Mossy Stone Blocks", CFrame.new(312, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[985] t=1781716628.04
  {"Mossy Stone Blocks", CFrame.new(308, 22, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[986] t=1781716628.20
  {"Mossy Stone Blocks", CFrame.new(308, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[987] t=1781716628.56
  {"Mossy Stone Blocks", CFrame.new(304, 22, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[988] t=1781716629.41
  {"Mossy Stone Blocks", CFrame.new(324, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[989] t=1781716629.60
  {"Mossy Stone Blocks", CFrame.new(320, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[990] t=1781716629.87
  {"Mossy Stone Blocks", CFrame.new(316, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[991] t=1781716630.28
  {"Mossy Stone Blocks", CFrame.new(312, 26, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[992] t=1781716631.13
  {"Mossy Stone Blocks", CFrame.new(304, 26, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[993] t=1781716633.08
  {"Mossy Stone Blocks", CFrame.new(328, 22, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[994] t=1781716633.56
  {"Mossy Stone Blocks", CFrame.new(328, 22, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[995] t=1781716634.07
  {"Mossy Stone Blocks", CFrame.new(328, 22, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[996] t=1781716634.43
  {"Mossy Stone Blocks", CFrame.new(328, 22, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[997] t=1781716634.85
  {"Mossy Stone Blocks", CFrame.new(328, 26, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[998] t=1781716635.23
  {"Mossy Stone Blocks", CFrame.new(328, 26, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[999] t=1781716635.53
  {"Mossy Stone Blocks", CFrame.new(328, 26, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[1000] t=1781716635.91
  {"Mossy Stone Blocks", CFrame.new(328, 26, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[1001] t=1781716641.85
  {"Mossy Stone Blocks", CFrame.new(324, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1002] t=1781716642.21
  {"Mossy Stone Blocks", CFrame.new(320, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1003] t=1781716642.48
  {"Mossy Stone Blocks", CFrame.new(316, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1004] t=1781716642.77
  {"Mossy Stone Blocks", CFrame.new(312, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1005] t=1781716643.14
  {"Mossy Stone Blocks", CFrame.new(308, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1006] t=1781716643.49
  {"Mossy Stone Blocks", CFrame.new(304, 22, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1007] t=1781716644.38
  {"Mossy Stone Blocks", CFrame.new(324, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1008] t=1781716644.68
  {"Mossy Stone Blocks", CFrame.new(320, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1009] t=1781716644.95
  {"Mossy Stone Blocks", CFrame.new(316, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1010] t=1781716645.21
  {"Mossy Stone Blocks", CFrame.new(312, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1011] t=1781716645.55
  {"Mossy Stone Blocks", CFrame.new(308, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1012] t=1781716645.92
  {"Mossy Stone Blocks", CFrame.new(304, 26, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1013] t=1781716650.82
  {"Mossy Stone Blocks", CFrame.new(328, 22, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[1014] t=1781716653.85
  {"Mossy Stone Blocks", CFrame.new(328, 26, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[1015] t=1781716657.71
  {"Mossy Stone Blocks", CFrame.new(324, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1016] t=1781716657.92
  {"Mossy Stone Blocks", CFrame.new(320, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1017] t=1781716658.33
  {"Mossy Stone Blocks", CFrame.new(324, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1018] t=1781716658.53
  {"Mossy Stone Blocks", CFrame.new(320, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1019] t=1781716660.25
  {"Mossy Stone Blocks", CFrame.new(316, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1020] t=1781716660.49
  {"Mossy Stone Blocks", CFrame.new(316, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1021] t=1781716660.78
  {"Mossy Stone Blocks", CFrame.new(312, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1022] t=1781716660.99
  {"Mossy Stone Blocks", CFrame.new(312, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1023] t=1781716661.53
  {"Mossy Stone Blocks", CFrame.new(308, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1024] t=1781716661.73
  {"Mossy Stone Blocks", CFrame.new(308, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1025] t=1781716662.23
  {"Mossy Stone Blocks", CFrame.new(304, 22, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1026] t=1781716663.71
  {"Mossy Stone Blocks", CFrame.new(304, 26, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1027] t=1781716665.17
  {"Mossy Stone Blocks", CFrame.new(300, 22, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1028] t=1781716665.39
  {"Mossy Stone Blocks", CFrame.new(300, 26, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1029] t=1781716665.89
  {"Mossy Stone Blocks", CFrame.new(300, 22, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1030] t=1781716666.23
  {"Mossy Stone Blocks", CFrame.new(300, 26, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1031] t=1781716666.96
  {"Mossy Stone Blocks", CFrame.new(300, 22, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1032] t=1781716667.19
  {"Mossy Stone Blocks", CFrame.new(300, 22, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1033] t=1781716667.51
  {"Mossy Stone Blocks", CFrame.new(300, 22, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1034] t=1781716667.93
  {"Mossy Stone Blocks", CFrame.new(300, 26, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1035] t=1781716668.17
  {"Mossy Stone Blocks", CFrame.new(300, 26, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1036] t=1781716668.48
  {"Mossy Stone Blocks", CFrame.new(300, 26, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1037] t=1781716671.92
  {"Mossy Stone Blocks", CFrame.new(324, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1038] t=1781716672.18
  {"Mossy Stone Blocks", CFrame.new(320, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1039] t=1781716672.45
  {"Mossy Stone Blocks", CFrame.new(316, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1040] t=1781716672.74
  {"Mossy Stone Blocks", CFrame.new(312, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1041] t=1781716673.06
  {"Mossy Stone Blocks", CFrame.new(308, 22, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1042] t=1781716673.48
  {"Mossy Stone Blocks", CFrame.new(304, 22, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1043] t=1781716674.04
  {"Mossy Stone Blocks", CFrame.new(324, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1044] t=1781716674.27
  {"Mossy Stone Blocks", CFrame.new(320, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1045] t=1781716674.57
  {"Mossy Stone Blocks", CFrame.new(316, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1046] t=1781716674.84
  {"Mossy Stone Blocks", CFrame.new(312, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1047] t=1781716675.12
  {"Mossy Stone Blocks", CFrame.new(308, 26, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1048] t=1781716675.62
  {"Mossy Stone Blocks", CFrame.new(304, 26, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1049] t=1781716677.52
  {"Mossy Stone Blocks", CFrame.new(328, 22, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[1050] t=1781716677.75
  {"Mossy Stone Blocks", CFrame.new(328, 22, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[1051] t=1781716677.97
  {"Mossy Stone Blocks", CFrame.new(328, 22, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[1052] t=1781716678.23
  {"Mossy Stone Blocks", CFrame.new(328, 22, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[1053] t=1781716678.59
  {"Mossy Stone Blocks", CFrame.new(328, 22, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[1054] t=1781716679.11
  {"Mossy Stone Blocks", CFrame.new(328, 26, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[1055] t=1781716679.34
  {"Mossy Stone Blocks", CFrame.new(328, 26, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[1056] t=1781716679.56
  {"Mossy Stone Blocks", CFrame.new(328, 26, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[1057] t=1781716679.83
  {"Mossy Stone Blocks", CFrame.new(328, 26, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[1058] t=1781716680.19
  {"Mossy Stone Blocks", CFrame.new(328, 26, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[1059] t=1781716685.10
  {"Mossy Stone Blocks", CFrame.new(300, 30, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1060] t=1781716685.36
  {"Mossy Stone Blocks", CFrame.new(300, 30, -168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1061] t=1781716685.66
  {"Mossy Stone Blocks", CFrame.new(300, 30, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1062] t=1781716686.06
  {"Mossy Stone Blocks", CFrame.new(300, 30, -176, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1063] t=1781716688.27
  {"Mossy Stone Blocks", CFrame.new(300, 30, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1064] t=1781716690.53
  {"Mossy Stone Blocks", CFrame.new(328, 30, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[1065] t=1781716690.78
  {"Mossy Stone Blocks", CFrame.new(328, 30, -168, 1, 0, 0, 0), workspace.Baseplate},
  --[1066] t=1781716691.11
  {"Mossy Stone Blocks", CFrame.new(328, 30, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[1067] t=1781716691.45
  {"Mossy Stone Blocks", CFrame.new(328, 30, -176, 1, 0, 0, 0), workspace.Baseplate},
  --[1068] t=1781716691.84
  {"Mossy Stone Blocks", CFrame.new(328, 30, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[1069] t=1781716695.22
  {"Mossy Stone Blocks", CFrame.new(324, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1070] t=1781716695.46
  {"Mossy Stone Blocks", CFrame.new(320, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1071] t=1781716695.76
  {"Mossy Stone Blocks", CFrame.new(316, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1072] t=1781716696.04
  {"Mossy Stone Blocks", CFrame.new(312, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1073] t=1781716696.33
  {"Mossy Stone Blocks", CFrame.new(308, 30, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1074] t=1781716699.78
  {"Mossy Stone Blocks", CFrame.new(308, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1075] t=1781716700.11
  {"Mossy Stone Blocks", CFrame.new(312, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1076] t=1781716700.37
  {"Mossy Stone Blocks", CFrame.new(316, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1077] t=1781716700.68
  {"Mossy Stone Blocks", CFrame.new(320, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1078] t=1781716701.02
  {"Mossy Stone Blocks", CFrame.new(324, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1079] t=1781716705.66
  {"Mossy Stone Blocks", CFrame.new(304, 30, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1080] t=1781716706.28
  {"Mossy Stone Blocks", CFrame.new(304, 30, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1081] t=1781716706.84
  {"Mossy Stone Blocks", CFrame.new(300, 34, -180, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1082] t=1781716707.39
  {"Mossy Stone Blocks", CFrame.new(300, 34, -172, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1083] t=1781716707.84
  {"Mossy Stone Blocks", CFrame.new(300, 34, -164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1084] t=1781716708.58
  {"Mossy Stone Blocks", CFrame.new(304, 34, -184, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1085] t=1781716709.27
  {"Mossy Stone Blocks", CFrame.new(304, 34, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1086] t=1781716710.72
  {"Mossy Stone Blocks", CFrame.new(312, 34, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1087] t=1781716711.25
  {"Mossy Stone Blocks", CFrame.new(320, 34, -184, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[1088] t=1781716711.73
  {"Mossy Stone Blocks", CFrame.new(328, 34, -180, 1, 0, 0, 0), workspace.Baseplate},
  --[1089] t=1781716712.21
  {"Mossy Stone Blocks", CFrame.new(328, 34, -172, 1, 0, 0, 0), workspace.Baseplate},
  --[1090] t=1781716712.66
  {"Mossy Stone Blocks", CFrame.new(328, 34, -164, 1, 0, 0, 0), workspace.Baseplate},
  --[1091] t=1781716713.30
  {"Mossy Stone Blocks", CFrame.new(324, 34, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1092] t=1781716715.24
  {"Mossy Stone Blocks", CFrame.new(316, 34, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1093] t=1781716726.33
  {"Mossy Stone Blocks", CFrame.new(312, 34, -160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1094] t=1781716731.18
  {"Mossy Stone Blocks", CFrame.new(316, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1095] t=1781716731.42
  {"Mossy Stone Blocks", CFrame.new(312, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1096] t=1781716731.84
  {"Mossy Stone Blocks", CFrame.new(304, 30, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1097] t=1781716732.09
  {"Mossy Stone Blocks", CFrame.new(308, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1098] t=1781716732.69
  {"Mossy Stone Blocks", CFrame.new(324, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1099] t=1781716732.90
  {"Mossy Stone Blocks", CFrame.new(320, 30, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1100] t=1781716734.25
  {"Mossy Stone Blocks", CFrame.new(328, 30, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[1101] t=1781716734.78
  {"Mossy Stone Blocks", CFrame.new(328, 30, -44, 1, 0, 0, 0), workspace.Baseplate},
  --[1102] t=1781716735.01
  {"Mossy Stone Blocks", CFrame.new(328, 30, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[1103] t=1781716735.25
  {"Mossy Stone Blocks", CFrame.new(328, 30, -52, 1, 0, 0, 0), workspace.Baseplate},
  --[1104] t=1781716735.68
  {"Mossy Stone Blocks", CFrame.new(328, 30, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[1105] t=1781716736.68
  {"Mossy Stone Blocks", CFrame.new(324, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1106] t=1781716737.08
  {"Mossy Stone Blocks", CFrame.new(320, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1107] t=1781716737.38
  {"Mossy Stone Blocks", CFrame.new(316, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1108] t=1781716737.75
  {"Mossy Stone Blocks", CFrame.new(312, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1109] t=1781716738.08
  {"Mossy Stone Blocks", CFrame.new(308, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1110] t=1781716739.13
  {"Mossy Stone Blocks", CFrame.new(300, 30, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1111] t=1781716739.47
  {"Mossy Stone Blocks", CFrame.new(300, 30, -44, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1112] t=1781716739.80
  {"Mossy Stone Blocks", CFrame.new(300, 30, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1113] t=1781716740.13
  {"Mossy Stone Blocks", CFrame.new(300, 30, -52, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1114] t=1781716740.54
  {"Mossy Stone Blocks", CFrame.new(300, 30, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1115] t=1781716742.04
  {"Mossy Stone Blocks", CFrame.new(300, 34, -40, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1116] t=1781716742.63
  {"Mossy Stone Blocks", CFrame.new(300, 34, -48, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1117] t=1781716743.16
  {"Mossy Stone Blocks", CFrame.new(300, 34, -56, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[1118] t=1781716743.72
  {"Mossy Stone Blocks", CFrame.new(304, 34, -60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[1119] t=1781716744.40
  {"Mossy Stone Blocks", CFrame.new(312, 34, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1120] t=1781716744.65
  {"Mossy Stone Blocks", CFrame.new(316, 34, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1121] t=1781716745.18
  {"Mossy Stone Blocks", CFrame.new(324, 34, -60, 1, 0, 0, 0), workspace.Baseplate},
  --[1122] t=1781716745.80
  {"Mossy Stone Blocks", CFrame.new(328, 34, -40, 1, 0, 0, 0), workspace.Baseplate},
  --[1123] t=1781716746.46
  {"Mossy Stone Blocks", CFrame.new(328, 34, -48, 1, 0, 0, 0), workspace.Baseplate},
  --[1124] t=1781716747.20
  {"Mossy Stone Blocks", CFrame.new(328, 34, -56, 1, 0, 0, 0), workspace.Baseplate},
  --[1125] t=1781716749.35
  {"Mossy Stone Blocks", CFrame.new(316, 34, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1126] t=1781716754.94
  {"Mossy Stone Blocks", CFrame.new(304, 30, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1127] t=1781716755.27
  {"Mossy Stone Blocks", CFrame.new(304, 34, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1128] t=1781716755.81
  {"Mossy Stone Blocks", CFrame.new(312, 34, -36, 1, 0, 0, 0), workspace.Baseplate},
  --[1129] t=1781716756.41
  {"Mossy Stone Blocks", CFrame.new(324, 34, -36, 1, 0, 0, 0), workspace.Baseplate},
}

local coolpattern = {
  --[1] t=1781716976.47
  {"Bricks", CFrame.new(152, 2, 136, 0, 0, 1, 0), workspace.Baseplate},
  --[2] t=1781716976.80
  {"Bricks", CFrame.new(152, 2, 140, 0, 0, 1, 0), workspace.Baseplate},
  --[3] t=1781716977.11
  {"Bricks", CFrame.new(152, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[4] t=1781716977.62
  {"Bricks", CFrame.new(152, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[5] t=1781716978.37
  {"Bricks", CFrame.new(156, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[6] t=1781716979.01
  {"Bricks", CFrame.new(164, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[7] t=1781716979.55
  {"Bricks", CFrame.new(160, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[8] t=1781716981.55
  {"Bricks", CFrame.new(168, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[9] t=1781716982.14
  {"Bricks", CFrame.new(172, 2, 148, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[10] t=1781716982.50
  {"Bricks", CFrame.new(172, 2, 144, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[11] t=1781716983.47
  {"Bricks", CFrame.new(172, 2, 140, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[12] t=1781716983.70
  {"Bricks", CFrame.new(172, 2, 136, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[13] t=1781716984.35
  {"Bricks", CFrame.new(156, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[14] t=1781716984.63
  {"Bricks", CFrame.new(160, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[15] t=1781716984.93
  {"Bricks", CFrame.new(164, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[16] t=1781716985.29
  {"Bricks", CFrame.new(168, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[17] t=1781716988.75
  {"Bricks", CFrame.new(172, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[18] t=1781716989.41
  {"Bricks", CFrame.new(152, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[19] t=1781716990.55
  {"Bricks", CFrame.new(152, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[20] t=1781716990.82
  {"Bricks", CFrame.new(152, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[21] t=1781716991.25
  {"Bricks", CFrame.new(152, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[22] t=1781716992.03
  {"Bricks", CFrame.new(172, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[23] t=1781716992.31
  {"Bricks", CFrame.new(172, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[24] t=1781716992.62
  {"Bricks", CFrame.new(172, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[25] t=1781716993.25
  {"Bricks", CFrame.new(156, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[26] t=1781716993.52
  {"Bricks", CFrame.new(160, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[27] t=1781716993.82
  {"Bricks", CFrame.new(164, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[28] t=1781716994.12
  {"Bricks", CFrame.new(168, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[29] t=1781716994.95
  {"Bricks", CFrame.new(172, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[30] t=1781716995.62
  {"Bricks", CFrame.new(172, 2, 180, 0, 0, 1, 0), workspace.Baseplate},
  --[31] t=1781716995.88
  {"Bricks", CFrame.new(172, 2, 184, 0, 0, 1, 0), workspace.Baseplate},
  --[32] t=1781716996.22
  {"Bricks", CFrame.new(172, 2, 188, 0, 0, 1, 0), workspace.Baseplate},
  --[33] t=1781716996.83
  {"Bricks", CFrame.new(152, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[34] t=1781716997.06
  {"Bricks", CFrame.new(152, 2, 180, 0, 0, 1, 0), workspace.Baseplate},
  --[35] t=1781716997.31
  {"Bricks", CFrame.new(152, 2, 184, 0, 0, 1, 0), workspace.Baseplate},
  --[36] t=1781716997.67
  {"Bricks", CFrame.new(152, 2, 188, 0, 0, 1, 0), workspace.Baseplate},
  --[37] t=1781716998.40
  {"Bricks", CFrame.new(156, 2, 192, 0, 0, 1, 0), workspace.Baseplate},
  --[38] t=1781716998.67
  {"Bricks", CFrame.new(160, 2, 192, 0, 0, 1, 0), workspace.Baseplate},
  --[39] t=1781716999.03
  {"Bricks", CFrame.new(164, 2, 192, 0, 0, 1, 0), workspace.Baseplate},
  --[40] t=1781716999.39
  {"Bricks", CFrame.new(168, 2, 192, 0, 0, 1, 0), workspace.Baseplate},
  --[41] t=1781717001.44
  {"Bricks", CFrame.new(176, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[42] t=1781717001.87
  {"Bricks", CFrame.new(180, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[43] t=1781717002.21
  {"Bricks", CFrame.new(184, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[44] t=1781717002.59
  {"Bricks", CFrame.new(188, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[45] t=1781717003.66
  {"Bricks", CFrame.new(176, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[46] t=1781717003.90
  {"Bricks", CFrame.new(180, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[47] t=1781717004.20
  {"Bricks", CFrame.new(184, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[48] t=1781717004.58
  {"Bricks", CFrame.new(188, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[49] t=1781717005.54
  {"Bricks", CFrame.new(176, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[50] t=1781717005.76
  {"Bricks", CFrame.new(180, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[51] t=1781717005.99
  {"Bricks", CFrame.new(184, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[52] t=1781717006.46
  {"Bricks", CFrame.new(188, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[53] t=1781717009.11
  {"Bricks", CFrame.new(176, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[54] t=1781717009.35
  {"Bricks", CFrame.new(180, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[55] t=1781717009.60
  {"Bricks", CFrame.new(184, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[56] t=1781717009.96
  {"Bricks", CFrame.new(188, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[57] t=1781717010.73
  {"Bricks", CFrame.new(192, 2, 188, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[58] t=1781717011.02
  {"Bricks", CFrame.new(192, 2, 184, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[59] t=1781717011.37
  {"Bricks", CFrame.new(192, 2, 180, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[60] t=1781717011.70
  {"Bricks", CFrame.new(192, 2, 176, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[61] t=1781717012.41
  {"Bricks", CFrame.new(192, 2, 168, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[62] t=1781717012.69
  {"Bricks", CFrame.new(192, 2, 164, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[63] t=1781717013.41
  {"Bricks", CFrame.new(192, 2, 160, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[64] t=1781717013.73
  {"Bricks", CFrame.new(192, 2, 156, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[65] t=1781717014.52
  {"Bricks", CFrame.new(192, 2, 148, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[66] t=1781717014.74
  {"Bricks", CFrame.new(192, 2, 144, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[67] t=1781717015.09
  {"Bricks", CFrame.new(192, 2, 140, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[68] t=1781717015.42
  {"Bricks", CFrame.new(192, 2, 136, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[69] t=1781717017.07
  {"Bricks", CFrame.new(196, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[70] t=1781717017.32
  {"Bricks", CFrame.new(200, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[71] t=1781717017.61
  {"Bricks", CFrame.new(204, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[72] t=1781717018.00
  {"Bricks", CFrame.new(208, 2, 152, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[73] t=1781717018.85
  {"Bricks", CFrame.new(196, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[74] t=1781717019.08
  {"Bricks", CFrame.new(200, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[75] t=1781717019.29
  {"Bricks", CFrame.new(204, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[76] t=1781717019.55
  {"Bricks", CFrame.new(208, 2, 132, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[77] t=1781717020.69
  {"Bricks", CFrame.new(196, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[78] t=1781717020.89
  {"Bricks", CFrame.new(200, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[79] t=1781717021.10
  {"Bricks", CFrame.new(204, 2, 172, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[80] t=1781717021.32
  {"Bricks", CFrame.new(208, 2, 172, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[81] t=1781717022.36
  {"Bricks", CFrame.new(196, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[82] t=1781717022.57
  {"Bricks", CFrame.new(204, 2, 192, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[83] t=1781717022.80
  {"Bricks", CFrame.new(208, 2, 192, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[84] t=1781717023.63
  {"Bricks", CFrame.new(200, 2, 192, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[85] t=1781717024.57
  {"Bricks", CFrame.new(212, 2, 188, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[86] t=1781717024.82
  {"Bricks", CFrame.new(212, 2, 184, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[87] t=1781717025.12
  {"Bricks", CFrame.new(212, 2, 180, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[88] t=1781717025.45
  {"Bricks", CFrame.new(216, 2, 180, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[89] t=1781717026.05
  {"Bricks", CFrame.new(212, 2, 176, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[90] t=1781717026.83
  {"Bricks", CFrame.new(212, 2, 168, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[91] t=1781717027.46
  {"Bricks", CFrame.new(212, 2, 164, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[92] t=1781717027.95
  {"Bricks", CFrame.new(212, 2, 160, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[93] t=1781717028.51
  {"Bricks", CFrame.new(212, 2, 156, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[94] t=1781717029.11
  {"Bricks", CFrame.new(212, 2, 148, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[95] t=1781717029.81
  {"Bricks", CFrame.new(212, 2, 144, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[96] t=1781717030.12
  {"Bricks", CFrame.new(212, 2, 140, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[97] t=1781717030.51
  {"Bricks", CFrame.new(212, 2, 136, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[98] t=1781717037.22
  {"Bricks", CFrame.new(216, 2, 184, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[99] t=1781717037.57
  {"Bricks", CFrame.new(216, 2, 188, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[100] t=1781717039.10
  {"Bricks", CFrame.new(216, 2, 176, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[101] t=1781717040.08
  {"Bricks", CFrame.new(196, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[102] t=1781717040.34
  {"Bricks", CFrame.new(200, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[103] t=1781717040.66
  {"Bricks", CFrame.new(204, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[104] t=1781717041.18
  {"Bricks", CFrame.new(208, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[105] t=1781717042.15
  {"Bricks", CFrame.new(176, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[106] t=1781717042.41
  {"Bricks", CFrame.new(180, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[107] t=1781717042.71
  {"Bricks", CFrame.new(184, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[108] t=1781717043.08
  {"Bricks", CFrame.new(188, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[109] t=1781717044.04
  {"Bricks", CFrame.new(156, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[110] t=1781717044.29
  {"Bricks", CFrame.new(160, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[111] t=1781717044.57
  {"Bricks", CFrame.new(164, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[112] t=1781717044.92
  {"Bricks", CFrame.new(168, 2, 196, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[113] t=1781717046.59
  {"Bricks", CFrame.new(148, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[114] t=1781717046.87
  {"Bricks", CFrame.new(148, 2, 180, 0, 0, 1, 0), workspace.Baseplate},
  --[115] t=1781717047.31
  {"Bricks", CFrame.new(148, 2, 184, 0, 0, 1, 0), workspace.Baseplate},
  --[116] t=1781717047.68
  {"Bricks", CFrame.new(148, 2, 188, 0, 0, 1, 0), workspace.Baseplate},
  --[117] t=1781717048.68
  {"Bricks", CFrame.new(148, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[118] t=1781717048.99
  {"Bricks", CFrame.new(148, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[119] t=1781717049.25
  {"Bricks", CFrame.new(148, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[120] t=1781717049.64
  {"Bricks", CFrame.new(148, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[121] t=1781717050.48
  {"Bricks", CFrame.new(148, 2, 136, 0, 0, 1, 0), workspace.Baseplate},
  --[122] t=1781717050.72
  {"Bricks", CFrame.new(148, 2, 140, 0, 0, 1, 0), workspace.Baseplate},
  --[123] t=1781717051.00
  {"Bricks", CFrame.new(148, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[124] t=1781717051.34
  {"Bricks", CFrame.new(148, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[125] t=1781717053.31
  {"Bricks", CFrame.new(168, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[126] t=1781717053.56
  {"Bricks", CFrame.new(164, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[127] t=1781717053.81
  {"Bricks", CFrame.new(160, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[128] t=1781717054.17
  {"Bricks", CFrame.new(156, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[129] t=1781717054.94
  {"Bricks", CFrame.new(188, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[130] t=1781717055.19
  {"Bricks", CFrame.new(184, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[131] t=1781717055.49
  {"Bricks", CFrame.new(180, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[132] t=1781717055.78
  {"Bricks", CFrame.new(176, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[133] t=1781717056.65
  {"Bricks", CFrame.new(208, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[134] t=1781717056.86
  {"Bricks", CFrame.new(204, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[135] t=1781717057.10
  {"Bricks", CFrame.new(200, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[136] t=1781717057.43
  {"Bricks", CFrame.new(196, 2, 128, 1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[137] t=1781717060.30
  {"Bricks", CFrame.new(216, 2, 148, -8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[138] t=1781717061.68
  {"Bricks", CFrame.new(216, 2, 144, -8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[139] t=1781717062.02
  {"Bricks", CFrame.new(216, 2, 140, -8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[140] t=1781717062.58
  {"Bricks", CFrame.new(216, 2, 136, -8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[141] t=1781717067.13
  {"Bricks", CFrame.new(216, 2, 168, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[142] t=1781717067.46
  {"Bricks", CFrame.new(216, 2, 164, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[143] t=1781717067.75
  {"Bricks", CFrame.new(216, 2, 160, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[144] t=1781717068.23
  {"Bricks", CFrame.new(216, 2, 156, 8.742277657347586e-08, 0, -1, 0), workspace.Baseplate},
  --[145] t=1781717076.37
  {"Magenta Wool", CFrame.new(196, 2, 148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[146] t=1781717076.79
  {"Magenta Wool", CFrame.new(196, 2, 144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[147] t=1781717077.19
  {"Magenta Wool", CFrame.new(196, 2, 140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[148] t=1781717077.56
  {"Magenta Wool", CFrame.new(196, 2, 136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[149] t=1781717077.89
  {"Magenta Wool", CFrame.new(200, 2, 136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[150] t=1781717078.23
  {"Magenta Wool", CFrame.new(204, 2, 136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[151] t=1781717078.61
  {"Magenta Wool", CFrame.new(208, 2, 136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[152] t=1781717079.03
  {"Magenta Wool", CFrame.new(208, 2, 140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[153] t=1781717079.29
  {"Magenta Wool", CFrame.new(208, 2, 144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[154] t=1781717079.64
  {"Magenta Wool", CFrame.new(208, 2, 148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[155] t=1781717080.41
  {"Magenta Wool", CFrame.new(200, 2, 148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[156] t=1781717080.83
  {"Magenta Wool", CFrame.new(204, 2, 148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[157] t=1781717082.24
  {"Magenta Wool", CFrame.new(196, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[158] t=1781717082.53
  {"Magenta Wool", CFrame.new(196, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[159] t=1781717082.82
  {"Magenta Wool", CFrame.new(196, 2, 160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[160] t=1781717083.11
  {"Magenta Wool", CFrame.new(196, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[161] t=1781717083.91
  {"Magenta Wool", CFrame.new(200, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[162] t=1781717084.32
  {"Magenta Wool", CFrame.new(204, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[163] t=1781717084.60
  {"Magenta Wool", CFrame.new(208, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[164] t=1781717085.07
  {"Magenta Wool", CFrame.new(208, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[165] t=1781717085.42
  {"Magenta Wool", CFrame.new(208, 2, 160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[166] t=1781717085.68
  {"Magenta Wool", CFrame.new(208, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[167] t=1781717086.20
  {"Magenta Wool", CFrame.new(200, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[168] t=1781717086.45
  {"Magenta Wool", CFrame.new(204, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[169] t=1781717088.27
  {"Magenta Wool", CFrame.new(196, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[170] t=1781717088.48
  {"Magenta Wool", CFrame.new(196, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[171] t=1781717088.72
  {"Magenta Wool", CFrame.new(196, 2, 180, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[172] t=1781717089.01
  {"Magenta Wool", CFrame.new(196, 2, 176, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[173] t=1781717089.70
  {"Magenta Wool", CFrame.new(208, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[174] t=1781717089.95
  {"Magenta Wool", CFrame.new(204, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[175] t=1781717090.30
  {"Magenta Wool", CFrame.new(200, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[176] t=1781717090.76
  {"Magenta Wool", CFrame.new(208, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[177] t=1781717090.98
  {"Magenta Wool", CFrame.new(208, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[178] t=1781717091.24
  {"Magenta Wool", CFrame.new(208, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[179] t=1781717091.75
  {"Magenta Wool", CFrame.new(204, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[180] t=1781717091.97
  {"Magenta Wool", CFrame.new(200, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[181] t=1781717092.69
  {"Magenta Wool", CFrame.new(184, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[182] t=1781717093.07
  {"Magenta Wool", CFrame.new(188, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[183] t=1781717093.48
  {"Magenta Wool", CFrame.new(176, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[184] t=1781717093.67
  {"Magenta Wool", CFrame.new(180, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[185] t=1781717094.13
  {"Magenta Wool", CFrame.new(176, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[186] t=1781717094.40
  {"Magenta Wool", CFrame.new(176, 2, 180, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[187] t=1781717094.70
  {"Magenta Wool", CFrame.new(176, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[188] t=1781717095.37
  {"Magenta Wool", CFrame.new(188, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[189] t=1781717095.79
  {"Magenta Wool", CFrame.new(188, 2, 180, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[190] t=1781717096.06
  {"Magenta Wool", CFrame.new(188, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[191] t=1781717096.53
  {"Magenta Wool", CFrame.new(184, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[192] t=1781717096.79
  {"Magenta Wool", CFrame.new(180, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[193] t=1781717097.70
  {"Magenta Wool", CFrame.new(168, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[194] t=1781717097.95
  {"Magenta Wool", CFrame.new(168, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[195] t=1781717098.18
  {"Magenta Wool", CFrame.new(168, 2, 180, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[196] t=1781717098.52
  {"Magenta Wool", CFrame.new(168, 2, 176, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[197] t=1781717098.91
  {"Magenta Wool", CFrame.new(164, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[198] t=1781717099.20
  {"Magenta Wool", CFrame.new(160, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[199] t=1781717099.50
  {"Magenta Wool", CFrame.new(156, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[200] t=1781717100.01
  {"Magenta Wool", CFrame.new(156, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[201] t=1781717100.23
  {"Magenta Wool", CFrame.new(156, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[202] t=1781717100.51
  {"Magenta Wool", CFrame.new(156, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[203] t=1781717101.11
  {"Magenta Wool", CFrame.new(160, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[204] t=1781717101.35
  {"Magenta Wool", CFrame.new(164, 2, 188, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[205] t=1781717102.66
  {"Magenta Wool", CFrame.new(156, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[206] t=1781717102.88
  {"Magenta Wool", CFrame.new(160, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[207] t=1781717103.16
  {"Magenta Wool", CFrame.new(164, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[208] t=1781717103.45
  {"Magenta Wool", CFrame.new(168, 2, 168, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[209] t=1781717104.38
  {"Magenta Wool", CFrame.new(156, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[210] t=1781717104.62
  {"Magenta Wool", CFrame.new(156, 2, 160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[211] t=1781717104.87
  {"Magenta Wool", CFrame.new(156, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[212] t=1781717105.32
  {"Magenta Wool", CFrame.new(160, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[213] t=1781717105.55
  {"Magenta Wool", CFrame.new(164, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[214] t=1781717105.80
  {"Magenta Wool", CFrame.new(168, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[215] t=1781717106.25
  {"Magenta Wool", CFrame.new(168, 2, 160, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[216] t=1781717106.57
  {"Magenta Wool", CFrame.new(168, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[217] t=1781717107.81
  {"Magenta Wool", CFrame.new(176, 2, 156, 1, 0, 0, 0), workspace.Baseplate},
  --[218] t=1781717108.08
  {"Magenta Wool", CFrame.new(176, 2, 160, 1, 0, 0, 0), workspace.Baseplate},
  --[219] t=1781717108.34
  {"Magenta Wool", CFrame.new(176, 2, 164, 1, 0, 0, 0), workspace.Baseplate},
  --[220] t=1781717108.68
  {"Magenta Wool", CFrame.new(176, 2, 168, 1, 0, 0, 0), workspace.Baseplate},
  --[221] t=1781717109.71
  {"Magenta Wool", CFrame.new(188, 2, 156, 1, 0, 0, 0), workspace.Baseplate},
  --[222] t=1781717109.92
  {"Magenta Wool", CFrame.new(184, 2, 156, 1, 0, 0, 0), workspace.Baseplate},
  --[223] t=1781717110.19
  {"Magenta Wool", CFrame.new(180, 2, 156, 1, 0, 0, 0), workspace.Baseplate},
  --[224] t=1781717110.78
  {"Magenta Wool", CFrame.new(188, 2, 160, 1, 0, 0, 0), workspace.Baseplate},
  --[225] t=1781717111.10
  {"Magenta Wool", CFrame.new(188, 2, 164, 1, 0, 0, 0), workspace.Baseplate},
  --[226] t=1781717111.47
  {"Magenta Wool", CFrame.new(188, 2, 168, 1, 0, 0, 0), workspace.Baseplate},
  --[227] t=1781717111.84
  {"Magenta Wool", CFrame.new(184, 2, 168, 1, 0, 0, 0), workspace.Baseplate},
  --[228] t=1781717112.13
  {"Magenta Wool", CFrame.new(180, 2, 168, 1, 0, 0, 0), workspace.Baseplate},
  --[229] t=1781717113.13
  {"Magenta Wool", CFrame.new(176, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[230] t=1781717113.35
  {"Magenta Wool", CFrame.new(176, 2, 140, 1, 0, 0, 0), workspace.Baseplate},
  --[231] t=1781717113.58
  {"Magenta Wool", CFrame.new(176, 2, 144, 1, 0, 0, 0), workspace.Baseplate},
  --[232] t=1781717113.93
  {"Magenta Wool", CFrame.new(176, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[233] t=1781717114.51
  {"Magenta Wool", CFrame.new(188, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[234] t=1781717114.71
  {"Magenta Wool", CFrame.new(188, 2, 140, 1, 0, 0, 0), workspace.Baseplate},
  --[235] t=1781717114.97
  {"Magenta Wool", CFrame.new(188, 2, 144, 1, 0, 0, 0), workspace.Baseplate},
  --[236] t=1781717115.26
  {"Magenta Wool", CFrame.new(188, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[237] t=1781717115.73
  {"Magenta Wool", CFrame.new(184, 2, 136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[238] t=1781717115.94
  {"Magenta Wool", CFrame.new(180, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[239] t=1781717116.52
  {"Magenta Wool", CFrame.new(184, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[240] t=1781717116.79
  {"Magenta Wool", CFrame.new(180, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[241] t=1781717117.70
  {"Magenta Wool", CFrame.new(168, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[242] t=1781717117.91
  {"Magenta Wool", CFrame.new(168, 2, 140, 1, 0, 0, 0), workspace.Baseplate},
  --[243] t=1781717118.14
  {"Magenta Wool", CFrame.new(168, 2, 144, 1, 0, 0, 0), workspace.Baseplate},
  --[244] t=1781717118.40
  {"Magenta Wool", CFrame.new(168, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[245] t=1781717119.04
  {"Magenta Wool", CFrame.new(156, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[246] t=1781717119.28
  {"Magenta Wool", CFrame.new(156, 2, 144, 1, 0, 0, 0), workspace.Baseplate},
  --[247] t=1781717119.80
  {"Magenta Wool", CFrame.new(156, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[248] t=1781717120.20
  {"Magenta Wool", CFrame.new(156, 2, 140, 1, 0, 0, 0), workspace.Baseplate},
  --[249] t=1781717120.48
  {"Magenta Wool", CFrame.new(160, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[250] t=1781717120.73
  {"Magenta Wool", CFrame.new(164, 2, 136, 1, 0, 0, 0), workspace.Baseplate},
  --[251] t=1781717121.42
  {"Magenta Wool", CFrame.new(160, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[252] t=1781717121.80
  {"Magenta Wool", CFrame.new(164, 2, 148, 1, 0, 0, 0), workspace.Baseplate},
  --[253] t=1781717126.05
  {"Yellow Wool", CFrame.new(164, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[254] t=1781717126.22
  {"Yellow Wool", CFrame.new(160, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[255] t=1781717126.86
  {"Yellow Wool", CFrame.new(164, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[256] t=1781717127.08
  {"Yellow Wool", CFrame.new(160, 2, 164, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[257] t=1781717127.90
  {"Yellow Wool", CFrame.new(164, 2, 180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[258] t=1781717128.11
  {"Yellow Wool", CFrame.new(160, 2, 180, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[259] t=1781717128.45
  {"Yellow Wool", CFrame.new(164, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[260] t=1781717128.65
  {"Yellow Wool", CFrame.new(160, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[261] t=1781717129.48
  {"Yellow Wool", CFrame.new(184, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[262] t=1781717129.68
  {"Yellow Wool", CFrame.new(180, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[263] t=1781717129.97
  {"Yellow Wool", CFrame.new(184, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[264] t=1781717130.11
  {"Yellow Wool", CFrame.new(180, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[265] t=1781717131.05
  {"Yellow Wool", CFrame.new(204, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[266] t=1781717131.24
  {"Yellow Wool", CFrame.new(200, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[267] t=1781717131.51
  {"Yellow Wool", CFrame.new(204, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[268] t=1781717131.72
  {"Yellow Wool", CFrame.new(200, 2, 184, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[269] t=1781717132.50
  {"Yellow Wool", CFrame.new(204, 2, 164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[270] t=1781717132.70
  {"Yellow Wool", CFrame.new(200, 2, 164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[271] t=1781717133.16
  {"Yellow Wool", CFrame.new(204, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[272] t=1781717133.35
  {"Yellow Wool", CFrame.new(200, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[273] t=1781717134.24
  {"Yellow Wool", CFrame.new(204, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[274] t=1781717134.43
  {"Yellow Wool", CFrame.new(200, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[275] t=1781717134.78
  {"Yellow Wool", CFrame.new(204, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[276] t=1781717134.96
  {"Yellow Wool", CFrame.new(200, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[277] t=1781717135.97
  {"Yellow Wool", CFrame.new(184, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[278] t=1781717136.16
  {"Yellow Wool", CFrame.new(180, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[279] t=1781717136.44
  {"Yellow Wool", CFrame.new(184, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[280] t=1781717136.64
  {"Yellow Wool", CFrame.new(180, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[281] t=1781717137.20
  {"Yellow Wool", CFrame.new(184, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[282] t=1781717137.41
  {"Yellow Wool", CFrame.new(180, 2, 160, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[283] t=1781717137.79
  {"Yellow Wool", CFrame.new(184, 2, 164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[284] t=1781717138.03
  {"Yellow Wool", CFrame.new(180, 2, 164, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[285] t=1781717138.86
  {"Yellow Wool", CFrame.new(164, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[286] t=1781717139.06
  {"Yellow Wool", CFrame.new(160, 2, 140, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[287] t=1781717139.29
  {"Yellow Wool", CFrame.new(164, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[288] t=1781717139.50
  {"Yellow Wool", CFrame.new(160, 2, 144, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[289] t=1781717147.80
  {"Cyan Wool", CFrame.new(152, 2, 152, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[290] t=1781717148.08
  {"Cyan Wool", CFrame.new(148, 2, 152, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[291] t=1781717149.43
  {"Cyan Wool", CFrame.new(172, 2, 152, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[292] t=1781717150.35
  {"Cyan Wool", CFrame.new(192, 2, 152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[293] t=1781717151.20
  {"Cyan Wool", CFrame.new(216, 2, 152, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[294] t=1781717151.52
  {"Cyan Wool", CFrame.new(212, 2, 152, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[295] t=1781717152.38
  {"Cyan Wool", CFrame.new(216, 2, 172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[296] t=1781717152.63
  {"Cyan Wool", CFrame.new(212, 2, 172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[297] t=1781717153.46
  {"Cyan Wool", CFrame.new(192, 2, 172, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[298] t=1781717154.27
  {"Cyan Wool", CFrame.new(172, 2, 172, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[299] t=1781717155.36
  {"Cyan Wool", CFrame.new(152, 2, 172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[300] t=1781717155.61
  {"Cyan Wool", CFrame.new(148, 2, 172, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[301] t=1781717156.94
  {"Cyan Wool", CFrame.new(152, 2, 192, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[302] t=1781717157.23
  {"Cyan Wool", CFrame.new(148, 2, 192, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[303] t=1781717157.77
  {"Cyan Wool", CFrame.new(152, 2, 196, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[304] t=1781717158.76
  {"Cyan Wool", CFrame.new(172, 2, 192, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[305] t=1781717159.31
  {"Cyan Wool", CFrame.new(172, 2, 196, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[306] t=1781717160.15
  {"Cyan Wool", CFrame.new(192, 2, 196, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[307] t=1781717160.36
  {"Cyan Wool", CFrame.new(192, 2, 192, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[308] t=1781717161.49
  {"Cyan Wool", CFrame.new(216, 2, 192, 1, 0, 0, 0), workspace.Baseplate},
  --[309] t=1781717161.72
  {"Cyan Wool", CFrame.new(212, 2, 192, 1, 0, 0, 0), workspace.Baseplate},
  --[310] t=1781717162.15
  {"Cyan Wool", CFrame.new(212, 2, 196, 1, 0, 0, 0), workspace.Baseplate},
  --[311] t=1781717164.30
  {"Cyan Wool", CFrame.new(212, 2, 128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[312] t=1781717164.49
  {"Cyan Wool", CFrame.new(212, 2, 132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[313] t=1781717164.81
  {"Cyan Wool", CFrame.new(216, 2, 132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[314] t=1781717165.65
  {"Cyan Wool", CFrame.new(192, 2, 128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[315] t=1781717165.85
  {"Cyan Wool", CFrame.new(192, 2, 132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[316] t=1781717166.61
  {"Cyan Wool", CFrame.new(172, 2, 128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[317] t=1781717166.81
  {"Cyan Wool", CFrame.new(172, 2, 132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[318] t=1781717168.64
  {"Cyan Wool", CFrame.new(148, 2, 132, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[319] t=1781717168.87
  {"Cyan Wool", CFrame.new(152, 2, 132, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[320] t=1781717169.11
  {"Cyan Wool", CFrame.new(152, 2, 128, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[321] t=1781717175.00
  {"Blue Wool", CFrame.new(148, 2, 128, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[322] t=1781717177.81
  {"Blue Wool", CFrame.new(216, 2, 128, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[323] t=1781717179.23
  {"Blue Wool", CFrame.new(216, 2, 196, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[324] t=1781717181.03
  {"Blue Wool", CFrame.new(148, 2, 196, 1, 0, 0, 0), workspace.Baseplate},
  --[325] t=1781717184.40
  {"Blue Wool", CFrame.new(144, 2, 200, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[326] t=1781717184.65
  {"Blue Wool", CFrame.new(144, 2, 196, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[327] t=1781717184.93
  {"Blue Wool", CFrame.new(144, 2, 192, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[328] t=1781717185.18
  {"Blue Wool", CFrame.new(144, 2, 184, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[329] t=1781717186.41
  {"Blue Wool", CFrame.new(144, 2, 188, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[330] t=1781717186.88
  {"Blue Wool", CFrame.new(144, 2, 180, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[331] t=1781717187.16
  {"Blue Wool", CFrame.new(144, 2, 176, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[332] t=1781717187.47
  {"Blue Wool", CFrame.new(144, 2, 172, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[333] t=1781717187.79
  {"Blue Wool", CFrame.new(144, 2, 168, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[334] t=1781717188.12
  {"Blue Wool", CFrame.new(144, 2, 164, -1, 0, 8.742277657347586e-08, 0), workspace.Baseplate},
  --[335] t=1781717188.98
  {"Blue Wool", CFrame.new(144, 2, 160, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[336] t=1781717189.21
  {"Blue Wool", CFrame.new(144, 2, 152, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[337] t=1781717189.42
  {"Blue Wool", CFrame.new(144, 2, 148, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[338] t=1781717189.74
  {"Blue Wool", CFrame.new(144, 2, 144, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[339] t=1781717190.65
  {"Blue Wool", CFrame.new(144, 2, 156, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[340] t=1781717191.44
  {"Blue Wool", CFrame.new(144, 2, 140, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[341] t=1781717191.69
  {"Blue Wool", CFrame.new(144, 2, 136, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[342] t=1781717191.98
  {"Blue Wool", CFrame.new(144, 2, 132, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[343] t=1781717192.28
  {"Blue Wool", CFrame.new(144, 2, 128, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[344] t=1781717192.62
  {"Blue Wool", CFrame.new(144, 2, 124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[345] t=1781717194.02
  {"Blue Wool", CFrame.new(148, 2, 124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[346] t=1781717194.27
  {"Blue Wool", CFrame.new(156, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[347] t=1781717194.52
  {"Blue Wool", CFrame.new(160, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[348] t=1781717194.88
  {"Blue Wool", CFrame.new(164, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[349] t=1781717195.72
  {"Blue Wool", CFrame.new(152, 2, 124, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[350] t=1781717196.38
  {"Blue Wool", CFrame.new(168, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[351] t=1781717196.60
  {"Blue Wool", CFrame.new(172, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[352] t=1781717196.82
  {"Blue Wool", CFrame.new(176, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[353] t=1781717197.03
  {"Blue Wool", CFrame.new(180, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[354] t=1781717197.27
  {"Blue Wool", CFrame.new(184, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[355] t=1781717197.90
  {"Blue Wool", CFrame.new(192, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[356] t=1781717198.39
  {"Blue Wool", CFrame.new(196, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[357] t=1781717198.59
  {"Blue Wool", CFrame.new(200, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[358] t=1781717199.35
  {"Blue Wool", CFrame.new(188, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[359] t=1781717200.21
  {"Blue Wool", CFrame.new(204, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[360] t=1781717200.45
  {"Blue Wool", CFrame.new(208, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[361] t=1781717200.68
  {"Blue Wool", CFrame.new(212, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[362] t=1781717200.88
  {"Blue Wool", CFrame.new(216, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[363] t=1781717201.16
  {"Blue Wool", CFrame.new(220, 2, 124, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[364] t=1781717202.10
  {"Blue Wool", CFrame.new(220, 2, 128, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[365] t=1781717204.15
  {"Blue Wool", CFrame.new(220, 2, 132, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[366] t=1781717204.37
  {"Blue Wool", CFrame.new(220, 2, 136, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[367] t=1781717204.55
  {"Blue Wool", CFrame.new(220, 2, 140, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[368] t=1781717204.76
  {"Blue Wool", CFrame.new(220, 2, 144, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[369] t=1781717204.97
  {"Blue Wool", CFrame.new(220, 2, 148, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[370] t=1781717205.17
  {"Blue Wool", CFrame.new(220, 2, 152, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[371] t=1781717206.73
  {"Blue Wool", CFrame.new(220, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[372] t=1781717206.93
  {"Blue Wool", CFrame.new(220, 2, 160, 1, 0, 0, 0), workspace.Baseplate},
  --[373] t=1781717207.14
  {"Blue Wool", CFrame.new(220, 2, 164, 1, 0, 0, 0), workspace.Baseplate},
  --[374] t=1781717207.33
  {"Blue Wool", CFrame.new(220, 2, 168, 1, 0, 0, 0), workspace.Baseplate},
  --[375] t=1781717207.52
  {"Blue Wool", CFrame.new(220, 2, 172, 1, 0, 0, 0), workspace.Baseplate},
  --[376] t=1781717210.91
  {"Blue Wool", CFrame.new(220, 2, 156, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[377] t=1781717211.71
  {"Blue Wool", CFrame.new(220, 2, 176, 1, 0, 0, 0), workspace.Baseplate},
  --[378] t=1781717211.92
  {"Blue Wool", CFrame.new(220, 2, 180, 1, 0, 0, 0), workspace.Baseplate},
  --[379] t=1781717212.11
  {"Blue Wool", CFrame.new(220, 2, 184, 1, 0, 0, 0), workspace.Baseplate},
  --[380] t=1781717212.35
  {"Blue Wool", CFrame.new(220, 2, 188, 1, 0, 0, 0), workspace.Baseplate},
  --[381] t=1781717212.59
  {"Blue Wool", CFrame.new(220, 2, 192, 1, 0, 0, 0), workspace.Baseplate},
  --[382] t=1781717212.86
  {"Blue Wool", CFrame.new(220, 2, 196, 1, 0, 0, 0), workspace.Baseplate},
  --[383] t=1781717213.23
  {"Blue Wool", CFrame.new(220, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[384] t=1781717214.58
  {"Blue Wool", CFrame.new(216, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[385] t=1781717214.79
  {"Blue Wool", CFrame.new(212, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[386] t=1781717215.00
  {"Blue Wool", CFrame.new(208, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[387] t=1781717215.21
  {"Blue Wool", CFrame.new(204, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[388] t=1781717215.40
  {"Blue Wool", CFrame.new(200, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[389] t=1781717215.61
  {"Blue Wool", CFrame.new(196, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[390] t=1781717215.80
  {"Blue Wool", CFrame.new(192, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[391] t=1781717216.06
  {"Blue Wool", CFrame.new(188, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[392] t=1781717216.31
  {"Blue Wool", CFrame.new(184, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[393] t=1781717216.51
  {"Blue Wool", CFrame.new(180, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[394] t=1781717216.75
  {"Blue Wool", CFrame.new(176, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[395] t=1781717216.96
  {"Blue Wool", CFrame.new(168, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[396] t=1781717219.75
  {"Blue Wool", CFrame.new(172, 2, 200, 1, 0, 0, 0), workspace.Baseplate},
  --[397] t=1781717220.49
  {"Blue Wool", CFrame.new(148, 2, 200, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[398] t=1781717220.73
  {"Blue Wool", CFrame.new(152, 2, 200, -4.371138828673793e-08, 0, -1, 0), workspace.Baseplate},
  --[399] t=1781717221.18
  {"Blue Wool", CFrame.new(156, 2, 200, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[400] t=1781717221.58
  {"Blue Wool", CFrame.new(160, 2, 200, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
  --[401] t=1781717221.98
  {"Blue Wool", CFrame.new(164, 2, 200, -1, 0, -8.742277657347586e-08, 0), workspace.Baseplate},
}

local claudeshouse = {
  --[1] t=1781824750.76
  {"Oak Planks", CFrame.new(580, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[2] t=1781824752.16
  {"Oak Planks", CFrame.new(580, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[3] t=1781824753.56
  {"Oak Planks", CFrame.new(580, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[4] t=1781824754.96
  {"Oak Planks", CFrame.new(580, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[5] t=1781824756.36
  {"Oak Planks", CFrame.new(580, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[6] t=1781824757.76
  {"Oak Planks", CFrame.new(580, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[7] t=1781824759.16
  {"Oak Planks", CFrame.new(580, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[8] t=1781824760.56
  {"Oak Planks", CFrame.new(580, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[9] t=1781824761.96
  {"Oak Planks", CFrame.new(580, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[10] t=1781824763.36
  {"Oak Planks", CFrame.new(584, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[11] t=1781824764.76
  {"Oak Planks", CFrame.new(584, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[12] t=1781824766.16
  {"Oak Planks", CFrame.new(584, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[13] t=1781824767.56
  {"Oak Planks", CFrame.new(584, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[14] t=1781824768.96
  {"Oak Planks", CFrame.new(584, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[15] t=1781824770.36
  {"Oak Planks", CFrame.new(584, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[16] t=1781824771.76
  {"Oak Planks", CFrame.new(584, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[17] t=1781824773.16
  {"Oak Planks", CFrame.new(584, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[18] t=1781824774.56
  {"Oak Planks", CFrame.new(584, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[19] t=1781824775.96
  {"Oak Planks", CFrame.new(588, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[20] t=1781824777.36
  {"Oak Planks", CFrame.new(588, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[21] t=1781824778.76
  {"Oak Planks", CFrame.new(588, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[22] t=1781824780.16
  {"Oak Planks", CFrame.new(588, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[23] t=1781824781.56
  {"Oak Planks", CFrame.new(588, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[24] t=1781824782.96
  {"Oak Planks", CFrame.new(588, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[25] t=1781824784.36
  {"Oak Planks", CFrame.new(588, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[26] t=1781824785.76
  {"Oak Planks", CFrame.new(588, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[27] t=1781824787.16
  {"Oak Planks", CFrame.new(588, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[28] t=1781824788.56
  {"Oak Planks", CFrame.new(592, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[29] t=1781824789.96
  {"Oak Planks", CFrame.new(592, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[30] t=1781824791.36
  {"Oak Planks", CFrame.new(592, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[31] t=1781824792.76
  {"Oak Planks", CFrame.new(592, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[32] t=1781824794.16
  {"Oak Planks", CFrame.new(592, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[33] t=1781824795.56
  {"Oak Planks", CFrame.new(592, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[34] t=1781824796.96
  {"Oak Planks", CFrame.new(592, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[35] t=1781824798.36
  {"Oak Planks", CFrame.new(592, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[36] t=1781824799.76
  {"Oak Planks", CFrame.new(592, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[37] t=1781824801.16
  {"Oak Planks", CFrame.new(596, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[38] t=1781824802.56
  {"Oak Planks", CFrame.new(596, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[39] t=1781824803.96
  {"Oak Planks", CFrame.new(596, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[40] t=1781824805.36
  {"Oak Planks", CFrame.new(596, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[41] t=1781824806.76
  {"Oak Planks", CFrame.new(596, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[42] t=1781824808.16
  {"Oak Planks", CFrame.new(596, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[43] t=1781824809.56
  {"Oak Planks", CFrame.new(596, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[44] t=1781824810.96
  {"Oak Planks", CFrame.new(596, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[45] t=1781824812.36
  {"Oak Planks", CFrame.new(596, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[46] t=1781824813.76
  {"Oak Planks", CFrame.new(600, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[47] t=1781824815.16
  {"Oak Planks", CFrame.new(600, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[48] t=1781824816.56
  {"Oak Planks", CFrame.new(600, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[49] t=1781824817.96
  {"Oak Planks", CFrame.new(600, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[50] t=1781824819.36
  {"Oak Planks", CFrame.new(600, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[51] t=1781824820.76
  {"Oak Planks", CFrame.new(600, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[52] t=1781824822.16
  {"Oak Planks", CFrame.new(600, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[53] t=1781824823.56
  {"Oak Planks", CFrame.new(600, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[54] t=1781824824.96
  {"Oak Planks", CFrame.new(600, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[55] t=1781824826.36
  {"Oak Planks", CFrame.new(604, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[56] t=1781824827.76
  {"Oak Planks", CFrame.new(604, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[57] t=1781824829.16
  {"Oak Planks", CFrame.new(604, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[58] t=1781824830.56
  {"Oak Planks", CFrame.new(604, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[59] t=1781824831.96
  {"Oak Planks", CFrame.new(604, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[60] t=1781824833.36
  {"Oak Planks", CFrame.new(604, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[61] t=1781824834.76
  {"Oak Planks", CFrame.new(604, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[62] t=1781824836.16
  {"Oak Planks", CFrame.new(604, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[63] t=1781824837.56
  {"Oak Planks", CFrame.new(604, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[64] t=1781824838.96
  {"Oak Planks", CFrame.new(608, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[65] t=1781824840.36
  {"Oak Planks", CFrame.new(608, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[66] t=1781824841.76
  {"Oak Planks", CFrame.new(608, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[67] t=1781824843.16
  {"Oak Planks", CFrame.new(608, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[68] t=1781824844.56
  {"Oak Planks", CFrame.new(608, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[69] t=1781824845.96
  {"Oak Planks", CFrame.new(608, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[70] t=1781824847.36
  {"Oak Planks", CFrame.new(608, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[71] t=1781824848.76
  {"Oak Planks", CFrame.new(608, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[72] t=1781824850.16
  {"Oak Planks", CFrame.new(608, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[73] t=1781824851.56
  {"Oak Planks", CFrame.new(612, 2, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[74] t=1781824852.96
  {"Oak Planks", CFrame.new(612, 2, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[75] t=1781824854.36
  {"Oak Planks", CFrame.new(612, 2, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[76] t=1781824855.76
  {"Oak Planks", CFrame.new(612, 2, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[77] t=1781824857.16
  {"Oak Planks", CFrame.new(612, 2, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[78] t=1781824858.56
  {"Oak Planks", CFrame.new(612, 2, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[79] t=1781824859.96
  {"Oak Planks", CFrame.new(612, 2, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[80] t=1781824861.36
  {"Oak Planks", CFrame.new(612, 2, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[81] t=1781824862.76
  {"Oak Planks", CFrame.new(612, 2, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[82] t=1781824864.16
  {"Oak Planks", CFrame.new(580, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[83] t=1781824865.56
  {"Oak Planks", CFrame.new(580, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[84] t=1781824866.96
  {"Oak Planks", CFrame.new(584, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[85] t=1781824868.36
  {"Oak Planks", CFrame.new(584, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[86] t=1781824869.76
  {"Oak Planks", CFrame.new(588, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[87] t=1781824871.16
  {"Oak Planks", CFrame.new(588, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[88] t=1781824872.56
  {"Oak Planks", CFrame.new(592, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[89] t=1781824873.96
  {"Oak Planks", CFrame.new(592, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[90] t=1781824875.36
  {"Oak Planks", CFrame.new(596, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[91] t=1781824876.76
  {"Oak Planks", CFrame.new(596, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[92] t=1781824878.16
  {"Oak Planks", CFrame.new(600, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[93] t=1781824879.56
  {"Oak Planks", CFrame.new(600, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[94] t=1781824880.96
  {"Oak Planks", CFrame.new(604, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[95] t=1781824882.36
  {"Oak Planks", CFrame.new(604, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[96] t=1781824883.76
  {"Oak Planks", CFrame.new(608, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[97] t=1781824885.16
  {"Oak Planks", CFrame.new(608, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[98] t=1781824886.56
  {"Oak Planks", CFrame.new(612, 6, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[99] t=1781824887.96
  {"Oak Planks", CFrame.new(612, 6, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[100] t=1781824889.36
  {"Oak Planks", CFrame.new(580, 6, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[101] t=1781824890.76
  {"Oak Planks", CFrame.new(612, 6, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[102] t=1781824892.16
  {"Oak Planks", CFrame.new(580, 6, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[103] t=1781824893.56
  {"Oak Planks", CFrame.new(612, 6, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[104] t=1781824894.96
  {"Oak Planks", CFrame.new(580, 6, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[105] t=1781824896.36
  {"Oak Planks", CFrame.new(612, 6, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[106] t=1781824897.76
  {"Oak Planks", CFrame.new(580, 6, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[107] t=1781824899.16
  {"Oak Planks", CFrame.new(612, 6, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[108] t=1781824900.56
  {"Oak Planks", CFrame.new(580, 6, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[109] t=1781824901.96
  {"Oak Planks", CFrame.new(612, 6, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[110] t=1781824903.36
  {"Oak Planks", CFrame.new(580, 6, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[111] t=1781824904.76
  {"Oak Planks", CFrame.new(612, 6, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[112] t=1781824906.16
  {"Oak Planks", CFrame.new(580, 6, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[113] t=1781824907.56
  {"Oak Planks", CFrame.new(612, 6, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[114] t=1781824908.96
  {"Oak Planks", CFrame.new(580, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[115] t=1781824910.36
  {"Oak Planks", CFrame.new(580, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[116] t=1781824911.76
  {"Oak Planks", CFrame.new(584, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[117] t=1781824913.16
  {"Oak Planks", CFrame.new(584, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[118] t=1781824914.56
  {"Oak Planks", CFrame.new(588, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[119] t=1781824915.96
  {"Oak Planks", CFrame.new(588, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[120] t=1781824917.36
  {"Oak Planks", CFrame.new(592, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[121] t=1781824918.76
  {"Oak Planks", CFrame.new(592, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[122] t=1781824920.16
  {"Oak Planks", CFrame.new(596, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[123] t=1781824921.56
  {"Oak Planks", CFrame.new(596, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[124] t=1781824922.96
  {"Oak Planks", CFrame.new(600, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[125] t=1781824924.36
  {"Oak Planks", CFrame.new(600, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[126] t=1781824925.76
  {"Oak Planks", CFrame.new(604, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[127] t=1781824927.16
  {"Oak Planks", CFrame.new(604, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[128] t=1781824928.56
  {"Oak Planks", CFrame.new(608, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[129] t=1781824929.96
  {"Oak Planks", CFrame.new(608, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[130] t=1781824931.36
  {"Oak Planks", CFrame.new(612, 10, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[131] t=1781824932.76
  {"Oak Planks", CFrame.new(612, 10, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[132] t=1781824934.16
  {"Oak Planks", CFrame.new(580, 10, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[133] t=1781824935.56
  {"Oak Planks", CFrame.new(612, 10, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[134] t=1781824936.96
  {"Oak Planks", CFrame.new(580, 10, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[135] t=1781824938.36
  {"Oak Planks", CFrame.new(612, 10, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[136] t=1781824939.76
  {"Oak Planks", CFrame.new(580, 10, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[137] t=1781824941.16
  {"Oak Planks", CFrame.new(612, 10, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[138] t=1781824942.56
  {"Oak Planks", CFrame.new(580, 10, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[139] t=1781824943.96
  {"Oak Planks", CFrame.new(612, 10, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[140] t=1781824945.36
  {"Oak Planks", CFrame.new(580, 10, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[141] t=1781824946.76
  {"Oak Planks", CFrame.new(612, 10, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[142] t=1781824948.16
  {"Oak Planks", CFrame.new(580, 10, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[143] t=1781824949.56
  {"Oak Planks", CFrame.new(612, 10, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[144] t=1781824950.96
  {"Oak Planks", CFrame.new(580, 10, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[145] t=1781824952.36
  {"Oak Planks", CFrame.new(612, 10, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[146] t=1781824953.76
  {"Oak Planks", CFrame.new(580, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[147] t=1781824955.16
  {"Oak Planks", CFrame.new(580, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[148] t=1781824956.56
  {"Oak Planks", CFrame.new(584, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[149] t=1781824957.96
  {"Oak Planks", CFrame.new(584, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[150] t=1781824959.36
  {"Oak Planks", CFrame.new(588, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[151] t=1781824960.76
  {"Oak Planks", CFrame.new(588, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[152] t=1781824962.16
  {"Oak Planks", CFrame.new(592, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[153] t=1781824963.56
  {"Oak Planks", CFrame.new(592, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[154] t=1781824964.96
  {"Oak Planks", CFrame.new(596, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[155] t=1781824966.36
  {"Oak Planks", CFrame.new(596, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[156] t=1781824967.76
  {"Oak Planks", CFrame.new(600, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[157] t=1781824969.16
  {"Oak Planks", CFrame.new(600, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[158] t=1781824970.56
  {"Oak Planks", CFrame.new(604, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[159] t=1781824971.96
  {"Oak Planks", CFrame.new(604, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[160] t=1781824973.36
  {"Oak Planks", CFrame.new(608, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[161] t=1781824974.76
  {"Oak Planks", CFrame.new(608, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[162] t=1781824976.16
  {"Oak Planks", CFrame.new(612, 14, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[163] t=1781824977.56
  {"Oak Planks", CFrame.new(612, 14, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[164] t=1781824978.96
  {"Oak Planks", CFrame.new(580, 14, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[165] t=1781824980.36
  {"Oak Planks", CFrame.new(612, 14, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[166] t=1781824981.76
  {"Oak Planks", CFrame.new(580, 14, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[167] t=1781824983.16
  {"Oak Planks", CFrame.new(612, 14, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[168] t=1781824984.56
  {"Oak Planks", CFrame.new(580, 14, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[169] t=1781824985.96
  {"Oak Planks", CFrame.new(612, 14, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[170] t=1781824987.36
  {"Oak Planks", CFrame.new(580, 14, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[171] t=1781824988.76
  {"Oak Planks", CFrame.new(612, 14, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[172] t=1781824990.16
  {"Oak Planks", CFrame.new(580, 14, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[173] t=1781824991.56
  {"Oak Planks", CFrame.new(612, 14, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[174] t=1781824992.96
  {"Oak Planks", CFrame.new(580, 14, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[175] t=1781824994.36
  {"Oak Planks", CFrame.new(612, 14, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[176] t=1781824995.76
  {"Oak Planks", CFrame.new(580, 14, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[177] t=1781824997.16
  {"Oak Planks", CFrame.new(612, 14, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[178] t=1781824998.56
  {"Oak Planks", CFrame.new(580, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[179] t=1781824999.96
  {"Oak Planks", CFrame.new(580, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[180] t=1781825001.36
  {"Oak Planks", CFrame.new(580, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[181] t=1781825002.76
  {"Oak Planks", CFrame.new(580, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[182] t=1781825004.16
  {"Oak Planks", CFrame.new(580, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[183] t=1781825005.56
  {"Oak Planks", CFrame.new(580, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[184] t=1781825006.96
  {"Oak Planks", CFrame.new(580, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[185] t=1781825008.36
  {"Oak Planks", CFrame.new(580, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[186] t=1781825009.76
  {"Oak Planks", CFrame.new(580, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[187] t=1781825011.16
  {"Oak Planks", CFrame.new(584, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[188] t=1781825012.56
  {"Oak Planks", CFrame.new(584, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[189] t=1781825013.96
  {"Oak Planks", CFrame.new(584, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[190] t=1781825015.36
  {"Oak Planks", CFrame.new(584, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[191] t=1781825016.76
  {"Oak Planks", CFrame.new(584, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[192] t=1781825018.16
  {"Oak Planks", CFrame.new(584, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[193] t=1781825019.56
  {"Oak Planks", CFrame.new(584, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[194] t=1781825020.96
  {"Oak Planks", CFrame.new(584, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[195] t=1781825022.36
  {"Oak Planks", CFrame.new(584, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[196] t=1781825023.76
  {"Oak Planks", CFrame.new(588, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[197] t=1781825025.16
  {"Oak Planks", CFrame.new(588, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[198] t=1781825026.56
  {"Oak Planks", CFrame.new(588, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[199] t=1781825027.96
  {"Oak Planks", CFrame.new(588, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[200] t=1781825029.36
  {"Oak Planks", CFrame.new(588, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[201] t=1781825030.76
  {"Oak Planks", CFrame.new(588, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[202] t=1781825032.16
  {"Oak Planks", CFrame.new(588, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[203] t=1781825033.56
  {"Oak Planks", CFrame.new(588, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[204] t=1781825034.96
  {"Oak Planks", CFrame.new(588, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[205] t=1781825036.36
  {"Oak Planks", CFrame.new(592, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[206] t=1781825037.76
  {"Oak Planks", CFrame.new(592, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[207] t=1781825039.16
  {"Oak Planks", CFrame.new(592, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[208] t=1781825040.56
  {"Oak Planks", CFrame.new(592, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[209] t=1781825041.96
  {"Oak Planks", CFrame.new(592, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[210] t=1781825043.36
  {"Oak Planks", CFrame.new(592, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[211] t=1781825044.76
  {"Oak Planks", CFrame.new(592, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[212] t=1781825046.16
  {"Oak Planks", CFrame.new(592, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[213] t=1781825047.56
  {"Oak Planks", CFrame.new(592, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[214] t=1781825048.96
  {"Oak Planks", CFrame.new(596, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[215] t=1781825050.36
  {"Oak Planks", CFrame.new(596, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[216] t=1781825051.76
  {"Oak Planks", CFrame.new(596, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[217] t=1781825053.16
  {"Oak Planks", CFrame.new(596, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[218] t=1781825054.56
  {"Oak Planks", CFrame.new(596, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[219] t=1781825055.96
  {"Oak Planks", CFrame.new(596, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[220] t=1781825057.36
  {"Oak Planks", CFrame.new(596, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[221] t=1781825058.76
  {"Oak Planks", CFrame.new(596, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[222] t=1781825060.16
  {"Oak Planks", CFrame.new(596, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[223] t=1781825061.56
  {"Oak Planks", CFrame.new(600, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[224] t=1781825062.96
  {"Oak Planks", CFrame.new(600, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[225] t=1781825064.36
  {"Oak Planks", CFrame.new(600, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[226] t=1781825065.76
  {"Oak Planks", CFrame.new(600, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[227] t=1781825067.16
  {"Oak Planks", CFrame.new(600, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[228] t=1781825068.56
  {"Oak Planks", CFrame.new(600, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[229] t=1781825069.96
  {"Oak Planks", CFrame.new(600, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[230] t=1781825071.36
  {"Oak Planks", CFrame.new(600, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[231] t=1781825072.76
  {"Oak Planks", CFrame.new(600, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[232] t=1781825074.16
  {"Oak Planks", CFrame.new(604, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[233] t=1781825075.56
  {"Oak Planks", CFrame.new(604, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[234] t=1781825076.96
  {"Oak Planks", CFrame.new(604, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[235] t=1781825078.36
  {"Oak Planks", CFrame.new(604, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[236] t=1781825079.76
  {"Oak Planks", CFrame.new(604, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[237] t=1781825081.16
  {"Oak Planks", CFrame.new(604, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[238] t=1781825082.56
  {"Oak Planks", CFrame.new(604, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[239] t=1781825083.96
  {"Oak Planks", CFrame.new(604, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[240] t=1781825085.36
  {"Oak Planks", CFrame.new(604, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[241] t=1781825086.76
  {"Oak Planks", CFrame.new(608, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[242] t=1781825088.16
  {"Oak Planks", CFrame.new(608, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[243] t=1781825089.56
  {"Oak Planks", CFrame.new(608, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[244] t=1781825090.96
  {"Oak Planks", CFrame.new(608, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[245] t=1781825092.36
  {"Oak Planks", CFrame.new(608, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[246] t=1781825093.76
  {"Oak Planks", CFrame.new(608, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[247] t=1781825095.16
  {"Oak Planks", CFrame.new(608, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[248] t=1781825096.56
  {"Oak Planks", CFrame.new(608, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[249] t=1781825097.96
  {"Oak Planks", CFrame.new(608, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
  --[250] t=1781825099.36
  {"Oak Planks", CFrame.new(612, 18, 144, 0, 0, 1, 0), workspace.Baseplate},
  --[251] t=1781825100.76
  {"Oak Planks", CFrame.new(612, 18, 148, 0, 0, 1, 0), workspace.Baseplate},
  --[252] t=1781825102.16
  {"Oak Planks", CFrame.new(612, 18, 152, 0, 0, 1, 0), workspace.Baseplate},
  --[253] t=1781825103.56
  {"Oak Planks", CFrame.new(612, 18, 156, 0, 0, 1, 0), workspace.Baseplate},
  --[254] t=1781825104.96
  {"Oak Planks", CFrame.new(612, 18, 160, 0, 0, 1, 0), workspace.Baseplate},
  --[255] t=1781825106.36
  {"Oak Planks", CFrame.new(612, 18, 164, 0, 0, 1, 0), workspace.Baseplate},
  --[256] t=1781825107.76
  {"Oak Planks", CFrame.new(612, 18, 168, 0, 0, 1, 0), workspace.Baseplate},
  --[257] t=1781825109.16
  {"Oak Planks", CFrame.new(612, 18, 172, 0, 0, 1, 0), workspace.Baseplate},
  --[258] t=1781825110.56
  {"Oak Planks", CFrame.new(612, 18, 176, 0, 0, 1, 0), workspace.Baseplate},
}

local claudehousev2 = {
  --[1] t=1781825415.31
  {"Cobblestone", CFrame.new(628, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[2] t=1781825416.71
  {"Cobblestone", CFrame.new(628, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[3] t=1781825418.11
  {"Cobblestone", CFrame.new(628, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[4] t=1781825419.51
  {"Cobblestone", CFrame.new(628, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[5] t=1781825420.91
  {"Cobblestone", CFrame.new(628, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[6] t=1781825422.31
  {"Cobblestone", CFrame.new(628, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[7] t=1781825423.71
  {"Cobblestone", CFrame.new(628, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[8] t=1781825425.11
  {"Cobblestone", CFrame.new(628, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[9] t=1781825426.51
  {"Cobblestone", CFrame.new(628, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[10] t=1781825427.91
  {"Cobblestone", CFrame.new(632, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[11] t=1781825429.31
  {"Cobblestone", CFrame.new(632, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[12] t=1781825430.71
  {"Cobblestone", CFrame.new(632, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[13] t=1781825432.11
  {"Cobblestone", CFrame.new(632, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[14] t=1781825433.51
  {"Cobblestone", CFrame.new(632, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[15] t=1781825434.91
  {"Cobblestone", CFrame.new(632, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[16] t=1781825436.31
  {"Cobblestone", CFrame.new(632, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[17] t=1781825437.71
  {"Cobblestone", CFrame.new(632, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[18] t=1781825439.11
  {"Cobblestone", CFrame.new(632, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[19] t=1781825440.51
  {"Cobblestone", CFrame.new(636, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[20] t=1781825441.91
  {"Cobblestone", CFrame.new(636, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[21] t=1781825443.31
  {"Cobblestone", CFrame.new(636, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[22] t=1781825444.71
  {"Cobblestone", CFrame.new(636, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[23] t=1781825446.11
  {"Cobblestone", CFrame.new(636, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[24] t=1781825447.51
  {"Cobblestone", CFrame.new(636, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[25] t=1781825448.91
  {"Cobblestone", CFrame.new(636, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[26] t=1781825450.31
  {"Cobblestone", CFrame.new(636, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[27] t=1781825451.71
  {"Cobblestone", CFrame.new(636, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[28] t=1781825453.11
  {"Cobblestone", CFrame.new(640, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[29] t=1781825454.51
  {"Cobblestone", CFrame.new(640, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[30] t=1781825455.91
  {"Cobblestone", CFrame.new(640, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[31] t=1781825457.31
  {"Cobblestone", CFrame.new(640, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[32] t=1781825458.71
  {"Cobblestone", CFrame.new(640, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[33] t=1781825460.11
  {"Cobblestone", CFrame.new(640, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[34] t=1781825461.51
  {"Cobblestone", CFrame.new(640, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[35] t=1781825462.91
  {"Cobblestone", CFrame.new(640, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[36] t=1781825464.31
  {"Cobblestone", CFrame.new(640, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[37] t=1781825465.71
  {"Cobblestone", CFrame.new(644, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[38] t=1781825467.11
  {"Cobblestone", CFrame.new(644, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[39] t=1781825468.51
  {"Cobblestone", CFrame.new(644, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[40] t=1781825469.91
  {"Cobblestone", CFrame.new(644, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[41] t=1781825471.31
  {"Cobblestone", CFrame.new(644, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[42] t=1781825472.71
  {"Cobblestone", CFrame.new(644, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[43] t=1781825474.11
  {"Cobblestone", CFrame.new(644, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[44] t=1781825475.51
  {"Cobblestone", CFrame.new(644, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[45] t=1781825476.91
  {"Cobblestone", CFrame.new(644, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[46] t=1781825478.31
  {"Cobblestone", CFrame.new(648, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[47] t=1781825479.71
  {"Cobblestone", CFrame.new(648, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[48] t=1781825481.11
  {"Cobblestone", CFrame.new(648, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[49] t=1781825482.51
  {"Cobblestone", CFrame.new(648, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[50] t=1781825483.91
  {"Cobblestone", CFrame.new(648, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[51] t=1781825485.31
  {"Cobblestone", CFrame.new(648, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[52] t=1781825486.71
  {"Cobblestone", CFrame.new(648, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[53] t=1781825488.11
  {"Cobblestone", CFrame.new(648, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[54] t=1781825489.51
  {"Cobblestone", CFrame.new(648, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[55] t=1781825490.91
  {"Cobblestone", CFrame.new(652, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[56] t=1781825492.31
  {"Cobblestone", CFrame.new(652, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[57] t=1781825493.71
  {"Cobblestone", CFrame.new(652, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[58] t=1781825495.11
  {"Cobblestone", CFrame.new(652, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[59] t=1781825496.51
  {"Cobblestone", CFrame.new(652, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[60] t=1781825497.91
  {"Cobblestone", CFrame.new(652, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[61] t=1781825499.31
  {"Cobblestone", CFrame.new(652, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[62] t=1781825500.71
  {"Cobblestone", CFrame.new(652, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[63] t=1781825502.11
  {"Cobblestone", CFrame.new(652, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[64] t=1781825503.51
  {"Cobblestone", CFrame.new(656, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[65] t=1781825504.91
  {"Cobblestone", CFrame.new(656, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[66] t=1781825506.31
  {"Cobblestone", CFrame.new(656, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[67] t=1781825507.71
  {"Cobblestone", CFrame.new(656, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[68] t=1781825509.11
  {"Cobblestone", CFrame.new(656, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[69] t=1781825510.51
  {"Cobblestone", CFrame.new(656, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[70] t=1781825511.91
  {"Cobblestone", CFrame.new(656, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[71] t=1781825513.31
  {"Cobblestone", CFrame.new(656, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[72] t=1781825514.71
  {"Cobblestone", CFrame.new(656, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[73] t=1781825516.11
  {"Cobblestone", CFrame.new(660, 2, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[74] t=1781825517.51
  {"Cobblestone", CFrame.new(660, 2, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[75] t=1781825518.91
  {"Cobblestone", CFrame.new(660, 2, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[76] t=1781825520.31
  {"Cobblestone", CFrame.new(660, 2, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[77] t=1781825521.71
  {"Cobblestone", CFrame.new(660, 2, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[78] t=1781825523.11
  {"Cobblestone", CFrame.new(660, 2, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[79] t=1781825524.51
  {"Cobblestone", CFrame.new(660, 2, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[80] t=1781825525.91
  {"Cobblestone", CFrame.new(660, 2, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[81] t=1781825527.31
  {"Cobblestone", CFrame.new(660, 2, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[82] t=1781825528.71
  {"Oak Log", CFrame.new(628, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[83] t=1781825530.11
  {"Oak Log", CFrame.new(628, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[84] t=1781825531.51
  {"Bricks", CFrame.new(632, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[85] t=1781825532.91
  {"Bricks", CFrame.new(632, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[86] t=1781825534.31
  {"Bricks", CFrame.new(636, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[87] t=1781825535.71
  {"Bricks", CFrame.new(636, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[88] t=1781825537.11
  {"Bricks", CFrame.new(640, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[89] t=1781825538.51
  {"Bricks", CFrame.new(640, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[90] t=1781825539.91
  {"Bricks", CFrame.new(644, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[91] t=1781825541.31
  {"Bricks", CFrame.new(648, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[92] t=1781825542.71
  {"Bricks", CFrame.new(648, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[93] t=1781825544.11
  {"Bricks", CFrame.new(652, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[94] t=1781825545.51
  {"Bricks", CFrame.new(652, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[95] t=1781825546.91
  {"Bricks", CFrame.new(656, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[96] t=1781825548.31
  {"Bricks", CFrame.new(656, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[97] t=1781825549.71
  {"Oak Log", CFrame.new(660, 6, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[98] t=1781825551.11
  {"Oak Log", CFrame.new(660, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[99] t=1781825552.51
  {"Bricks", CFrame.new(628, 6, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[100] t=1781825553.91
  {"Bricks", CFrame.new(660, 6, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[101] t=1781825555.31
  {"Bricks", CFrame.new(628, 6, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[102] t=1781825556.71
  {"Bricks", CFrame.new(660, 6, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[103] t=1781825558.11
  {"Bricks", CFrame.new(628, 6, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[104] t=1781825559.51
  {"Bricks", CFrame.new(660, 6, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[105] t=1781825560.91
  {"Bricks", CFrame.new(628, 6, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[106] t=1781825562.31
  {"Bricks", CFrame.new(660, 6, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[107] t=1781825563.71
  {"Bricks", CFrame.new(628, 6, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[108] t=1781825565.11
  {"Bricks", CFrame.new(660, 6, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[109] t=1781825566.51
  {"Bricks", CFrame.new(628, 6, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[110] t=1781825567.91
  {"Bricks", CFrame.new(660, 6, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[111] t=1781825569.31
  {"Bricks", CFrame.new(628, 6, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[112] t=1781825570.71
  {"Bricks", CFrame.new(660, 6, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[113] t=1781825572.11
  {"Oak Log", CFrame.new(628, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[114] t=1781825573.51
  {"Oak Log", CFrame.new(628, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[115] t=1781825574.91
  {"Bricks", CFrame.new(632, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[116] t=1781825576.31
  {"Bricks", CFrame.new(632, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[117] t=1781825577.71
  {"Glass", CFrame.new(636, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[118] t=1781825579.11
  {"Glass", CFrame.new(636, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[119] t=1781825580.51
  {"Bricks", CFrame.new(640, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[120] t=1781825581.91
  {"Bricks", CFrame.new(640, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[121] t=1781825583.31
  {"Glass", CFrame.new(644, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[122] t=1781825584.71
  {"Bricks", CFrame.new(648, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[123] t=1781825586.11
  {"Bricks", CFrame.new(648, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[124] t=1781825587.51
  {"Glass", CFrame.new(652, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[125] t=1781825588.91
  {"Glass", CFrame.new(652, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[126] t=1781825590.31
  {"Bricks", CFrame.new(656, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[127] t=1781825591.71
  {"Bricks", CFrame.new(656, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[128] t=1781825593.11
  {"Oak Log", CFrame.new(660, 10, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[129] t=1781825594.51
  {"Oak Log", CFrame.new(660, 10, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[130] t=1781825595.91
  {"Bricks", CFrame.new(628, 10, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[131] t=1781825597.31
  {"Bricks", CFrame.new(660, 10, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[132] t=1781825598.71
  {"Glass", CFrame.new(628, 10, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[133] t=1781825600.11
  {"Glass", CFrame.new(660, 10, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[134] t=1781825601.51
  {"Bricks", CFrame.new(628, 10, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[135] t=1781825602.91
  {"Bricks", CFrame.new(660, 10, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[136] t=1781825604.31
  {"Glass", CFrame.new(628, 10, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[137] t=1781825605.71
  {"Glass", CFrame.new(660, 10, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[138] t=1781825607.11
  {"Bricks", CFrame.new(628, 10, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[139] t=1781825608.51
  {"Bricks", CFrame.new(660, 10, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[140] t=1781825609.91
  {"Glass", CFrame.new(628, 10, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[141] t=1781825611.31
  {"Glass", CFrame.new(660, 10, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[142] t=1781825612.71
  {"Bricks", CFrame.new(628, 10, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[143] t=1781825614.11
  {"Bricks", CFrame.new(660, 10, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[144] t=1781825615.51
  {"Oak Log", CFrame.new(628, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[145] t=1781825616.91
  {"Oak Log", CFrame.new(628, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[146] t=1781825618.31
  {"Bricks", CFrame.new(632, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[147] t=1781825619.71
  {"Bricks", CFrame.new(632, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[148] t=1781825621.11
  {"Bricks", CFrame.new(636, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[149] t=1781825622.51
  {"Bricks", CFrame.new(636, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[150] t=1781825623.91
  {"Bricks", CFrame.new(640, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[151] t=1781825625.31
  {"Bricks", CFrame.new(640, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[152] t=1781825626.71
  {"Bricks", CFrame.new(644, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[153] t=1781825628.11
  {"Bricks", CFrame.new(644, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[154] t=1781825629.51
  {"Bricks", CFrame.new(648, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[155] t=1781825630.91
  {"Bricks", CFrame.new(648, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[156] t=1781825632.31
  {"Bricks", CFrame.new(652, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[157] t=1781825633.71
  {"Bricks", CFrame.new(652, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[158] t=1781825635.11
  {"Bricks", CFrame.new(656, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[159] t=1781825636.51
  {"Bricks", CFrame.new(656, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[160] t=1781825637.91
  {"Oak Log", CFrame.new(660, 14, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[161] t=1781825639.31
  {"Oak Log", CFrame.new(660, 14, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[162] t=1781825640.71
  {"Bricks", CFrame.new(628, 14, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[163] t=1781825642.11
  {"Bricks", CFrame.new(660, 14, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[164] t=1781825643.51
  {"Bricks", CFrame.new(628, 14, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[165] t=1781825644.91
  {"Bricks", CFrame.new(660, 14, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[166] t=1781825646.31
  {"Bricks", CFrame.new(628, 14, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[167] t=1781825647.71
  {"Bricks", CFrame.new(660, 14, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[168] t=1781825649.11
  {"Bricks", CFrame.new(628, 14, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[169] t=1781825650.51
  {"Bricks", CFrame.new(660, 14, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[170] t=1781825651.91
  {"Bricks", CFrame.new(628, 14, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[171] t=1781825653.31
  {"Bricks", CFrame.new(660, 14, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[172] t=1781825654.71
  {"Bricks", CFrame.new(628, 14, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[173] t=1781825656.11
  {"Bricks", CFrame.new(660, 14, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[174] t=1781825657.51
  {"Bricks", CFrame.new(628, 14, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[175] t=1781825658.91
  {"Bricks", CFrame.new(660, 14, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[176] t=1781825660.31
  {"Pink Wool", CFrame.new(628, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[177] t=1781825661.71
  {"Pink Wool", CFrame.new(628, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[178] t=1781825663.11
  {"Pink Wool", CFrame.new(632, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[179] t=1781825664.51
  {"Pink Wool", CFrame.new(632, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[180] t=1781825665.91
  {"Pink Wool", CFrame.new(636, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[181] t=1781825667.31
  {"Pink Wool", CFrame.new(636, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[182] t=1781825668.71
  {"Pink Wool", CFrame.new(640, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[183] t=1781825670.11
  {"Pink Wool", CFrame.new(640, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[184] t=1781825671.51
  {"Pink Wool", CFrame.new(644, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[185] t=1781825672.91
  {"Pink Wool", CFrame.new(644, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[186] t=1781825674.31
  {"Pink Wool", CFrame.new(648, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[187] t=1781825675.71
  {"Pink Wool", CFrame.new(648, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[188] t=1781825677.11
  {"Pink Wool", CFrame.new(652, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[189] t=1781825678.51
  {"Pink Wool", CFrame.new(652, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[190] t=1781825679.91
  {"Pink Wool", CFrame.new(656, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[191] t=1781825681.31
  {"Pink Wool", CFrame.new(656, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[192] t=1781825682.71
  {"Pink Wool", CFrame.new(660, 18, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[193] t=1781825684.11
  {"Pink Wool", CFrame.new(660, 18, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[194] t=1781825685.51
  {"Pink Wool", CFrame.new(628, 18, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[195] t=1781825686.91
  {"Pink Wool", CFrame.new(660, 18, 64, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[196] t=1781825688.31
  {"Pink Wool", CFrame.new(628, 18, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[197] t=1781825689.71
  {"Pink Wool", CFrame.new(660, 18, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[198] t=1781825691.11
  {"Pink Wool", CFrame.new(628, 18, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[199] t=1781825692.51
  {"Pink Wool", CFrame.new(660, 18, 72, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[200] t=1781825693.91
  {"Pink Wool", CFrame.new(628, 18, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[201] t=1781825695.31
  {"Pink Wool", CFrame.new(660, 18, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[202] t=1781825696.71
  {"Pink Wool", CFrame.new(628, 18, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[203] t=1781825698.11
  {"Pink Wool", CFrame.new(660, 18, 80, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[204] t=1781825699.51
  {"Pink Wool", CFrame.new(628, 18, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[205] t=1781825700.91
  {"Pink Wool", CFrame.new(660, 18, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[206] t=1781825702.31
  {"Pink Wool", CFrame.new(628, 18, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[207] t=1781825703.71
  {"Pink Wool", CFrame.new(660, 18, 88, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[208] t=1781825705.11
  {"Oak Planks", CFrame.new(628, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[209] t=1781825706.51
  {"Oak Planks", CFrame.new(628, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[210] t=1781825707.91
  {"Oak Planks", CFrame.new(628, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[211] t=1781825709.31
  {"Oak Planks", CFrame.new(628, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[212] t=1781825710.71
  {"Oak Planks", CFrame.new(628, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[213] t=1781825712.11
  {"Oak Planks", CFrame.new(628, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[214] t=1781825713.51
  {"Oak Planks", CFrame.new(628, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[215] t=1781825714.91
  {"Oak Planks", CFrame.new(628, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[216] t=1781825716.31
  {"Oak Planks", CFrame.new(628, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[217] t=1781825717.71
  {"Oak Planks", CFrame.new(632, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[218] t=1781825719.11
  {"Oak Planks", CFrame.new(632, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[219] t=1781825720.51
  {"Oak Planks", CFrame.new(632, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[220] t=1781825721.91
  {"Oak Planks", CFrame.new(632, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[221] t=1781825723.31
  {"Oak Planks", CFrame.new(632, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[222] t=1781825724.71
  {"Oak Planks", CFrame.new(632, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[223] t=1781825726.11
  {"Oak Planks", CFrame.new(632, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[224] t=1781825727.51
  {"Oak Planks", CFrame.new(632, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[225] t=1781825728.91
  {"Oak Planks", CFrame.new(632, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[226] t=1781825730.31
  {"Oak Planks", CFrame.new(636, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[227] t=1781825731.71
  {"Oak Planks", CFrame.new(636, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[228] t=1781825733.11
  {"Oak Planks", CFrame.new(636, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[229] t=1781825734.51
  {"Oak Planks", CFrame.new(636, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[230] t=1781825735.91
  {"Oak Planks", CFrame.new(636, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[231] t=1781825737.31
  {"Oak Planks", CFrame.new(636, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[232] t=1781825738.71
  {"Oak Planks", CFrame.new(636, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[233] t=1781825740.11
  {"Oak Planks", CFrame.new(636, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[234] t=1781825741.51
  {"Oak Planks", CFrame.new(636, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[235] t=1781825742.91
  {"Oak Planks", CFrame.new(640, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[236] t=1781825744.31
  {"Oak Planks", CFrame.new(640, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[237] t=1781825745.71
  {"Oak Planks", CFrame.new(640, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[238] t=1781825747.11
  {"Oak Planks", CFrame.new(640, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[239] t=1781825748.51
  {"Oak Planks", CFrame.new(640, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[240] t=1781825749.91
  {"Oak Planks", CFrame.new(640, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[241] t=1781825751.31
  {"Oak Planks", CFrame.new(640, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[242] t=1781825752.71
  {"Oak Planks", CFrame.new(640, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[243] t=1781825754.11
  {"Oak Planks", CFrame.new(640, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[244] t=1781825755.51
  {"Oak Planks", CFrame.new(644, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[245] t=1781825756.91
  {"Oak Planks", CFrame.new(644, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[246] t=1781825758.31
  {"Oak Planks", CFrame.new(644, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[247] t=1781825759.71
  {"Oak Planks", CFrame.new(644, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[248] t=1781825761.11
  {"Oak Planks", CFrame.new(644, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[249] t=1781825762.51
  {"Oak Planks", CFrame.new(644, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[250] t=1781825763.91
  {"Oak Planks", CFrame.new(644, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[251] t=1781825765.31
  {"Oak Planks", CFrame.new(644, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[252] t=1781825766.71
  {"Oak Planks", CFrame.new(644, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[253] t=1781825768.11
  {"Oak Planks", CFrame.new(648, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[254] t=1781825769.51
  {"Oak Planks", CFrame.new(648, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[255] t=1781825770.91
  {"Oak Planks", CFrame.new(648, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[256] t=1781825772.31
  {"Oak Planks", CFrame.new(648, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[257] t=1781825773.71
  {"Oak Planks", CFrame.new(648, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[258] t=1781825775.11
  {"Oak Planks", CFrame.new(648, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[259] t=1781825776.51
  {"Oak Planks", CFrame.new(648, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[260] t=1781825777.91
  {"Oak Planks", CFrame.new(648, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[261] t=1781825779.31
  {"Oak Planks", CFrame.new(648, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[262] t=1781825780.71
  {"Oak Planks", CFrame.new(652, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[263] t=1781825782.11
  {"Oak Planks", CFrame.new(652, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[264] t=1781825783.51
  {"Oak Planks", CFrame.new(652, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[265] t=1781825784.91
  {"Oak Planks", CFrame.new(652, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[266] t=1781825786.31
  {"Oak Planks", CFrame.new(652, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[267] t=1781825787.71
  {"Oak Planks", CFrame.new(652, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[268] t=1781825789.11
  {"Oak Planks", CFrame.new(652, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[269] t=1781825790.51
  {"Oak Planks", CFrame.new(652, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[270] t=1781825791.91
  {"Oak Planks", CFrame.new(652, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[271] t=1781825793.31
  {"Oak Planks", CFrame.new(656, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[272] t=1781825794.71
  {"Oak Planks", CFrame.new(656, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[273] t=1781825796.11
  {"Oak Planks", CFrame.new(656, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[274] t=1781825797.51
  {"Oak Planks", CFrame.new(656, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[275] t=1781825798.91
  {"Oak Planks", CFrame.new(656, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[276] t=1781825800.31
  {"Oak Planks", CFrame.new(656, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[277] t=1781825801.71
  {"Oak Planks", CFrame.new(656, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[278] t=1781825803.11
  {"Oak Planks", CFrame.new(656, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[279] t=1781825804.51
  {"Oak Planks", CFrame.new(656, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[280] t=1781825805.91
  {"Oak Planks", CFrame.new(660, 22, 60, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[281] t=1781825807.31
  {"Oak Planks", CFrame.new(660, 22, 64, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[282] t=1781825808.71
  {"Oak Planks", CFrame.new(660, 22, 68, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[283] t=1781825810.11
  {"Oak Planks", CFrame.new(660, 22, 72, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[284] t=1781825811.51
  {"Oak Planks", CFrame.new(660, 22, 76, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[285] t=1781825812.91
  {"Oak Planks", CFrame.new(660, 22, 80, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[286] t=1781825814.31
  {"Oak Planks", CFrame.new(660, 22, 84, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[287] t=1781825815.71
  {"Oak Planks", CFrame.new(660, 22, 88, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[288] t=1781825817.11
  {"Oak Planks", CFrame.new(660, 22, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[289] t=1781825818.51
  {"Lamp", CFrame.new(640, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[290] t=1781825819.91
  {"Lamp", CFrame.new(648, 6, 92, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[291] t=1781825821.31
  {"Oak Leaves", CFrame.new(628, 2, 56, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[292] t=1781825822.71
  {"Oak Leaves", CFrame.new(628, 2, 96, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[293] t=1781825824.11
  {"Oak Leaves", CFrame.new(636, 2, 56, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[294] t=1781825825.51
  {"Oak Leaves", CFrame.new(636, 2, 96, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[295] t=1781825826.91
  {"Oak Leaves", CFrame.new(644, 2, 56, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[296] t=1781825828.31
  {"Oak Leaves", CFrame.new(644, 2, 96, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[297] t=1781825829.71
  {"Oak Leaves", CFrame.new(652, 2, 56, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[298] t=1781825831.11
  {"Oak Leaves", CFrame.new(652, 2, 96, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[299] t=1781825832.51
  {"Oak Leaves", CFrame.new(660, 2, 56, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[300] t=1781825833.91
  {"Oak Leaves", CFrame.new(660, 2, 96, -1, 0, -4.371138828673793e-08, 0), workspace.Baseplate},
  --[301] t=1781825835.31
  {"Oak Leaves", CFrame.new(624, 2, 60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[302] t=1781825836.71
  {"Oak Leaves", CFrame.new(664, 2, 60, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[303] t=1781825838.11
  {"Oak Leaves", CFrame.new(624, 2, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[304] t=1781825839.51
  {"Oak Leaves", CFrame.new(664, 2, 68, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[305] t=1781825840.91
  {"Oak Leaves", CFrame.new(624, 2, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[306] t=1781825842.31
  {"Oak Leaves", CFrame.new(664, 2, 76, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[307] t=1781825843.71
  {"Oak Leaves", CFrame.new(624, 2, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[308] t=1781825845.11
  {"Oak Leaves", CFrame.new(664, 2, 84, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[309] t=1781825846.51
  {"Oak Leaves", CFrame.new(624, 2, 92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
  --[310] t=1781825847.91
  {"Oak Leaves", CFrame.new(664, 2, 92, -4.371138828673793e-08, 0, 1, 0), workspace.Baseplate},
}

local Eventb = game:GetService("ReplicatedStorage").Events.Place
local plr = game:GetService("Players").LocalPlayer

Tab2:Button("Sub to Vaehz", function()

    for i,v in pairs(subtovaehz) do
        plr.Character:PivotTo(v[2])
        task.wait()
        Eventb:InvokeServer(table.unpack(v))
        
    end
    plr.Character.HumanoidRootPart.Anchored = false
end)

Tab2:Button("Castle", function()

    for i,v in pairs(castle) do
        plr.Character:PivotTo(v[2])
        task.wait()
        Eventb:InvokeServer(table.unpack(v))
        
    end
    plr.Character.HumanoidRootPart.Anchored = false
end)

Tab2:Button("Cool pattern", function()

    for i,v in pairs(coolpattern) do
        plr.Character:PivotTo(v[2])
        task.wait()
        Eventb:InvokeServer(table.unpack(v))
        
    end
    plr.Character.HumanoidRootPart.Anchored = false
end)

Tab2:Button("Claude's House", function()
    plr.Character:MoveTo(Vector3.new(596, 6, 160))
    for i,v in pairs(claudeshouse) do
        Eventb:InvokeServer(table.unpack(v))
    end
end)

Tab2:Button("Claude's House V2", function()
    plr.Character:MoveTo(Vector3.new(644, 6, 76))
    for i,v in pairs(claudehousev2) do
        spawn(function()
            Eventb:InvokeServer(table.unpack(v))
        end)
    end
end)


-- ==========================================
-- TROLL FEATURES & MODIFICATIONS SECTION
-- ==========================================

local Tab3 = Window:AddSection("troll features")

local Eventb = game:GetService("ReplicatedStorage").Events.Place
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- 1. Cage around every player except the user executing the script
Tab3:Button("Cage All Players", function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local pos = hrp.Position
            
            -- Offsets to place blocks as walls, a floor, and a ceiling around the player
            local offsets = {
                Vector3.new(0, -3, 0),  -- Floor
                Vector3.new(0, 5, 0),   -- Ceiling
                Vector3.new(4, 1, 0),   -- Front Wall
                Vector3.new(-4, 1, 0),  -- Back Wall
                Vector3.new(0, 1, 4),   -- Right Wall
                Vector3.new(0, 1, -4)   -- Left Wall
            }
            
            for _, offset in pairs(offsets) do
                local cf = CFrame.new(pos + offset)
                task.spawn(function()
                    Eventb:InvokeServer("Cobblestone", cf, workspace.Baseplate)
                end)
            end
        end
    end
end)

-- 2. Build a massive cube relative to the user's position
Tab3:Button("Massive Cube Everywhere", function()
    if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    
    local center = localPlayer.Character.HumanoidRootPart.Position
    local cubeSize = 4 -- Generates a cube of blocks
    local blockSpacing = 4 -- Set grid step size matching block width
    
    for x = -cubeSize, cubeSize do
        for y = -cubeSize, cubeSize do
            for z = -cubeSize, cubeSize do
                local offset = Vector3.new(x * blockSpacing, y * blockSpacing, z * blockSpacing)
                local cf = CFrame.new(center + offset)
                task.spawn(function()
                    Eventb:InvokeServer("Cobblestone", cf, workspace.Baseplate)
                end)
            end
        end
    end
end)

-- 3. Place blocks directly inside all other players
Tab3:Button("Blocks Inside Players", function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local pos = hrp.Position
            
            -- Place two blocks inside the player's direct area
            task.spawn(function()
                Eventb:InvokeServer("Cobblestone", CFrame.new(pos), workspace.Baseplate)
            end)
            task.spawn(function()
                Eventb:InvokeServer("Cobblestone", CFrame.new(pos + Vector3.new(0, 3, 0)), workspace.Baseplate)
            end)
        end
    end
end)

-- 4. Extra Troll Button: Blind Ceiling (Spawns a massive layer of blocks over everyone's head)
Tab3:Button("Sky Ceiling Blanket", function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local pos = hrp.Position
            
            -- Spawns a platform directly above the player's tracking field
            for x = -2, 2 do
                for z = -2, 2 do
                    local cf = CFrame.new(pos + Vector3.new(x * 4, 10, z * 4))
                    task.spawn(function()
                        Eventb:InvokeServer("Oak Leaves", cf, workspace.Baseplate)
                    end)
                end
            end
        end
    end
end)

-- 5. Extra Troll Button: Trap Beneath Players (Replaces underneath players with basic stone blocks)
Tab3:Button("Trap Beneath Players", function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local pos = hrp.Position
            
            local cf = CFrame.new(pos + Vector3.new(0, -4, 0))
            task.spawn(function()
                Eventb:InvokeServer("Bricks", cf, workspace.Baseplate)
            end)
        end
    end
end)
