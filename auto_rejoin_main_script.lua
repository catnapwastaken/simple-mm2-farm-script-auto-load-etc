print("✅ Rejoin script loaded!")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local rejoinScriptURL = "https://raw.githubusercontent.com/catnapwastaken/simple-mm2-farm-script-auto-load-etc/main/auto_rejoin.lua"
queue_on_teleport('loadstring(game:HttpGet("' .. rejoinScriptURL .. '"))()')
local function setupDisconnectListener()
    local promptGui = game:GetService("CoreGui"):WaitForChild("RobloxPromptGui", 10)
    if promptGui then
        promptGui.ChildAdded:Connect(function(child)
            if child.Name == "ErrorPrompt" then
                warn(" Disconnected... Rejoining")
                task.wait(2)
                TeleportService:Teleport(game.PlaceId, player)
            end
        end)
    else
        warn("RobloxPromptGui not found")
    end
end
setupDisconnectListener()
local farmScriptURL = "https://raw.githubusercontent.com/moonlast/MM2/refs/heads/main/SummerFarm"
loadstring(game:HttpGet(farmScriptURL))()
