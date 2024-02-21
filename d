local pastebinUrl = "https://pastebin.com/nS9Sk2Cv" -- Replace PASTEBIN_URL_HERE with your actual Pastebin URL

local whitelist = {}

game:HttpGet(pastebinUrl, true, function(data)
    local userIds = {}
    for id in data:gmatch("%d+") do
        table.insert(userIds, id)
    end
    for _, userId in ipairs(userIds) do
        whitelist[userId] = true
    end
end)

game.Players.PlayerAdded:Connect(function(player)
    if whitelist[player.UserId] then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Press [Y] To Toggle",
            Text = "By EvenPast7903",
            Duration = 15,
        })

        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        })

        game.StarterGui:SetCore("SendNotification", {
            Title = "Notice",
            Text = "Anti-Afk Ran",
            Duration = 10,
        })
        print("Anti-AFK Ran")
    else
        player:Kick("You are not whitelisted to play this game.")
    end
end)

local Xcom911 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local GUIHead = Instance.new("Frame")
