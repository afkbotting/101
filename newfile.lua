local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Doors But kinda hacked.", HidePremium = false, SaveConfig = true, ConfigFolder = "CheapHacked", IntroEnabled = true, IntroText = "Doors But kinda hacked."})
local plr = game.Players.LocalPlayer

if game.PlaceId == 10873387885 then

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
    Name = "Spawn Rotating Blocks (FE)",
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
LTab:AddButton({
    Name = "Spawn Rotating Blocks (INSTANTLY)",
    Callback = function()
              for i,v in pairs(game.Workspace:GetDescendants()) do
local args = {
    [1] = game.Players.LocalPlayer.Character,
    [2] = v
}

game:GetService("ReplicatedStorage"):WaitForChild("Crucify"):FireServer(unpack(args))
end
end    
})

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
LTab:AddButton({
    Name = "Destroy Elevators (FE)",
    Callback = function()
              for i,v in pairs(game.Workspace.Lobbys:GetChildren()) do
local args = {
    [1] = game.Players.LocalPlayer.Character,
    [2] = v.OutPosition
}

game:GetService("ReplicatedStorage"):WaitForChild("Crucify"):FireServer(unpack(args))
end
end    
})
OrionLib:Init()

elseif game.PlaceId == 10926417608 then

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
GTab:AddButton({
	Name = "Get 30 Door Code (Will be in ur clipboard)",
	Callback = function(Value)
local first = game.Workspace.ShapeCode1.Value
local second = game.Workspace.ShapeCode2.Value
local ed = game.Workspace.ShapeCode3.Value
local fd = game.Workspace.ShapeCode4.Value

setclipboard(first.Num.Value..second.Num.Value..ed.Num.Value..fd.Num.Value)
	end	  
})

GTab:AddLabel("Put from ur clipboard code to chat.")
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
local TTab = Window:MakeTab({
    Name = "Trolling",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
TTab:AddButton({
	Name = "Crucifix Halt",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Crucifix")
wait(0.25)
local plrx = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
local plry = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + 1
local plrz = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
local args = {
    [1] = "Halt",
    [2] = CFrame.new(plrx, plry, plrz, 0.499999523, 0, -0.866023064, 0, 1, 0, 0.866022766, 0, 0.499999136),
    [3] = game.Players.LocalPlayer.Character.Crucifix
}

game:GetService("ReplicatedStorage"):WaitForChild("CrucifyEntityEvent"):FireServer(unpack(args))

	end	  
})
TTab:AddButton({
	Name = "Crucifix Screech",
	Callback = function(Value)
game.ReplicatedStorage.GetItem:FireServer("Crucifix")
wait(0.25)
local plrx = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
local plry = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + 1
local plrz = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
local args = {
    [1] = "Screech",
    [2] = CFrame.new(plrx, plry, plrz, 0.499999523, 0, -0.866023064, 0, 1, 0, 0.866022766, 0, 0.499999136),
    [3] = game.Players.LocalPlayer.Character.Crucifix
}

game:GetService("ReplicatedStorage"):WaitForChild("CrucifyEntityEvent"):FireServer(unpack(args))

	end	  
})
TTab:AddButton({
	Name = "Kill All (In Game) (FE)",
	Callback = function(Value)
for i,v in pairs(game.Players:GetChildren()) do
game.ReplicatedStorage.DamageHumanoid:FireServer(v.Character.Humanoid, 100)
end
end
})
TTab:AddTextbox({
	Name = "Damage All",
	Default = "10",
	TextDisappear = true,
	Callback = function(Value)
for i,v in pairs(game.Players:GetChildren()) do
game.ReplicatedStorage.DamageHumanoid:FireServer(v.Character.Humanoid, Value)
end
	end	  
})
TTab:AddTextbox({
	Name = "Heal All",
	Default = "10",
	TextDisappear = true,
	Callback = function(Value)
for i,v in pairs(game.Players:GetChildren()) do
game.ReplicatedStorage.DamageHumanoid:FireServer(v.Character.Humanoid, tonumber("-"..Value))
end
	end	  
})
end
OrionLib:Init()

