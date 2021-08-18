local RunService = game:GetService("RunService")

local Music = workspace:WaitForChild("CurrentSong")
local CurrentCamera = workspace.CurrentCamera

local ScreenShakeSettings = {
	CameraMinFOV = 75,
	CameraMaxFOV = 80,
	CameraMaxVolume = 1200
}


game:GetService("RunService").RenderStepped:connect(function()
	local CurrentLoudness = Music.PlaybackLoudness
	local FOV = ScreenShakeSettings.CameraMinFOV + (ScreenShakeSettings.CameraMaxFOV - ScreenShakeSettings.CameraMinFOV) * (CurrentLoudness / ScreenShakeSettings.CameraMaxVolume)
	if FOV >= 75 then
		CurrentCamera.FieldOfView = FOV
	else
		CurrentCamera.FieldOfView = 75
	end
end)
