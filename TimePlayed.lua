local timeDelay = 60

game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Wait()
	while true do
		wait(timeDelay)
		plr.leaderstats.MinutesPlayed.Value = plr.leaderstats.MinutesPlayed.Value + 1
	end
end)
