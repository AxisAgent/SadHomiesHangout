script.Parent.Touched:Connect(function()
	script.Parent.TouchedVA.Value = script.Parent.TouchedVA.Value + 1
	
	if script.Parent.TouchedVA.Value > 50 then
		script.Parent.Fire.Enabled = true
		script.Parent.Face1.Transparency = 1
		script.Parent.Beast.Transparency = 0
		script.Parent.BillboardGui.TextLabel.Text = "Mr Angry Ball."
	end
end)
