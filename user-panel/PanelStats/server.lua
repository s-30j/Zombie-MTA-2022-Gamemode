---------------------------------
-------**Script By zezaw**-------
---------------------------------

local accSys = exports["e_login"]
local miscSys = exports["misc"]

-- Scripte Etelaate player --
function statsetkon(root)
	local levelesh = getElementData(accSys:getPlayerAcc(root), "Level")
	local respectash = getElementData(accSys:getPlayerAcc(root), "Exp")
	local mail = getElementData(accSys:getPlayerAcc(root), "ID")
	--local ref = getElementData(accSys:getPlayerAcc(root), "ID")
	ref = "Normal"
		
		local accountname = getAccountName(getPlayerAccount(root))
		if isObjectInACLGroup("user." .. accountname, aclGetGroup("Admin")) then
			ref = "ADMIN" --prefix for the outputs
		elseif isObjectInACLGroup("user." .. accountname, aclGetGroup("VIP")) then
			ref = "VIP" --prefix for the outputs
		end
	local bankaParasi = getElementData(accSys:getPlayerAcc(root), "ZP")
	local faction = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	
	local number = miscSys:FormatPN(getElementData(accSys:getPlayerAcc(root), "ID"))
	local LevEx = 3
	local NexLev = getElementData(accSys:getPlayerAcc(root), "ID") + 1
	local EveryExForLevUp = NexLev * LevEx;
	local registerArq = "Gheyre Faal"
	local lastArq = getElementData(accSys:getPlayerAcc(root), "ID")
	local preArq1 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	local preArq2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	local preArq3 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	if preArq1 == 0 and preArq2 == 0 and  preArq3 == 0 then
		preArq = "Gheyre Faal"
	elseif preArq1 >= 1 or preArq2 >= 1 or preArq3 >= 1  then
		preArq = "Faal"
	end
	local hisJob = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	if hisJob == 0 then
		hisJob = "Bikar"
	elseif hisJob == 1 then
		hisJob = "Bus Driver"
	elseif hisJob == 2 then
		hisJob = "Street Washer"
	elseif hisJob == 3 then
		hisJob = "Pilot"
	elseif hisJob == 4 then
		hisJob = "Trucker"
	elseif hisJob == 5 then
		hisJob = "Unknown"
	elseif hisJob == 6 then
		hisJob = "Fisher Man"
	end
		genderesh = "Vared Nashode"
	
	local slotesh = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	if tonumber(slotesh) == 0 then
		slotesh = "0"
	end
	
	local namesh = getPlayerName(root) -- For Name --
	local agesh = tonumber(getElementData(accSys:getPlayerAcc(root), "Age")) -- For Age --
	local carlic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Car Lic --
	local motorlic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Motor Lic --
	local flylic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Fly Lic --
	local boatlic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Boat Lic --
	local matlic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Mat Lic --
	local gunlic = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Gun Lic --
	local materialskill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Mat Skill -
	local BusSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Bus Skill --
	local pilotskill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Pilot Skill --
	local TrcukerSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Trcuker Skill --
	local StSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Trcuker Skill --
	local PlayTimePlayer = tonumber(getElementData(accSys:getPlayerAcc(root), "Play")) -- For Play Time --
	
	
	-- For Gun Skill --
	
	local Ak47GSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Ak Skill -
	local DesertGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Desert Skill -
	local M4GSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For M4 Skill -
	local MP5GSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Mp5 Skill -
	local PistolsGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Pistol Skill -
	local SawensGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Sawnoff Skill -
	local ShotgunGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Shotgun Skill -

	local SniperGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Sniper Skill -
	local Spaz12GSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Spaz12 Skill -
	local UziGSkill = tonumber(getElementData(accSys:getPlayerAcc(root), "ID")) -- For Uzi Skill -
	-- For Gheyre Faal Car Lic --
	local carlicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local carlicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))
	

	local motorlicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local motorlicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local flylicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local flylicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local boatlicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local boatlicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local matlicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local matlicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local gunlicV = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	local gunlicV2 = tonumber(getElementData(accSys:getPlayerAcc(root), "ID"))

	
	triggerClientEvent("upstats", root, root, levelesh, respectash, mail, ref, faction, number, EveryExForLevUp, registerArq, lastArq, preArq, hisJob, genderesh, namesh, agesh, bankaParasi, slotesh, carlic, carlicV, carlicV2,motorlic, motorlicV, motorlicV2, flylic, flylicV, flylicV2, boatlic, boatlicV, boatlicV2, matlic, matlicV, matlicV2, gunlic, gunlicV, gunlicV2, materialskill, BusSkill, pilotskill, TrcukerSkill, StSkill, PlayTimePlayer,Ak47GSkill,DesertGSkill,M4GSkill,MP5GSkill,PistolsGSkill,SawensGSkill,ShotgunGSkill,SniperGSkill,Spaz12GSkill,UziGSkill)
end
addEvent("StatPlayer",true)
addEventHandler("StatPlayer", root,statsetkon)
------------------------------------------------------

-- Buylevel System --
local kolaanEx = 3
function buyNewLevel( thePlayer, command )
	local playerLevel = getElementData(accSys:getPlayerAcc(thePlayer), "pLevel")
	local NexLev = tonumber(playerLevel) + 1
	local neededEx = tonumber(NexLev) * tonumber(kolaanEx)
	
	local niazeLevel = tonumber(neededEx) - getElementData(accSys:getPlayerAcc(thePlayer), "pExp")
	if getElementData(accSys:getPlayerAcc(thePlayer), "pExp") < tonumber(neededEx) then
		triggerClientEvent ( thePlayer, "PlayError", thePlayer)
		return exports["notf"]:addNotification(thePlayer, "Shoma Be "..tonumber(niazeLevel).." Respect Baraye Afzayesh Level Niaz Darid!" , 'error')
	end

	exports["notf"]:addNotification(thePlayer, "Tabrik! ,Shoma Level "..NexLev.." Shodid." , 'success')
	triggerClientEvent ( thePlayer, "PlayMovafagh", thePlayer)
	local newLevel = tonumber(playerLevel) + 1
	setElementData(accSys:getPlayerAcc(thePlayer), "pLevel", tonumber(newLevel))
	setElementData(thePlayer, "levelPlayer", tonumber(newLevel))

-- For Pak Nashodan Respect Baraye Premium --
    if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pGoldPremium")) >= 1 or tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pSilverPremium")) >= 1 or tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pBronzePremium")) >= 1 then
		local ExpHayePlayer = getElementData(accSys:getPlayerAcc(thePlayer), "pExp");
		local nowTotal = tonumber(ExpHayePlayer) - tonumber(neededEx)
		setElementData(accSys:getPlayerAcc(thePlayer), "pExp", nowTotal)
	else
		setElementData(accSys:getPlayerAcc(thePlayer), "pExp", tonumber(0))
	end
	local finally = getElementData(accSys:getPlayerAcc(thePlayer), "pExp")
	setElementData(accSys:getPlayerAcc(thePlayer), "pExp", finally)
end
addEvent("bekharleveloo",true)
addEventHandler("bekharleveloo", root, buyNewLevel)