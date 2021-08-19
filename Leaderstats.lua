local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local LevelAndXpStore1 = DataStoreService:GetDataStore("LevelAndXpStore1_1")
local LevelAndXpStore2 = DataStoreService:GetDataStore("LevelAndXpStore2_2")
local function leaderboardSetup(player)
	local data2 = LevelAndXpStore2:GetAsync(player.UserId)
	local data1 = LevelAndXpStore1:GetAsync(player.UserId)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	

	local lvl = Instance.new("IntValue")
	lvl.Name = "Level"
	lvl.Value = data1
	lvl.Parent = leaderstats
	if not data1 then
		lvl.Value = 1
	end
	local PlayTime = Instance.new("IntValue")
	PlayTime.Name = "MinutesPlayed"
	PlayTime.Value = data1
	PlayTime.Parent = leaderstats
	
	player.leaderstats.MinutesPlayed.Changed:Connect(function()
		player.leaderstats.Level.Value = player.leaderstats.Level.Value + 1
	end)
end

-- Connect the "leaderboardSetup()" function to the "PlayerAdded" event
Players.PlayerAdded:Connect(leaderboardSetup)

Players.PlayerRemoving:Connect(function(player)
	LevelAndXpStore1:SetAsync(player.UserId,player.leaderstats.Level.Value)
	LevelAndXpStore2:SetAsync(player.UserId,player.leaderstats.MinutesPlayed.Value)
end)


