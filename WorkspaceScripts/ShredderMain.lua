local on = false

script.Parent.Touched:Connect(function(hit)
	if on == false then
		if hit.Parent:WaitForChild("Humanoid") then
			on = true
			local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
			script.Parent.OnKo:Play()
			hit.Parent.Humanoid.Health = 0
			workspace.Objects.Remotes.NotifyPlayers:FireAllClients(plr.Name .." Was Just Slain","Player Went Into The Shredder")
			wait(2)
			on = false
		end
	end
end)
