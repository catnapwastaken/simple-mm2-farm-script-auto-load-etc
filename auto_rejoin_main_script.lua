-- ✅ MM2 Rejoin + Farm with Persistent Self-Queueing
print("✅ Rejoin script loaded!")

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Your hosted GitHub raw URL to this very script
local rejoinScriptURL = "https://raw.githubusercontent.com/catnapwastaken/simple-mm2-farm-script-auto-load-etc/main/auto_rejoin.lua"

-- Queue this same script after teleport, forever loop
queue_on_teleport('loadstring(game:HttpGet("' .. rejoinScriptURL .. '"))()')

-- Detect kick/disconnect using ErrorPrompt
local function setupDisconnectListener()
    local promptGui = game:GetService("CoreGui"):WaitForChild("RobloxPromptGui", 10)
    if promptGui then
        promptGui.ChildAdded:Connect(function(child)
            if child.Name == "ErrorPrompt" then
                warn("🔁 Disconnected... Rejoining")
                task.wait(2)
                TeleportService:Teleport(game.PlaceId, player)
            end
        end)
    else
        warn("⚠️ RobloxPromptGui not found")
    end
end

setupDisconnectListener()

-- Run your farm script now
local farmScriptURL = "https://gist.githubusercontent.com/catnapwastaken/185700fbddde0d2253237c8c73e61d9d/raw/75156dfcbbd975bab73eee00c5ce5d4e77e07cce/MM2%2520auto%2520farm"
loadstring(game:HttpGet(farmScriptURL))()
