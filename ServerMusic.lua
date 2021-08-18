local ids = {
	'5268636819',
	'1233640372',
	'5080605486',
	'2687873691'
}

local marketPlaceService = game:GetService("MarketplaceService")


while true do
	wait(0.001)
	for i = 1, #ids do
		local Song = ids[i]
		local SongInfo = marketPlaceService:GetProductInfo(Song)
		
		workspace.CurrentSong.SoundId = "rbxassetid://" .. Song
		workspace.CurrentSong:Play()
		
		workspace.Objects.Remotes.NotifyPlayers:FireAllClients("Currently Playing:" .. SongInfo.Name,"New Song Playing!")
		
		repeat wait() until workspace.CurrentSong.IsPlaying == false
			
	end
end
