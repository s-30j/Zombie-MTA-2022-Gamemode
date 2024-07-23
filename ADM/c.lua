local isMinimuze = false;
local cursorEnable = false;
local sw,sh = guiGetScreenSize()
local marker;


-- CFG
local keyToggle = "2" -- actived script
local keyApply =  "mouse1" -- teleport 
local keyOnCar = "mouse1" -- сonfirmation for teleporting to the car
local sizePickup = 1.5

function isPauseMenuActive()
	return isMTAWindowActive() or isMinimuze or isConsoleActive() or false 
end


function click()
	if cursorEnable and not isCursorShowing() then
		showCursor(true)
	end
	if isPauseMenuActive() then
		if cursorEnable and isCursorShowing() then
			showCursor(false)
		end 
	end 
	

	if cursorEnable and not isPauseMenuActive() then
		local sx, sy, posX, posY, posZ = getCursorPosition()
		if sx >= 0 and sy >= 0 and sx < sw and sy < sh then
			local camera = {getCameraMatrix()}
			local result, x,y,z,object,normalX, normalY, normalZ,material,lighting,piece = processLineOfSight(camera[1], camera[2], camera[3], posX, posY, posZ, true, true, false, true, false, false, false)
			if result then
				local curX, curY, curZ = getElementPosition(getLocalPlayer())
				local normal = {normalX, normalY, normalZ};
				local hitCord = {x,y,z}
				local car_info;
				local pos = Vector3(hitCord[1], hitCord[2], hitCord[3]) - (Vector3(normal[1], normal[2], normal[3]) * 0.1)
				local zOffset = 8000
				if normal[3] >= 0.5 then zOffset = 1 end
				local result, x,y,z = processLineOfSight(pos:getX(), pos:getY() , pos:getZ() + zOffset, pos:getX(), pos:getY() , pos:getZ() - 0.3,  true, true, false, true, false, false, false)
				
				-- corrector Z
				if result then
					pos = Vector3(x,y,z + 1)
				end
				
				-- delete last marker and create new marker
				if isElement(marker) then
					destroyElement(marker)
				end
				marker = createMarker(pos:getX(), pos:getY() , pos:getZ() + 0.5,"arrow", sizePickup, 255,255,255)
				
				-- Car info
				if object and getElementType(object) == "vehicle" and not getPedOccupiedVehicle(localPlayer) then
					local idCar = getElementModel(object);
					local name = getVehicleName(object);
					car_info = object;
					dxDrawText(string.format("Hold right mouse to teleport to the Vehicle: %s[%d]", name,idCar), sw * sx + 40  , sh * sy - 20 )
				end
				-- dist to point
				local dist = getDistanceBetweenPoints3D(curX, curY, curZ, pos)
				dxDrawText(string.format("Distance: %0.2fm ", dist), sw * sx + 40  , sh * sy )
				
				if getKeyState(keyApply) then
					local car = isInAnyCar(car_info) 
					if car then
					    	-- If the player is already in the car
						if getPedOccupiedVehicle(localPlayer) then
							teleport(car,pos)
						elseif getKeyState(keyOnCar) then -- if press mouse2 and mouse 1 > Teleport to the car
							if CarSeat(object) then -- We get the number of the free passenger seat
								triggerServerEvent("ClickWarp[Teleport]", resourceRoot, object, CarSeat(object))
							else -- If there are no seats available
								teleport(false,pos)
							end
						end
					else -- teleport from your feet
						teleport(false,pos)
					end
					removeMark()
				end 
			end 
		end
	end
end


function teleport(vehicle,pos)
	if getPedOccupiedVehicle(localPlayer) then
		setElementVelocity(vehicle,0,0,0)  -- Stop the car
	end
	setElementPosition (vehicle and vehicle or localPlayer, pos)
end


function isInAnyCar(veh)
	return veh or getPedOccupiedVehicle(localPlayer)
end

function CarSeat(veh)
	for i = 0, getVehicleMaxPassengers(veh) do
		if not getVehicleOccupants(veh)[i] then return i end
	end
	return false 
end

		
function removeMark()
	start()
	if isElement(marker) then
		destroyElement(marker)
	end
end


--

function start()
    local markeradmin = getElementData(localPlayer,"isMarkerAdmin")
    if markeradmin == true then
        cursorEnable = not cursorEnable
        showCursor(cursorEnable)
        if not cursorEnable then 
            removeEventHandler("onClientRender", root, click)
            if isElement(marker) then
                destroyElement(marker)
            end
        else
            addEventHandler("onClientRender", root, click)
        end
    else
        removeEventHandler("onClientRender", root, click)
        if isElement(marker) then
            destroyElement(marker)
            showCursor(false)
        end
    end
end


function resourceInit()
	--outputChatBox("[clickwarp] press "..keyToggle.." to activate")
	bindKey(keyToggle, "down", start)
end

addEventHandler("onClientResourceStart", resourceRoot, resourceInit)


function onClientMinimize()
    isMinimuze = true
end
addEventHandler( "onClientMinimize", root , onClientMinimize )

function onClientRestore()
    isMinimuze = false 
end
addEventHandler("onClientRestore", root ,onClientRestore)


--// noclip by chris1384

--// editable

local speed = {horizontal = 1, vertical = 1}

--//

local activated = false
local pos = {0, 0, 0}

addCommandHandler("wflyssaqwe", function()

	--if isPedDead(localPlayer) or getCameraTarget() ~= localPlayer or getPedOccupiedVehicle(localPlayer) then return outputChatBox("noclip could not be activated") end --// safety measure

	if activated then
		activated = false
		removeEventHandler("onClientPreRender", root, noclipRender)
		outputChatBox("noclip OFF")
	else
		activated = true
		pos = {getElementPosition(localPlayer)}
		addEventHandler("onClientPreRender", root, noclipRender)
		outputChatBox("noclip ON")
	end
	
end)

function noclipRender()

	--if isPedDead(localPlayer) or getCameraTarget() ~= localPlayer or getPedOccupiedVehicle(localPlayer) then --// safety measure
	--	activated = false
	--	removeEventHandler("onClientPreRender", root, noclipRender)
	--	outputChatBox("forced noclip OFF")
	--	return
	--end
	
	local _, _, camera_rotation = getElementRotation(getCamera())
	
	if not isMTAWindowActive() and not isCursorShowing() then --// prevents moving when cursor is visible
		if getKeyState("w") then
			setElementPosition(localPlayer, 
				pos[1]+math.sin(math.rad((getKeyState("d") and 45-camera_rotation) or (getKeyState("a") and -45-camera_rotation) or -camera_rotation))*speed.horizontal,
				pos[2]+math.cos(math.rad((getKeyState("d") and 45-camera_rotation) or (getKeyState("a") and -45-camera_rotation) or -camera_rotation))*speed.horizontal,
				(getKeyState("space") and pos[3]+speed.vertical) or (getKeyState("lshift") and pos[3]-speed.vertical) or pos[3]
			)
			
		elseif getKeyState("s") then
			setElementPosition(localPlayer, 
				pos[1]-math.sin(math.rad((getKeyState("d") and -45-camera_rotation) or (getKeyState("a") and 45-camera_rotation) or -camera_rotation))*speed.horizontal,
				pos[2]-math.cos(math.rad((getKeyState("d") and -45-camera_rotation) or (getKeyState("a") and 45-camera_rotation) or -camera_rotation))*speed.horizontal,
				(getKeyState("space") and pos[3]+speed.vertical) or (getKeyState("lshift") and pos[3]-speed.vertical) or pos[3]
			)
			
		elseif getKeyState("d") then
			setElementPosition(localPlayer, 
				pos[1]+math.sin(math.rad(90-camera_rotation))*speed.horizontal,
				pos[2]+math.cos(math.rad(90-camera_rotation))*speed.horizontal,
				(getKeyState("space") and pos[3]+speed.vertical) or (getKeyState("lshift") and pos[3]-speed.vertical) or pos[3]
			)
			
		elseif getKeyState("a") then
			setElementPosition(localPlayer, 
				pos[1]-math.sin(math.rad(90-camera_rotation))*speed.horizontal,
				pos[2]-math.cos(math.rad(90-camera_rotation))*speed.horizontal,
				(getKeyState("space") and pos[3]+speed.vertical) or (getKeyState("lshift") and pos[3]-speed.vertical) or pos[3]
			)
			
		elseif getKeyState("space") then
			setElementPosition(localPlayer, pos[1], pos[2], pos[3]+speed.vertical)
			
		elseif getKeyState("lshift") then
			setElementPosition(localPlayer, pos[1], pos[2], pos[3]-speed.vertical)
		else
			setElementPosition(localPlayer, pos[1], pos[2], pos[3]) --// not to mess with gravity
		end
	else
		setElementPosition(localPlayer, pos[1], pos[2], pos[3]) --// not to mess with gravity
	end
	setElementRotation(localPlayer, 0, 0, -camera_rotation)
	
	pos = {getElementPosition(localPlayer)} --// important
end