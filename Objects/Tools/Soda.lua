local canDrink = true
local tool = script.Parent

tool.Equipped:Connect(function()
	local hum = tool.Parent.Humanoid
	local anim = hum:LoadAnimation(script.Parent.Animation)
	
	tool.Activated:Connect(function()
	    if canDrink == true then
		  canDrink = false
		  script.Parent.Handle.Sound:Play()
		  anim:Play()
		  wait(3.989)
		  canDrink = true
		end
	end)
end)
