-- Place this inside StarterPlayerScripts or StarterGui
local Lighting = game:GetService("Lighting")

-- Disable global shadows
Lighting.GlobalShadows = false

-- Function to turn off shadows on existing parts
local function disableShadows(object)
	if object:IsA("BasePart") then
		object.CastShadow = false
	end
end

-- Clear shadows for everything currently in the workspace
for _, object in ipairs(workspace:GetDescendants()) do
	disableShadows(object)
end

-- Clear shadows for any new parts that get added later
workspace.DescendantAdded:Connect(disableShadows)
