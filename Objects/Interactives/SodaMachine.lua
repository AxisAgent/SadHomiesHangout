local canDrop = true

script.Parent.Prompt.ProximityPrompt.Triggered:Connect(function()
	if canDrop == true then
		canDrop = false
	    local clone = game.ServerStorage.Soda:Clone()
	    script.Parent.Coin:Play()
	    clone.Parent = workspace
		clone.Handle.Position = script.Parent.DropArea.Position
		wait(2)
		canDrop = true
	end
end)
