local accSys = exports["e_login"]
local miscSys = exports["misc"]
local dbpTime = 500


function sakhtFactionLeader ( thePlayer, command, player, factionID )
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
		outputChatBox("#ff0000Shoma Dastresi Be In Dastoor Nadarid!", thePlayer, 230, 0, 0, true)
		return false
	end
	local find = miscSys:findPlayer ( player )
	if player then
	if find then
		factionID = tonumber( factionID)
			if factionID == 0 then
				local targetPlayer = getPlayerName ( find )
				setElementData(accSys:getPlayerAcc(find), "Map", 0)
				setElementData(accSys:getPlayerAcc(find), "MapR", 0)
				setPlayerNametagColor ( find, 255, 255, 255 )
				outputChatBox("#00ff00[Done]: #ffffffShoma #00ff00"..targetPlayer.." #ffffffRa Az Maperi Kick Shod ", thePlayer, 0, 255, 0, true)
				outputChatBox("#ffffffShoma Tavasote #00ff00"..getPlayerName(thePlayer).." #ffffff Az Maperi Kick Shodid !", find, 255, 0, 255, true)
			
			else
				local targetPlayer = getPlayerName ( find )
				setElementData(accSys:getPlayerAcc(find), "Map", factionID)
				setElementData(accSys:getPlayerAcc(find), "MapR", 3)
				outputChatBox("#00ff00[Done]: #ffffffShoma #00ff00"..targetPlayer.." #ffffffRa Be Leader,  Maperi ID "..factionID.." #ffffffDavat Kardid!", thePlayer, 0, 255, 0, true)
				outputChatBox("#ff00ff[- Tabrik -]#ffffff Shoma Tavasote #00ff00"..getPlayerName(thePlayer).." #ffffffBe Leader, Maperi ID #00ff00"..factionID.."#ffffff Davat Shodid!", find, 255, 0, 255, true)
			end
		else
				outputChatBox("#ff0000[Error]: #ffffffPlayer Peyda Nashod!", thePlayer, 255, 0, 0, true)
		end
	else
		outputChatBox("#C0C0C0Syntax: /mp <PartOfName/ID> <Faction-ID>", thePlayer, 255, 22, 22, true)
	end
end
addCommandHandler("mp", sakhtFactionLeader)


--/asetfrank
addCommandHandler("msetrank",
	function ( thePlayer, command, player, rankID )
		if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "Admin")) < 9 then
			outputChatBox("#ff0000Shoma Dastresi Be In Dastoor Nadarid!", thePlayer, 230, 0, 0, true)
			return false
		end
		local find = miscSys:findPlayer ( player )
		if find then
			rankID = tonumber( rankID)
			if rankID == 1 then
				local targetPlayer = getPlayerName ( find )
				setElementData(accSys:getPlayerAcc(find), "MapR", 1)
				outputChatBox("#00ff00[Done]: #ffffffShoma #00ff00"..targetPlayer.." #ffffffRa Be Maperi Rank'e #00ff00OzV #ffffffDavat Kardid!", thePlayer, 0, 255, 0, true)
				outputChatBox("#00ff00[Tavajoh] #ffffff"..getPlayerName(thePlayer).." #00ff00Shoma Ra Be Maperi Rank'e #ff0000OzV #00ff00Davat Kard!", find, 255, 0, 255, true)
			elseif rankID == 2 then
				local targetPlayer = getPlayerName ( find )
				setElementData(accSys:getPlayerAcc(find), "MapR", 2)
				outputChatBox("#00ff00[Done]: #ffffffShoma #00ff00"..targetPlayer.." #ffffffRa Be Maperi Rank'e #00ff00Sub-Leader #ffffffDavat Kardid!", thePlayer, 0, 255, 0, true)
				outputChatBox("#00ff00[Tavajoh] #ffffff"..getPlayerName(thePlayer).." #00ff00Shoma Ra Be Maperi Rank'e #ff0000Sub-Leader  #00ff00Davat Kard!", find, 255, 0, 255, true)
			elseif rankID == 3 then
				local targetPlayer = getPlayerName ( find )
				setElementData(accSys:getPlayerAcc(find), "MapR", 3)
				outputChatBox("#00ff00[Done]: #ffffffShoma #00ff00"..targetPlayer.." #ffffffRa Be Maperi Rank'e #00ff00Leader #ffffffDavat Kardid!", thePlayer, 0, 255, 0, true)
				outputChatBox("#00ff00[Tavajoh] #ffffff"..getPlayerName(thePlayer).." #00ff00Shoma Ra Be Maperi Rank'e #ff0000Leader #00ff00Davat Kard!", find, 255, 0, 255, true)
			else
				outputChatBox("#ff0000Error: Rank ID Eshtebah Mibashad! (1~3)", thePlayer, 255, 0, 0, true)
			end
		else
			outputChatBox("#C0C0C0Syntax: /msetrank <PartOfName/ID> <1~3>", thePlayer, 255, 22, 22, true)
		end
	end
)


	
addCommandHandler("invite",
function ( thePlayer, command, player )
	local rank = getElementData(accSys:getPlayerAcc(thePlayer), "MapR")
	local member = getElementData(accSys:getPlayerAcc(thePlayer), "Map")
		if tonumber(rank) <= 1 then
			outputChatBox("#ff0000Error: Baraye Inkar Bayad Sub-Leader/Leader Bashid!", thePlayer, 230, 0, 0, true)
			return false
		end
		local find = miscSys:findPlayer ( player )
		if player then
		if find then
		if find ~= thePlayer then
			local playerMember = getElementData(accSys:getPlayerAcc(find), "Map")
			if tonumber(playerMember) == 0 then
				outputChatBox("#00ff00Shoma #ffffff"..getPlayerName(find).." #00ff00Ra Be Maperi Khod #ffffffDavat #00ff00Kardid!", thePlayer, 230, 0, 0, true)
					setElementData(accSys:getPlayerAcc(find), "Map", tonumber(member))
					setElementData(accSys:getPlayerAcc(find), "MapR", 1)
					outputChatBox("#00ff00Leader "..getPlayerName(thePlayer).."  Shoma Ra Dar Maperi OzV Kard!", find, 255, 22, 22, true)
			else
				outputChatBox("#ff0000Error: In Player Dakhel Maperi Mibashad!", thePlayer, 230, 0, 0, true)
			end
		else
			outputChatBox("#ff0000Error: Khodet Ra Ke Nemitoni Davat Koni!", thePlayer, 255, 22, 22, true)
		end
		else
			outputChatBox("#ff0000Error: Player Peyda Nashod!", thePlayer, 255, 22, 22, true)
		end
		else
			outputChatBox("#C0C0C0Syntax: /invite <PartOfName/ID>", thePlayer, 255, 22, 22, true)
		end
end)



function openFactionPanel2( thePlayer )
	if getElementData(thePlayer, "loggedIn") == true then
	--if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pAdmin")) > 7  then
	if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "MapR")) == 2 or tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "MapR")) == 3 then
		triggerClientEvent("toggleFcPanel2", thePlayer, thePlayer)
	end
	end
end
addEvent("openFactionPanel2",true)
addEventHandler("openFactionPanel2", root,openFactionPanel2)

function infoFacSetKon(root)
	local query = dbQuery(exports.mysql:getMySQLC(), "SELECT * FROM user;" )
	local result, numrows = dbPoll(query, dbpTime)
	for index, row in pairs(result) do
	local myFac = tonumber(getElementData(accSys:getPlayerAcc(root), "Map"))
	local factioneyaru = row['Map']
	if tonumber(factioneyaru) == tonumber(myFac) then
	local name = row['Name']
	local rank = row['MapR']
	local lvl = tostring(row['Level'])
	local fmember = name
		triggerClientEvent("infoFactionPanel", root, fmember, lvl)
	end
	end
end
addEvent("infoFaction",true)
addEventHandler("infoFaction", root,infoFacSetKon)



addEvent("getPlayerFactionData",true)
addEventHandler("getPlayerFactionData",getRootElement(),function(client,finalName)
	local query = dbQuery(exports.mysql:getMySQLC(), "SELECT * FROM user;" )
	local result, numrows = dbPoll(query, dbpTime)
	for index, row in pairs(result) do
		local pName = row["Name"]
		if pName == finalName then
			local pLevel = row["Level"]
			local pFWarn = row["Map"]
			local ID = row["ID"]
			local pRank = row["MapR"]
			if pRank == 3 then
				finalRank = "Leader"
			elseif pRank == 2 then
				finalRank = "Sub-Leader"
			else
				finalRank = "OzV"
			end
			triggerClientEvent("SetPlayerDataOnGui",client,client,pLevel,pFWarn,ID,finalRank)
		end
	end
end)


addEvent("KickeshKonAzToFac2",true)
addEventHandler("KickeshKonAzToFac2",getRootElement(),function(client,fName,fFp)
	local query = dbQuery(exports.mysql:getMySQLC(), "SELECT * FROM user;" )
	local result, numrows = dbPoll(query, dbpTime)
	for index, row in pairs(result) do
		local pName = row["Name"]
		if pName == fName then
			if getPlayerName(client) ~= fName then
				local pRank = row["MapR"]
				if pRank ~= 3 then
					local myID = row["ID"]
					local query1 = dbQuery(exports.mysql:getMySQLC(), "UPDATE `user` SET `Map` = ?, `MapR` = ? WHERE `ID` = '"..myID.."'",0,0)

					if getPlayerFromName(fName) then
						local yaruOnlineHast = getPlayerFromName(fName)						
						setElementData(accSys:getPlayerAcc(yaruOnlineHast),"Map",0)
						setElementData(accSys:getPlayerAcc(yaruOnlineHast),"MapR",0)
						exports["notf"]:addNotification(yaruOnlineHast,"Shoma Az Maperi Kick Shodid","error")
						outputChatBox("#00ff00Shoma Az Maperi Kick Shodid", yaruOnlineHast, 255, 22, 22, true)
					end
					
					exports["notf"]:addNotification(client,"Player "..fName.." Az Maperi Ba Movafaqiat Kick Shod!","info")
					dbFree(query1)
					dbFree(query2)
					triggerEvent("infoFaction",client,client)
					triggerClientEvent("reloadPageEvent",client,client)
				else
					exports["notf"]:addNotification(client,"Leader Ro Ke Nemishe Kick Kard!","error")
				end
			else
				exports["notf"]:addNotification(client,"Khodeto Nemitooni Kick Bedi!","info")
			end
		end
	end
end)
