-- Countdown Server Script --
sanie = false
local LimitOfUse = 1 -- A required delay (in seconds) between uses of countdown (default is 40)
local RadiusOfPlayersInvolved = 1 -- Players who are under this radius (distance from countdown triggerer) will be involved in countdown (default is 30)
local MinCountdownSeconds = 1 -- Minimum countdown seconds (default is 3)
local MaxCountdownSeconds = 950 -- Maximum countdown seconds (default is 12)

function startCountdown(Player, Command, Seconds)
	if (getElementData(Player, "cdn.countdownSource")) then
	else
		local lastUsed = getElementData(Player, "cdn.lastUsed")
		local currentUse = getRealTime().timestamp
		if (lastUsed) then
			local delayOfUse = currentUse - lastUsed
			if (delayOfUse >= LimitOfUse) then
				initiateCountdown(Player, Command, tonumber(Seconds), currentUse)
			else
			end
		else
			initiateCountdown(Player, Command, tonumber(Seconds), currentUse)
		end
	end
end
addCommandHandler("cdqweq", startCountdown)


addCommandHandler("c1s",
function()
	for k, Hame in ipairs (getElementsByType("player")) do
		sanie = false
		triggerClientEvent(Hame, "cdn.countdown_set", root, root)
	end
end)

function initiateCountdown(Player, Command, Seconds, currentUse)
	if (Seconds) then
		if ((Seconds >= MinCountdownSeconds) and (Seconds <= MaxCountdownSeconds)) then
			setElementData(Player, "cdn.lastUsed", currentUse)
			setElementData(Player, "cdn.countdownTime", Seconds)
			local Participants = 0
			for _, v in pairs(getElementsByType("player")) do
				local x1, y1, z1 = getElementPosition(Player)
				local x2, y2, z2 = getElementPosition(v)
				--if (getDistanceBetweenPoints3D(x1, y1, z1, x2, y2, z2) <= RadiusOfPlayersInvolved) then
					if not (getElementData(v, "cdn.countdownSource")) then
						triggerClientEvent(v, "cdn.countdown_set", resourceRoot, Player)
						Participants = Participants + 1
					end
				--end
			end
			outputChatBox("Your countdown", Player, 75, 215, 0)
			setTimer(doCountdown, 1000, Seconds, Player)
			sanie = true
		else
			outputChatBox("Countdown length must be between " .. tostring(MinCountdownSeconds) .. " and " .. tostring(MaxCountdownSeconds) .. " seconds!", Player, 245, 25, 0)
		end
	else
		outputChatBox("Countdown syntax is /" .. Command .. " [seconds]", Player, 245, 25, 0)
	end
end

function doCountdown(Player)
	if sanie ~= true then
		return else
	end
	local Timer = tonumber(getElementData(Player, "cdn.countdownTime"))
	if (Timer) then
		Timer = Timer - 1
		setElementData(Player, "cdn.countdownTime", Timer)
	end
end