workspace.Objects.Remotes.GiveXP.OnServerEvent:Connect(function(plr,xp)
	-- give code up here --
	plr.hiddenstats.curxp.Value = plr.hiddenstats.curxp.Value + xp.Value
	-- registering levels and stuff --
	if plr.hiddenstats.curxp.Value == plr.hiddenstats.needxp.Value or plr.hiddenstats.curxp.Value > plr.hiddenstats.needxp.Value then
		plr.leaderstats.Level.Value = plr.leaderstats.Level.Value + 1
		plr.hiddenstats.curxp.Value = 0
		plr.hiddenstats.needxp.Value = 60 * plr.leaderstats.Level.Value
	end
end)
