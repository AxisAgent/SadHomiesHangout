local rep = game:GetService("ReplicatedStorage") --You can change this to ServerStorage for more security.
local nametag = rep.NameTag 

--Functions
game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		--Varibles
		local head = char.Head
		local newtext = nametag:Clone() --Cloning the text.
		local uppertext = newtext.UpperText
		local lowertext = newtext.LowerText
		local humanoid = char.Humanoid
		
		humanoid.DisplayDistanceType = "None"
		
		--Main Text
		newtext.Parent = head
		newtext.Adornee = head
		uppertext.Text = player.Name --Changes the text to the player's name.
		
		if player.Name == "AxisAgent" then
			uppertext.TextColor3 = Color3.fromRGB(85, 0, 255) --This is what the color of the text will be.
			uppertext.Text = player.Name .. "[CREATOR]"
		end
		--player.leaderstats.Level.Changed:Connect(function()
			--lowertext.Text = "Level:" .. player.leaderstats.Level.Value
		--end)
	end)
end)
