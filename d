local p = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local pastebinURL = "https://pastebin.com/rcjbvf8T"
local whitelistData = HttpService:GetAsync(pastebinURL)
local whitelist = HttpService:JSONDecode(whitelistData)

if whitelist[p.UserId] then
    -- Your existing code for whitelisted users goes here
    game.StarterGui:SetCore("SendNotification", {
        Title = "Press [Y] To Toggle";
        Text = "By EvenPast7903";
        Duration = 15;
    })

    -- Continue with the rest of your code
else
    -- Handle non-whitelisted users here
    print("You are not whitelisted to use this script.")
end
