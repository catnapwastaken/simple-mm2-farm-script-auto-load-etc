local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local farmScriptURL = "https://gist.githubusercontent.com/catnapwastaken/185700fbddde0d2253237c8c73e61d9d/raw/75156dfcbbd975bab73eee00c5ce5d4e77e07cce/MM2%2520auto%2520farm"

queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/catnapwastaken/simple-mm2-farm-script-auto-load-etc/refs/heads/main/auto%20rejoin%20main%20script"))()')

game:GetService("CoreGui"):WaitForChild("RobloxPromptGui").PromptDisconnected.DescendantAdded:Connect(function()
    task.wait(2)
    TeleportService:Teleport(game.PlaceId, player)
end)
loadstring(game:HttpGet(farmScriptURL))()
