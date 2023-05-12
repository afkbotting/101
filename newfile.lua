local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Doors But kinda hacked.", HidePremium = false, SaveConfig = true, ConfigFolder = "CheapHacked", IntroEnabled = true, IntroText = "Doors But kinda hacked."})
local plr = game.Players.LocalPlayer
local LTab = Window:MakeTab({
    Name = "Lobby",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

LTab:AddTextbox({
    Name = "Bottom Text Everyone (FE)",
    Default = "Hello! I am real dev 100%!!!!",
    TextDisappear = true,
    Callback = function(Value)
        game.ReplicatedStorage.AddText:FireServer(Value)
    end      
})
LTab:AddButton({
    Name = "Destroy Lobby (FE)",
    Callback = function()
              for i,v in pairs(game.Workspace:GetDescendants()) do
local args = {
    [1] = game.Players.LocalPlayer.Character,
    [2] = v
}

game:GetService("ReplicatedStorage"):WaitForChild("Crucify"):FireServer(unpack(args))
wait(0.1)
end
end    
})
LTab:AddLabel("It teleport to you parts that rotates.")
LTab:AddButton({
    Name = "Kill All (FE)",
    Callback = function()
              for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = game.Players.LocalPlayer.Character,
    [2] = game.Workspace[v.Name].Head
}

game:GetService("ReplicatedStorage"):WaitForChild("Crucify"):FireServer(unpack(args))
end
      end    
})
local GTab = Window:MakeTab({
    Name = "Game",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
GTab:AddTextbox({
	Name = "Gain Coins",
	Default = "100",
	TextDisappear = true,
	Callback = function(Value)
game.ReplicatedStorage.GainCoins:FireServer(Value)
	end	  
})
GTab:AddTextbox({
	Name = "Gain Revive",
	Default = "1",
	TextDisappear = true,
	Callback = function(Value)
game.ReplicatedStorage.GainRevive:FireServer(Value)
	end	  
})

GTab:AddButton({
	Name = "Revive",
	Callback = function(Value)
game.ReplicatedStorage.ReviveEvent:FireServer()
	end	  
})
GTab:AddLabel("Used to bypass you can revive only once.")
local ITab = Window:MakeTab({
    Name = "Items",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
ITab:AddButton({
	Name = "Give Flashlight",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Flashlight")
	end	  
})
ITab:AddButton({
	Name = "Give Paper (From door 30)",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Paper")
	end	  
})
ITab:AddButton({
	Name = "Give BlackKey",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("BlackKey")
	end	  
})
ITab:AddButton({
	Name = "Give Crucifix",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Crucifix")
	end	  
})
ITab:AddButton({
	Name = "Give Vitamins",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Vitamins")
	end	  
})
ITab:AddButton({
	Name = "Give Gummy Flashlight",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("ShakeLight")
	end	  
})
ITab:AddButton({
	Name = "Give Candle",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Candle")
	end	  
})
ITab:AddButton({
	Name = "Give Lighter",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Lighter")
	end	  
})
ITab:AddButton({
	Name = "Give Lockpick (Opens blocked door.)",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Lockpick")
	end	  
})
ITab:AddButton({
	Name = "Give NVS-35 (Tablet)",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("NVS-35")
	end	  
})
OrionLib:Init()

