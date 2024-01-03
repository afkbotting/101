function message(title,message,duration)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = title;
    Text = message;
    Duration = duration
})
end
local function sus(e)

		local vim = game:GetService("VirtualInputManager")
		local rs = game:GetService("RunService")
		local plr = game.Players.LocalPlayer
		local main = plr.PlayerGui.Main

		
		local AutoPlayer = true
		local Player = 1
		
		spawn(function()
			while task.wait() do
			if plr.Character.Humanoid.Health == 0 then
			    break
		    end
				if AutoPlayer then
				
					if plr.File.CurrentPlayer.Value then
						if plr.File.CurrentPlayer.Value.Name == "Player1" then
							Player = 1
						elseif plr.File.CurrentPlayer.Value.Name == "Player2" then
							Player = 2
						end
					else
						Player = 0
					end
				end
			end
		end)
		
		function lol(num,keke)
			local antilag = 0
			local speed = 0.02
			local tyingarrow = {}
			while true do
			if plr.Character.Humanoid.Health == 0 then
			break
			end
				antilag += 1
				if antilag >= 10 then
					antilag = 0
					task.wait()
				end
				if AutoPlayer then
					if Player > 0 and plr.Character ~= nil then
					   if main:WaitForChild("MatchFrame", 5) ~= nil then
						for i,v in pairs(main.MatchFrame["KeySync".. Player]["Arrow".. num].Notes:GetChildren()) do
							if v:IsA("ImageLabel") then
								if v.Position.Y.Scale <= speed and not table.find(tyingarrow,v) then
									table.insert(tyingarrow,v)
									vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
									spawn(function()
										local hold = main.MatchFrame["KeySync".. Player]["Arrow".. num].Hold.Hitbox:WaitForChild(v.Name,0.1)
										local antilag2 = 0
										if hold and hold.Size.Y.Scale > 0 then
											repeat 
												antilag += 1
												if antilag >= 10 then
													antilag = 0
													task.wait()
												end
												if not hold then 
													break 
												end 
											until hold.Position.Y.Scale+hold.Size.Y.Scale <= speed
										end
										vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil) 
										table.remove(tyingarrow,i)
									end)
								end
							end
						end
					end
					end
				end
			end
		end

		spawn(function()
			lol(1,"A")
		end)
		spawn(function()
			lol(2,"S")
		end)
		spawn(function()
			lol(3,"W")
		end)
		spawn(function()
			lol(4,"D")
		end)
		if e == "true" then
		message("Restarted Auto Player", "Now it work", 3)
		end
	end
	sus()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(3)
	sus("true")
	end)
	message("FNF REMIX AUTO PLAYER", "100% Wins", 10)
