-- Countdown Client Script --

local ScreenW, ScreenH = guiGetScreenSize()
timeleftbg = guiCreateStaticImage(ScreenW/2-108/2, 15, 108, 24, 'timeleft.png', false, nil)
guiSetProperty(timeleftbg, "Visible", "False")
function clientRenderCountdown()
	local countdownSource = getElementData(localPlayer, "cdn.countdownSource")
	if (countdownSource) then
		local countdownTime = getElementData(countdownSource, "cdn.countdownTime")
		if (countdownTime) then
			local countdownPrev = getElementData(localPlayer, "cdn.countdownPrev")
			if (countdownPrev) then
				if (countdownPrev ~= countdownTime) then
					if (countdownTime == 0) then
						--playSoundFrontEnd(45)
						setTimer(stopClientCountdown, 1500, 1)
					else
						--playSoundFrontEnd(44)
					end
					setElementData(localPlayer, "cdn.countdownPrev", countdownTime)
				end
			else
				setElementData(localPlayer, "cdn.countdownPrev", countdownTime)
			end
			if (countdownTime == 0) then
				--dxDrawText("Time Out!", (ScreenW - 64) / 2, 0, (ScreenW + 64) / 2, 236, tocolor(10, 255, 10, 215), 5, "pricedown", "center", "bottom", false, false, true)
			else
				guiSetProperty(timeleftbg, "Visible", "True")
				--timeleft = guiCreateLabel(ScreenW/2-108/2, 19, 108, 30," ", false)
				--dxDrawText(tostring(countdownTime), (ScreenW - 64) / 2, 0, (ScreenW + 64) / 2, 236, tocolor(255, 255, 255, 215), 5, "pricedown", "center", "bottom", false, false, true)
				dxDrawText(tostring(countdownTime), (ScreenW - 64) / 2, 0, (ScreenW + 64) / 2, 43, tocolor(255, 255, 255, 215), 1, "pricedown", "center", "bottom", false, false, true)
			end
			return
		end
	end
	stopClientCountdown()
end

function stopClientCountdown()
	guiSetProperty(timeleftbg, "Visible", "False")
	removeEventHandler("onClientRender", root, clientRenderCountdown)
	setElementData(localPlayer, "cdn.countdownSource", false)
end
addEvent("tamomshod", true)
addEventHandler("tamomshod", root, stopClientCountdown)

function countdownSet(SourcePlayer)
	setElementData(localPlayer, "cdn.countdownSource", SourcePlayer)
	addEventHandler("onClientRender", root, clientRenderCountdown)
	if (SourcePlayer ~= localPlayer) then
	end
end
addEvent("cdn.countdown_set", true)
addEventHandler("cdn.countdown_set", resourceRoot, countdownSet)