﻿local dxfont0_font = dxCreateFont("font.ttf", 15)
local dxfont1_font = dxCreateFont("font.ttf", 15)
local dxfont2_font = dxCreateFont("font.ttf", 40)

local screenW, screenH = guiGetScreenSize()
local buttons = {}

local fading = 0
local fading2 = "up"

local play_alpha = 0
local configure_alpha = 0
local information_alpha = 0
local server_alpha = 0
local EXIT_alpha = 0

local enteredButton = nil
local x_prev = nil
local renderInfo = false
local sounds = nil



addEvent("updateTestPedClothes", true)
updateTestPedClothes = function(cloth0, cloth2, cloth3, cloth15, cloth16)
	if isElement ( testPed ) then
		setPedClothes (testPed,0,cloth0)
		setPedClothes (testPed,2,cloth2)
		setPedClothes (testPed,3,cloth3)
		setPedClothes (testPed,15,cloth15)
		setPedClothes (testPed,16,cloth16)
	end
end
addEventHandler("updateTestPedClothes", getRootElement(), updateTestPedClothes)


function setPedClothes(thePed, clothingSlot, clothingID)
	if not isElement(thePed) or type(clothingSlot) ~= "number" then
		error("Invalid arguments to setPedClothes()!", 2)
	end
 
	if not clothingID or clothingID == -1 then
		return removePedClothes(thePed, clothingSlot)
	end
 
	local hasClothes = getPedClothes(thePed, clothingSlot) 
	if hasClothes then
		removePedClothes(thePed, clothingSlot)
	end
	
	local texture, model = getClothesByTypeIndex(clothingSlot, clothingID)
	return addPedClothes(thePed, texture, model, clothingSlot)
end

function pedCloth()
	setPedClothes(clothPED, 0, getElementData(getLocalPlayer(),"Shirt") or 0)
	setPedClothes(clothPED, 2, getElementData(getLocalPlayer(),"Trousers") or 0)
	setPedClothes(clothPED, 1, getElementData(getLocalPlayer(),"Head") or 0)
end

addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()),function()
	fadeCamera(true)
	toggleControl ("radar",false)
	setPlayerHudComponentVisible ("clock",false) 
	setPlayerHudComponentVisible ("radar",false)
	setPlayerHudComponentVisible ("money",false) 
	setPlayerHudComponentVisible ("health",false) 
	setPlayerHudComponentVisible ("weapon",false) 
	setPlayerHudComponentVisible ("ammo",false) 
	setPlayerHudComponentVisible ("breath",false) 
	setPlayerHudComponentVisible("area_name",false)
	setPlayerHudComponentVisible("vehicle_name",false)
	setCameraMatrix(-1597.8332519531, -1622.2266845703, 37.109142303467, -1695.806640625, -1605.2043457031, 26.55163192749)
	--clothPED = createPed(0,-1600.9000244141,-1620.6999511719,36.599998474121,241.908905,0,0)
	createButton(145,(screenH - -106) / 2,(10) + 57,((screenH - 26) / 40),"PLAY")
	createButton(145,(screenH - -166) / 2,(10) + 129,((screenH - 26) / 40),"CONFIGURE BUTTON")
	createButton(145,(screenH - -224) / 2,(10) + 155,((screenH - 26) / 40),"INFORMATION BUTTON")
	createButton(145,(screenH - -286) / 2,(10) + 57,((screenH - 26) / 40),"EXIT BUTTON")
	createButton((screenW - 125) / 2, (screenH - 800) / 2, 1366, 1366,"ROTATE BOT")
	setTimer(pedCloth,1000,1)
	bindKey ( "mouse1", "down", setPrevX )
	sounds = playSound("login.mp3",true)
	showCursor(true)
	showChat(false)
	
	enteredButton = "PLAY"
	addEventHandler("onClientRender", root,renderButton)
end)

--[[
addCommandHandler("unbug",
function()
	showCursor(false)
	fadeCamera(false,1)
	setTimer(loggedPlayer,900,1)
	setTimer(function()
		triggerServerEvent("loginPlayerSerial", getLocalPlayer(), getLocalPlayer())
	end,1200,1)
end)

addEvent("unbug",true)
addEventHandler("unbug",getRootElement(),
function()
	showCursor(false)
	fadeCamera(false,1)
	setTimer(loggedPlayer,900,1)
	setTimer(function()
		triggerServerEvent("loginPlayerSerial", getLocalPlayer(), getLocalPlayer())
	end,1200,1)
end)]]



function renderLogin()	
	local screenx, screeny, worldx, worldy, worldz = getCursorPosition()
	local playerName = getPlayerName(getLocalPlayer())

	dxDrawRectangle((screenW - 1920) / 2, (screenH - 1080) / 2, 1920, 100, tocolor(0, 0, 0, 255), false)
	dxDrawRectangle((screenW - 1920) / 2, (screenH - -900) / 2, 1920, 100, tocolor(0, 0, 0, 255), false)
	
	--dxDrawImage(100,(screenH - 700) / 2, (100) + 400,((screenH - 200) / 3),"DayZ.png",0,0,0)
	
	dxDrawRectangle(145,(screenH - -106) / 2, (10) + 80,((screenH - 26) / 40),tocolor(255, 0, 0, play_alpha)) -- play	
	dxDrawRectangle(145,(screenH - -166) / 2, (10) + 135,((screenH - 26) / 40),tocolor(255, 0, 0, configure_alpha)) -- CONFIGURE
	dxDrawRectangle(145,(screenH - -224) / 2, (10) + 160,((screenH - 26) / 40),tocolor(255, 0, 0, information_alpha)) -- INFORMATION
	dxDrawRectangle(145,(screenH - -286) / 2, (10) + 80,((screenH - 26) /40),tocolor(255, 0, 0, EXIT_alpha)) -- EXIT
	
	dxDrawText("Alpha access", 25, (screenH - 1000) / 2, (10) + 57, ( (screenH - 26) / 2) + 26, tocolor(181, 29, 34, 255), 1.00, dxfont1_font, "left", "top", false, false, false, false, false)
	dxDrawText("Version: 0.60.129432", 1650, (screenH - 1000) / 2, (10) + 57, ( (screenH - 26) / 2) + 26, tocolor(255, 255, 255, 255), 1.00, dxfont1_font, "left", "top", false, false, false, false, false)
	dxDrawText("Создатель сервера WhiteNigger", 25, (screenH - -950) / 2, (10) + 57, ( (screenH - 26) / 2) + 26, tocolor(255, 255, 255, 255), 1.00, dxfont1_font, "left", "top", false, false, false, false, false)
	dxDrawText(string.gsub(playerName,'#%x%x%x%x%x%x',''), 1500, (screenH - -670) / 2, (10) + 57, ( (screenH - 26) / 2) + 26, tocolor(168, 167, 164, 255), 1.00, dxfont2_font, "left", "top", false, false, false, false, false)
	
	dxDrawText("Play", 150, (screenH - -106) / 2, (10) + 57, ( (screenH - 26) / 2) + 26, tocolor(150, 190, 255), 1.00, dxfont0_font, "left", "top", false, false, false, false, false)
	dxDrawText("Skin Customize", 150, (screenH - -166) / 2, (10) + 129, ( (screenH - 26) / 2) + 26, tocolor(255, 200, 100), 1.00, dxfont0_font, "left", "top", false, false, false, false, false)
	dxDrawText("INFORMATION", 150, (screenH - -224) / 2, (10) + 129, ( (screenH - 26) / 2) + 26, tocolor(255, 200, 100), 1.00, dxfont0_font, "left", "top", false, false, false, false, false)
	dxDrawText("Exit", 150, (screenH - -286) / 2, (10) + 129, ( (screenH - 26) / 2) + 26, tocolor(255, 200, 100), 1.00, dxfont0_font, "left", "top", false, false, false, false, false)
	
	rotateActor()
	
	if renderInfo == true and getKeyState ("mouse1") == false then
		local screenx, screeny, worldx, worldy, worldz = getCursorPosition()
		--dxDrawRectangle((screenW * screenx + 5), (screenH * screeny + 11), 600,25, tocolor(0, 0, 0, 150), false)
		--dxDrawText("Scrolling the skin",(screenW * screenx + 10),(screenH * screeny + 9),10,10, tocolor(168, 167, 164, 255), 1.00, dxfont1_font, "left", "top", false, false, false, false, false)
	end	
end
addEventHandler("onClientRender", root,renderLogin)

function createButton(x,y,wight,height,name)
	if x and y and wight and height and name then
		local button = {}
		button.info = name
		button.posX = x
		button.posY = y
		button.sizeX = wight
		button.sizeY = height
		button.label = guiCreateLabel(x,y,wight,height,"",false)
		addEventHandler("onClientGUIClick",button.label,onButtonClick)
		addEventHandler("onClientMouseEnter",button.label,onButtonEntered)
		addEventHandler("onClientMouseLeave",button.label,onButtonLeaved)
		setElementData(button.label,"button",true)
		setElementData(button.label,"info",name)
		buttons[name] = button
	else
		error ( 'Failed creating button! Missed some arguments.' )
	end
end

function onButtonClick()
	if getElementData ( source, 'button' ) and getElementData ( source, 'info' ) then
		local info = getElementData ( source, 'info' )
		local name = buttons[info]
		if name then
			if info == "PLAY" then
				fadeCamera(false,1)
				if isElement(clothPED) then
					destroyElement(clothPED)
				end
				setTimer(loggedPlayer,900,1)
				destroyButton("PLAY")
				destroyButton("CONFIGURE BUTTON")
				destroyButton("INFORMATION BUTTON")
				destroyButton("EXIT BUTTON")
				destroyButton("ROTATE BOT")
				showCursor(false)
				stopSound(sounds)
				sounds = nil
				--setTimer(offShadow,7000,1)
				setTimer(function()
					triggerServerEvent("loginPlayerSerial", getLocalPlayer(), getLocalPlayer())
				end,1200,1)
			elseif info == "CONFIGURE BUTTON" then
				exports.cloth:showClothWindow(testPed)
			--	return
			elseif info == "INFORMATION BUTTON" then
				return
			elseif info == "EXIT BUTTON" then
				triggerServerEvent("buttonExit", getLocalPlayer())	
			end	
		end	
	end	
end

function onButtonEntered ( )
	if getElementData ( source, 'button' ) and getElementData ( source, 'info' ) then
		local info = getElementData ( source, 'info' )
		local name = buttons[info]
		if name then
			if info ~= "ROTATE BOT" then
				enteredButton = info
				setAlphaButton(0)
				if info == "PLAY" then play_alpha = 255 end
				if info == "CONFIGURE BUTTON" then configure_alpha = 255 end
				if info == "INFORMATION BUTTON" then information_alpha = 255 end
				if info == "EXIT BUTTON" then EXIT_alpha = 255 end
				removeEventHandler("onClientRender", root,renderButton)
				--playSound("sounds/button.mp3")
				unbindKey ( "mouse1", "down", setPrevX )
			else
				renderInfo = true
			end
		end
	end
end

function onButtonLeaved()
	if getElementData ( source, 'button' ) and getElementData ( source, 'info' ) then
		local info = getElementData ( source, 'info' )
		local name = buttons[info]
		if name then
			if info ~= "ROTATE BOT" then
				setAlphaButton(0)
				addEventHandler("onClientRender", root,renderButton)
				fading = 0
				fading2 = "up"
			else
				renderInfo = false
			end
		end	
	end
end

function destroyButton(name)
	if buttons[name] then
		removeEventHandler ( "onClientGUIClick", buttons[name].label, onButtonClick )
		removeEventHandler( "onClientMouseEnter", buttons[name].label, onButtonEntered )
		removeEventHandler( "onClientMouseLeave", buttons[name].label, onButtonLeaved )
		destroyElement (buttons[name].label)
		buttons[name] = nil
		return true
	else
		return false
	end
end

function renderButton()
	if enteredButton == nil or false then return end
	if fading >= 0 and fading2 == "up" then
		fading = fading + 5
	elseif fading <= 255 and fading2 == "down" then
		fading = fading - 5
	end
	if fading == 0 then
		fading2 = "up"
	elseif fading == 255 then
		fading2 = "down"
	end
	if enteredButton == "PLAY" then
		play_alpha = fading
	elseif enteredButton == "CONFIGURE BUTTON" then
		configure_alpha = fading
	elseif enteredButton == "INFORMATION BUTTON" then
		information_alpha = fading	
	elseif enteredButton == "EXIT BUTTON" then
		EXIT_alpha = fading		
	end	
end

function setAlphaButton(alpha)
	play_alpha = alpha
	configure_alpha = alpha
	server_alpha = alpha
	information_alpha = alpha
	EXIT_alpha = alpha
end	
 
function setPrevX()
	x, _ = getCursorPosition ()
	x_prev = x*screenW
end

function rotateActor()
	if getKeyState ("mouse1") == true and renderInfo == true then
		x, _ = getCursorPosition ()
		x=x*screenW
		change_rot = (x-x_prev)
		local _, _, ped_rot = getElementRotation ( clothPED )
		local rot_to = ped_rot+change_rot
		if rot_to < 0 then
			rot_to = ped_rot+change_rot+360
		end
		setElementRotation ( clothPED, 0, 0, rot_to )
		x_prev = x
	end
end

function setPedClothes(thePed, clothingSlot, clothingID)
	if not isElement(thePed) or type(clothingSlot) ~= "number" then
		error("Invalid arguments to setPedClothes()!", 2)
	end
	if not clothingID then
		return removePedClothes(thePed, clothingSlot)
	end
	local hasClothes = getPedClothes(thePed, clothingSlot) 
	if hasClothes then
		removePedClothes(thePed, clothingSlot)
	end
	local texture, model = getClothesByTypeIndex(clothingSlot, clothingID)
	return addPedClothes(thePed, texture, model, clothingSlot)
end

function offShadow()
	fadeCamera(true,1)
end

function pedCloth()
	setPedClothes(clothPED, 0, getElementData(getLocalPlayer(),"Shirt") or -1)
	setPedClothes(clothPED, 2, getElementData(getLocalPlayer(),"Trousers") or -1)
	setPedClothes(clothPED, 1, getElementData(getLocalPlayer(),"Head") or -1)
	setPedClothes(clothPED, 16, getElementData(getLocalPlayer(),"Hats") or -1)
end

function loggedPlayer()
	removeEventHandler("onClientRender", root,renderLogin)
	--triggerServerEvent("loginPlayerBySeral",getLocalPlayer())
showChat(true)
end