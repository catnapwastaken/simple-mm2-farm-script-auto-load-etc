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
local farmScriptURL = "https://gist.githubusercontent.com/catnapwastaken/185700fbddde0d2253237c8c73e61d9d/raw/168e59677e35998854907aa2d5a7c0fdd60c7839/MM2%2520auto%2520farm"
loadstring(game:HttpGet(farmScriptURL))()
