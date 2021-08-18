local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local LevelAndXpStore1 = DataStoreService:GetDataStore("LevelAndXpStore1")
local LevelAndXpStore2 = DataStoreService:GetDataStore("LevelAndXpStore2")
local StartValLvl = 1
local StartValXp = 30
local function leaderboardSetup(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local hs = Instance.new("Folder")
	hs.Name = "hiddenstats"
	hs.Parent = player

	local lvl = Instance.new("IntValue")
	lvl.Name = "Level"
	lvl.Value = LevelAndXpStore1:GetAsync(player.UserId)
	lvl.Parent = leaderstats
	
	local xpl = Instance.new("IntValue")
	xpl.Name = "curxp"
	xpl.Value = LevelAndXpStore2:GetAsync(player.UserId)
	xpl.Parent = hs
	local xpl2 = Instance.new("IntValue")
	xpl2.Name = "xpneed"
	xpl2.Value = 30 * lvl.Value
	xpl2.Parent = hs
end

-- Connect the "leaderboardSetup()" function to the "PlayerAdded" event
Players.PlayerAdded:Connect(leaderboardSetup)

Players.PlayerRemoving:Connect(function(player)
	LevelAndXpStore1:SetAsync(player.UserId,player.leaderstats.Level.Value)
	LevelAndXpStore2:SetAsync(player.UserId,player.hiddenstats.curxp.Value)
end)
