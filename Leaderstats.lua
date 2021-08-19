local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local LevelAndXpStore1 = DataStoreService:GetDataStore("LevelAndXpStore1")
local function leaderboardSetup(player)
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
end

-- Connect the "leaderboardSetup()" function to the "PlayerAdded" event
Players.PlayerAdded:Connect(leaderboardSetup)

Players.PlayerRemoving:Connect(function(player)
	LevelAndXpStore1:SetAsync(player.UserId,player.leaderstats.Level.Value)
end)
