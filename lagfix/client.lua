-- credits to Sam@ke for bitdepth shader technique which was used here

local screenWidth, screenHeight = guiGetScreenSize()

-- settings
local bitDepth = 256 -- between 1 and 256
local tileFactor = 1 -- between 1 and 64, dont edit
local LagFix = false

function lagfix()
		if not (screenSource) then
		  if LagFix then 
			eightBitShader = dxCreateShader("8bit.fx")
			screenSource = dxCreateScreenSource(screenWidth, screenHeight)
			setCloudsEnabled(false)
			setFarClipDistance(220)
			setHeatHaze(0)
			setInteriorSoundsEnabled(false)
			setMoonSize(0)
			setOcclusionsEnabled(true)
			setSunSize(1)
			setBlurLevel(0)
			setCameraClip(false, false)
			engineSetAsynchronousLoading(false, true)
			setBirdsEnabled(false)
			setAmbientSoundEnabled("general", false)
			setWorldSoundEnabled(0, 0, false, true)
			setWorldSoundEnabled(0, 29, false, true)
			setWorldSoundEnabled(0, 30, false, true)
			setWindVelocity(0, 0, 0)
			setPedVoice(getLocalPlayer(), "PED_TYPE_DISABLED", "")
			setWorldSpecialPropertyEnabled("randomfoliage", false)
			setWorldSpecialPropertyEnabled("extraairresistance", false)
			addEventHandler("onClientHUDRender", root, doIt)
		elseif (screenSource) and (eightBitShader) then
			screenSource:destroy()
			screenSource = nil
			eightBitShader:destroy()
			eightBitShader = nil

			resetFarClipDistance()
			setCloudsEnabled(true)
			setInteriorSoundsEnabled(true)
			setAmbientSoundEnabled("general", true)
			removeEventHandler("onClientHUDRender", root, doIt)
		end
	end
end
function doIt()
	if (eightBitShader) and (screenSource) then
		screenSource:update()
		local tiles = {screenWidth / tileFactor, screenHeight / tileFactor}
		eightBitShader:setValue("screenSource", screenSource)
		eightBitShader:setValue("bitDepth", bitDepth)
		eightBitShader:setValue("tiles", tiles)
		dxDrawImage(0, 0, screenWidth, screenHeight, eightBitShader)
	end
end
addEvent("LowQualityOn",true)
addEventHandler("LowQualityOn",getLocalPlayer(),
function (root)
	LagFix = true
end)

addEvent("LowQualityOff",true)
addEventHandler("LowQualityOff",getLocalPlayer(),
function (root)
	LagFix = false
end)





lagfix()
lagfix()
setTimer(function()
	lagfix()
end,30000,0)