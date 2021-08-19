workspace.Objects.Remotes.NotifyPlayers.OnClientEvent:Connect(function(text,title)
	local sg = game:GetService("StarterGui")
	
	sg:SetCore("SendNotification",{
		Title = title,
		Text = text,
		Duration = 5
	})
end)
