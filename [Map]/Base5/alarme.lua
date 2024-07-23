RestricLocation = {}
TeleportLocation = {}
EnabledAlarm = true
ColCuboid = false

--------------------------------------- CONFIGS --------------------------------------------


RestricLocation["location1"] = {-2242.017578125 ,721.63671875 ,49.414062} -- Local 1
RestricLocation["location2"] = { -2157.25390625 ,577.4775390625 ,94.766174316406 } -- Local 2
TeleportLocation = { -2147.837890625 ,560.5302734375 ,35.023422241211 } -- Local de TP
GroupName = "Map1" -- Nome da Gang ou Grupo ACL
GroupNameBy = 2 -- 1 para Gang, e 2 para ACL
MsgInvasao = ""
EnableVehicleGodMode = true -- Habilitar
HabilitarAdmin = false -- Todos admins vao poder entrar na base
GodMode = false -- Ao entrar na área protegida, habilita GodMode
NaoAtirar = false -- Ao entrar na área protegida, não podera atirar


local accSys = exports["e_login"]


function sendMsg(iplayer,msg)
  outputChatBox ( msg, iplayer, 255, 0, 0, true )
end

function EnterPlace ( theElement )
	if getElementData(theElement, "logedin") then
		if getElementData(theElement, "loggedIn") then
			local veh = getPedOccupiedVehicle(theElement)
			local accName = getAccountName(getPlayerAccount(theElement))
				--if ( isObjectInACLGroup ("user."..accName, aclGetGroup ( "Admin" ) ) ) then
			if tonumber(getElementData(accSys:getPlayerAcc(theElement), "Map")) == 30 then
				return
				end
			--if (getElementType ( theElement ) == "player") and (PlayerHaveLevel (theElement) == false) then
				sendMsg(theElement,MsgInvasao)
				if veh then
				setElementPosition( veh, TeleportLocation[1], TeleportLocation[2], TeleportLocation[3])
				else
				setElementPosition( theElement, TeleportLocation[1], TeleportLocation[2], TeleportLocation[3])
				end
				sendMsgOwners(theElement)
			--end
		end
	end
	if getElementData(theElement,"zombie") == true then
		if getElementData(theElement,"logedin") == true then
		
		else
			killPed(theElement)
			setTimer(function()
				destroyElement ( theElement )
			end,2000,1)
		end
	end
end

function ExitPlace ( theElement )
	if getElementData(theElement,"zombie") == true then
		if getElementData(theElement,"logedin") == true then
		
		else
			killPed(theElement)
		end
	end
end

function ResourceStart( )
	LoadLocations()
	CreateCollision()
end
addEventHandler( "onResourceStart", getResourceRootElement( getThisResource() ),ResourceStart)

function LoadLocations()
	local RX, RY, RZ, WRX, WRX, WRX
	if(RestricLocation["location1"][1] > RestricLocation["location2"][1]) then
		RestricLocation["maxx"] = RestricLocation["location1"][1]
		RestricLocation["minx"] = RestricLocation["location2"][1]
	else
		RestricLocation["maxx"] = RestricLocation["location2"][1]
		RestricLocation["minx"] = RestricLocation["location1"][1]
	end
	if(RestricLocation["location1"][2] > RestricLocation["location2"][2]) then
		RestricLocation["maxy"] = RestricLocation["location1"][2]
		RestricLocation["miny"] = RestricLocation["location2"][2]
	else
		RestricLocation["maxy"] = RestricLocation["location2"][2]
		RestricLocation["miny"] = RestricLocation["location1"][2]
	end
	if(RestricLocation["location1"][3] > RestricLocation["location2"][3]) then
		RestricLocation["maxz"] = RestricLocation["location1"][3]
		RestricLocation["minz"] = RestricLocation["location2"][3]
	else
		RestricLocation["maxz"] = RestricLocation["location2"][3]
		RestricLocation["minz"] = RestricLocation["location1"][3]
	end
end

function CreateCollision()
	RX = RestricLocation["minx"]
	WRX = RestricLocation["maxx"] - RestricLocation["minx"]
	RY = RestricLocation["miny"]
	WRY = RestricLocation["maxy"] - RestricLocation["miny"]
	RZ = RestricLocation["minz"]
	WRZ = RestricLocation["maxz"] - RestricLocation["minz"]
	ColCuboid = createColCuboid ( RX, RY, RZ, WRX, WRY, WRZ )
	if ColCuboid then
		addEventHandler ( "onColShapeHit", ColCuboid, EnterPlace )
		addEventHandler ( "onColShapeLeave", ColCuboid, ExitPlace )
	else
		--outputDebugString("Erro, verifique: location1 e location2")
	end
end

function ResourceStop( )
	destroyElement ( ColCuboid )
end
addEventHandler( "onResourceStop", getResourceRootElement( getThisResource() ),ResourceStop)

function sendMsgOwners( PlayerID )
	--[[local connectedPlayers = getElementsByType ( "player" )
	for i, aPlayer in ipairs(connectedPlayers) do
			sendMsg(aPlayer,"" ..getPlayerName ( PlayerID ) .." Omad To Base!!")
	end]]
	for k, acwarn in ipairs (getElementsByType("player")) do
		if getElementData(acwarn , "loggedIn") == true then
			--if tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 1 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 2 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 3 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 4 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 5 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 6 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 7 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 8 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 9 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 10 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pAdmin")) == 10 or tonumber(getElementData(accSys:getPlayerAcc(acwarn), "pJasos")) == 2 then
			if tonumber(getElementData(accSys:getPlayerAcc(acwarn), "Map")) == 30 then
				--outputChatBox("#ff0000[Admin-Warn]: #ffffff "..Message2.."", acwarn, 54, 181, 75,true)
				--outputChatBox(" #ffffff "..Mesg.."", acwarn, 54, 181, 75,true)
				sendMsg(acwarn,"" ..getPlayerName ( PlayerID ) .." Omad To Base!!")
				--playSoundFrontEnd ( acwarn, 48 )
			end
		end
	end
end

