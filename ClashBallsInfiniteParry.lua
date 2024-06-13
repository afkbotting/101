local lastanim = nil
local lastchange = game.ReplicatedStorage.VA.TargetPlayer.Value
local anims = {"rbxassetid://14948120460","rbxassetid://14948115850","rbxassetid://14956791372","rbxassetid://14956788249","rbxassetid://14956777030"}
function distance(x,y)
return (x.Position - y.Position).Magnitude
end
function run()
local anim = anims[math.random(1,#anims)]
if anim ~= lastanim then
lastanim = anim
local speed = game.ReplicatedStorage.VA.AnimSpeed
local animationInstance = Instance.new("Animation")
animationInstance.AnimationId = anim
local animationTrack = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(animationInstance)
animationTrack:AdjustSpeed(speed.Value)
animationTrack:Play()
else
run()
end
end
local player = game.Players.LocalPlayer
game.ReplicatedStorage.VA.TargetPlayer.Changed:Connect(function()
if lastchange ~= nil then
if lastchange.Name == player.Name then
run()
end
end
lastchange = game.ReplicatedStorage.VA.TargetPlayer.Value
end)
while task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("BattingEvent"):FireServer(false)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("BattingEvent"):FireServer(true)
end
