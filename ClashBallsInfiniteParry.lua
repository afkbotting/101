local anims = {"rbxassetid://14948120460","rbxassetid://14948115850","rbxassetid://14956791372","rbxassetid://14956788249","rbxassetid://14956777030"}
function distance(x,y)
return (x.Position - y.Position).Magnitude
end
function run()
local anim = anims[math.random(1,#anims)]
local animationInstance = Instance.new("Animation")
animationInstance.AnimationId = anim
local animationTrack = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(animationInstance)
animationTrack:Play()
end
local player = game.Players.LocalPlayer
game.Workspace.EffectStorage.ChildAdded:Connect(function(v)
if v:IsA("BasePart") and distance(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v) <= 10 then
run()
end
end)
while true do
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("BattingEvent"):FireServer(false)
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("BattingEvent"):FireServer(true)
wait()
end
