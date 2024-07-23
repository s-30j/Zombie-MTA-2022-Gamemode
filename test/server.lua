
HoverTabla = {}

function onPlayerQuitPlayer ()
	if isElement(HoverTabla[source]) then
		destroyElement(HoverTabla[source])
		HoverTabla[source] = nil
	end
end
addEventHandler ( "onPlayerQuit", getRootElement(), onPlayerQuitPlayer )	

function hoverboard(player)
	if isPedInVehicle(player) then 
		return 
	end
	if HoverTabla[player] == nil then
		if ( isObjectInACLGroup( 'user.'..getAccountName( getPlayerAccount( player ) ), aclGetGroup( 'Everyone' ) ))  then

		local id = 462
		local slots = 0
		local tires = 0
		local engine = 0
		local rotor = 0
		local tankparts = 0
		local scrap = 0
		local fuel = 100
		local x,y,z = getElementPosition(player)
		local rx,ry,rz = getElementRotation(player)
		HoverTabla[player] = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,HoverTabla[player]);
		setElementData(vehCol,"parent",HoverTabla[player]);
		setElementData(HoverTabla[player],"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(HoverTabla[player],"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( player, HoverTabla[player] )
		end,100,1)
		local myName = getPlayerName(player)
		setElementData ( player, "hoverOwner", myName )
		setElementData ( HoverTabla[player], "hoverboard", true, false )
		setVehicleDamageProof( HoverTabla[player] , true )
		setVehicleHandling ( HoverTabla[player] , "engineAcceleration", 40 ) -- 85
		setVehicleHandling ( HoverTabla[player] , "tractionMultiplier", 2 )
		setVehicleHandling ( HoverTabla[player] , "maxVelocity", 9999 )
		setVehicleHandling ( HoverTabla[player] , "driveType" , "awd" )

		end
	else
		destroyElement(HoverTabla[player])
		HoverTabla[player] = nil
	end
end
addCommandHandler ( "hoverboard", hoverboard ) 

function hoverboard2(player)
	if isPedInVehicle(player) then 
		return 
	end
	if HoverTabla[player] == nil then
		if ( isObjectInACLGroup( 'user.'..getAccountName( getPlayerAccount( player ) ), aclGetGroup( 'Everyone' ) ))  then
			
		local id = 448
		local slots = 0
		local tires = 0
		local engine = 0
		local rotor = 0
		local tankparts = 0
		local scrap = 0
		local fuel = 100
		local x,y,z = getElementPosition(player)
		local rx,ry,rz = getElementRotation(player)
		HoverTabla[player] = createVehicle(id,x,y,z,rx,ry,rz);
		local vehCol = createColSphere(x,y,z,2.5);
		local areaCol = createColSphere(x,y,z,25);
		attachElements(vehCol,HoverTabla[player]);
		setElementData(vehCol,"parent",HoverTabla[player]);
		setElementData(HoverTabla[player],"parent",vehCol);
		setElementData(vehCol,"vehicle",true);
		setElementData(HoverTabla[player],"dayzvehicle",0);
		setElementData(vehCol,"MAX_Slots", slots);
		setElementData(vehCol,"Tire_inVehicle",tires);
		setElementData(vehCol,"Engine_inVehicle",engine);
		setElementData(vehCol,"Rotor_inVehicle",rotor);
		setElementData(vehCol,"Parts_inVehicle",tankparts);
		setElementData(vehCol,"Scrap_inVehicle",scrap);
		setElementData(vehCol,"needtires", tires);
		setElementData(vehCol,"needparts", tankparts);
		setElementData(vehCol,"needscrap", scrap);
		setElementData(vehCol,"needrotor", rotor);
		setElementData(vehCol,"needengines", engine);
		setElementData(vehCol,"spawn",{id,x,y,z});
		setElementData(vehCol,"fuel",fuel);
		setTimer(function()
		warpPedIntoVehicle ( player, HoverTabla[player] )
		end,100,1)
		local myName = getPlayerName(player)
		setElementData ( player, "hoverOwner", myName )
		setElementData ( HoverTabla[player], "hoverboard", true, false )
		setVehicleDamageProof( HoverTabla[player] , true )
		setVehicleHandling ( HoverTabla[player] , "engineAcceleration", 40 ) -- 85
		setVehicleHandling ( HoverTabla[player] , "tractionMultiplier", 2 )
		setVehicleHandling ( HoverTabla[player] , "maxVelocity", 9999 )
		setVehicleHandling ( HoverTabla[player] , "driveType" , "awd" )

		end
	else
		destroyElement(HoverTabla[player])
		HoverTabla[player] = nil
	end
end
addCommandHandler ( "hoverboard2", hoverboard2 ) 

function mashin ( player, seat, jacked ) 

	if jacked then
		local theVehicle = getPedOccupiedVehicle (jacked)
		local id = getElementModel(theVehicle)
		local myName = getPlayerName(player)
		local EsmMashinOnwer = getElementData(theVehicle,"hoverOwner")
		--if id == 462 then
		if (getElementData( jacked, "hoverboard" )) then
			if EsmMashinOnwer == myName then
			else
				cancelEvent()
				outputChatBox ( "#ff0000[Error]: #ffffffShoma Owner In Mashin Nistid", player, 230,0,0 ,true)
			end
		end	
	else
		local myName = getPlayerName(player)
		local theVehicle = getPedOccupiedVehicle (player)
		local id = getElementModel(theVehicle)
		local EsmMashinOnwer = getElementData(player,"hoverOwner")
		--if id == 462 then
		if (getElementData( theVehicle, "hoverboard" )) then
			if EsmMashinOnwer == myName then
			else
				cancelEvent()
				outputChatBox ( "#ff0000[Error]: #ffffffShoma Owner In Mashin Nistid", player, 230,0,0 ,true)
			end
		end
	end
end
addEventHandler ( "onVehicleStartEnter", getRootElement(), mashin )


function onPlayerVehicleEnter ( vehicle, seat, jacked )
    if (getElementData( vehicle, "hoverboard" )) or (getElementData( vehicle, "hoverboard2" )) then
		triggerClientEvent(getRootElement(), "setPedAnimationClient", source , true )
    end
end
addEventHandler ( "onPlayerVehicleEnter", getRootElement(), onPlayerVehicleEnter )

--[[
function onPlayerVehicleExit ( vehicle, seat, jacked )
    if (getElementData( vehicle, "hoverboard" )) then
		triggerClientEvent(getRootElement(), "setPedAnimationClient", source , false )
    end
	if isElement(HoverTabla[source]) then
		destroyElement(HoverTabla[source])
		HoverTabla[source] = nil
	end
end
addEventHandler ( "onPlayerVehicleExit", getRootElement(), onPlayerVehicleExit )]]

function SyncHoverBoardAnimation(player)
	if isElement(player) then
		triggerClientEvent(getRootElement(), "setPedAnimationClient", player )
	end
end
addEvent("SyncHoverBoardAnimation", true )
addEventHandler("SyncHoverBoardAnimation", getRootElement(), SyncHoverBoardAnimation)



