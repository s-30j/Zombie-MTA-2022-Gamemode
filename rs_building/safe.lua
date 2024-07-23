RestricLocation = {}
TeleportLocation = {}
EnabledAlarm = true
ColCuboid = false

--------------------------------------- CONFIGS --------------------------------------------


RestricLocation["location1"] = {  72.822265625 ,-857.03515625 ,-136.921875  } -- Local 1
RestricLocation["location2"] = {  3104.5888671875 ,-2691.1220703125 ,581.078125  } -- Local 2
TeleportLocation = {2446.9326171875 ,943.4599609375 ,10.8203} -- Local de TP
GroupName = "Map4" -- Nome da Gang ou Grupo ACL
GroupNameBy = 2 -- 1 para Gang, e 2 para ACL
MsgInvasao = ""
EnableVehicleGodMode = true -- Habilitar
HabilitarAdmin = false -- Todos admins vao poder entrar na base
GodMode = false -- Ao entrar na área protegida, habilita GodMode
NaoAtirar = false -- Ao entrar na área protegida, não podera atirar


--------------------------------------- CONFIGS --------------------------------------------

function sendMsg(iplayer,msg)
  outputChatBox ( msg, iplayer, 255, 0, 0, true )
end

function EnterPlace ( theElement )
	if getElementData(theElement, "logedin") then
		if getElementData(theElement, "loggedIn") then
		--	setElementData(theElement,"buildcreate", false)
        --    outputChatBox ( "Shoma Vared Zone Shodid Alan Nemitoni Khone Besazi", theElement, 255, 0, 0, true )
		end
	end
end

function ExitPlace ( theElement )
	if getElementData(theElement, "logedin") then
		if getElementData(theElement, "loggedIn") then
        --    setElementData(theElement,"buildcreate", true)
        --    outputChatBox ( "Shoma Az Zone Kharej Shodid Alan Mitoni Khone Besazi", theElement, 200, 250, 0, true )
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
