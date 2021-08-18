local badgeSRV = game:GetService("BadgeService")
local bool = false
local function sus(plr)
	if bool == false then
		bool = true
		script.Parent.amogus:Play()
		workspace.Objects.Remotes.NotifyPlayers:FireAllClients(plr.Name .. " Has Just Found suspicous...","Player Found Badge!")
	end
end
script.Parent.Touched:Connect(function(hit)
	if hit.Parent then
		if hit.Parent:WaitForChild("Humanoid") then
			local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
			if plr then
				if badgeSRV:UserHasBadgeAsync(plr.UserId,2124806488) then
					print("already has it!")
				else
					print("giving")
					sus(plr)
					badgeSRV:AwardBadge(plr.UserId,2124806488)
				end
			end
		end
	end
end)
