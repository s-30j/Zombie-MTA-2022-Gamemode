 

function convertNumber( number )  
	local formatted = number  
	while true do      
		formatted, k = string.gsub( formatted, "^(-?%d+)(%d%d%d)", '%1,%2' )    
		if ( k==0 ) then      
			break   
		end  
	end  
	return formatted
end



--Start The Code 
local DesIDNext = {}
local ObjectWood = {}
local ObjectMarker = {}
local MarkerID = {}
local MarkerIDNext = {}
local ObjectWoodNext = {}
local ObjectMarkerNext = {}
local ObjectMarker2 = {}
local ObjectWoodNext1 = {}
local ObjectMarkerNext1 = {}
local MarkerIDNext1 = {}
local ObjectWoodNext2 = {}
local ObjectMarkerNext2 = {}
local MarkerIDNext2 = {}
local DesIDNext1 = {}
local DesIDNext2 = {}
local WoodObject = {
    { -1372.4794921875,-1486.490234375,101.93842315674},
    {-1367.3291015625,-1485.83203125,102.18674468994},
    {-1371.958984375,-1496.62109375,102.05876922607},
    { -1380.4541015625,-1497.8046875,102.01863861084},
    {-1385.9169921875,-1490.4609375,101.93171691895},
    { -1379.3701171875,-1487.3916015625,101.90463256836},
    {-1370.02734375,-1485.2998046875,102.04443359375},
    {-1382.3056640625,-1476.19140625,101.76240539551},
    {-1428.8631591797,-1209.2921142578,105.5489654541},
    
	{-1432.2725830078,-1196.5311279297,105.43223571777},
	{-1428.8659667969,-1184.9442138672,104.94570922852},
	{-1418.6617431641,-1178.6752929688,103.96932983398},
	{-1405.4953613281,-1178.4918212891,104.05625915527},
	{-1389.6949462891,-1182.9949951172,104.45308685303},
	{-1395.4455566406,-1194.2314453125,105.0234375},
	{-1404.9647216797,-1202.3576660156,105.40466308594},
	{-1410.9444580078,-1215.4967041016,106.17379760742},
	{-1420.8770751953,-1231.5415039062,106.84509277344},
	--Az Inja
	{-934.33807373047,-590.66320800781,24.142072677612},
	{-952.06872558594,-584.69683837891,23.125},
	{-953.9111328125,-570.92144775391,23.51106262207},
	{-936.77673339844,-568.91156005859,23.840335845947},
	{-919.39483642578,-574.83825683594,23.231073379517},
	{-914.21276855469,-588.17303466797,24.301538467407},
	{-921.11145019531,-607.9384765625,28.533985137939},
	{-938.31945800781,-615.68103027344,27.069612503052},
	{-953.33947753906,-616.44488525391,28.525659561157},

	{-346.50366210938,-1017.2008056641,59.047828674316},
	{-361.69509887695,-1017.5706176758,58.850395202637},
	{-367.1565246582,-1003.9443359375,57.722450256348},
	{-351.58578491211,-995.70227050781,58.232894897461},
	{-344.93402099609,-979.78051757812,57.361251831055},

	{-1500.0278320312,-2719.4267578125,57.827373504639},
	{-1516.3680419922,-2712.4028320312,58.189746856689},
	{-1515.7740478516,-2695.888671875,58.529121398926},
	{-1506.6441650391,-2690.048828125,57.484733581543},
	{-1494.4252929688,-2687.2741699219,57.327220916748},
	{-1483.3762207031,-2690.2868652344,57.078586578369},
	{-1473.3695068359,-2703.0842285156,57.215438842773},
	{-1479.0815429688,-2718.9348144531,58.573230743408},
	{-1491.5007324219,-2708.5246582031,57.678146362305},

	{-1370.3638916016,-2408.2299804688,33.942180633545},
	{-1369.7087402344,-2427.4602050781,33.340126037598},
	{-1382.2283935547,-2448.0971679688,37.025333404541},
	{-1390.876953125,-2458.7939453125,39.345321655273},
	{-1402.6977539062,-2447.798828125,37.663990020752},
	{-1407.2873535156,-2433.5314941406,35.510547637939},
	{-1402.5330810547,-2418.720703125,34.005584716797},
	{-1395.1418457031,-2404.5307617188,32.620304107666},
	{-1383.7552490234,-2394.1547851562,33.759395599365},
	{-1386.7758789062,-2422.9584960938,34.348339080811},

	{-664.00573730469,-153.16166687012,60.313217163086},
	{-681.50317382812,-153.7253112793,61.375743865967},
	{-685.31475830078,-139.9764251709,62.005416870117},
	{-673.28930664062,-132.28651428223,60.158645629883},
	{-657.81500244141,-134.63383483887,61.370723724365},

	{-552.30798339844,-1553.2764892578,8.1069288253784},
	{-556.45385742188,-1570.9333496094,8.1555261611938},
	{-566.63623046875,-1580.3498535156,9.5556135177612},
	{-580.47900390625,-1573.1002197266,10.924914360046},
	{-587.85778808594,-1561.5782470703,11.28373336792},
	{-589.47619628906,-1544.6201171875,11.293127059937},
	{-577.87579345703,-1533.2973632812,10.245361328125},
	{-564.73455810547,-1530.7889404297,9.2135057449341},
	{-567.46337890625,-1545.9619140625,9.0003156661987},



	------ ls  ------

	{ 205.4423828125 ,-527.3837890625 ,48.366539001465 },
	{ 212.66015625 ,-554.3896484375 ,52.601341247559 },
	{ 182.458984375 ,-534.953125 ,44.888160705566 },
	{ 183.4033203125 ,-575.57421875 ,47.237659454346 },
	{ 170.4755859375 ,-559.3310546875 ,45.460517883301 },
	{ 165.2568359375 ,-546.66015625 ,43.132019042969 },

	---------------------------------------

	{ 2092.3828125 ,-710.96875 ,102.35242462158 },
	{ 2101.712890625 ,-720.1494140625 ,100.9702835083 },
	{ 2102.001953125 ,-742.5302734375 ,102.75093078613 },
	{ 2123.15625 ,-736.46484375 ,98.622024536133 },
	{ 2118.2607421875 ,-755.765625 ,101.69467926025 },
	{ 2132.4326171875 ,-763.1240234375 ,101.44431304932 },
	{ 2139.64453125 ,-747.4580078125 ,98.165321350098 },
	{ 2086.81640625 ,-725.8740234375 ,103.95858764648 },
	----------------------------------------------
	{ 2383.3603515625 ,-145.3076171875 ,27.574104309082 },
	{ 2389.5185546875 ,-130.5341796875 ,28.515060424805 },
	{ 2408.3583984375 ,-126.7119140625 ,30.161478042603 },
	{ 2410.3642578125 ,-145.8837890625 ,29.252460479736 },
	{ 2372.7509765625 ,-130.158203125 ,27.909786224365 },
	{ 2362.1416015625 ,-143.4306640625 ,27.044429779053 },
	{ 2359.216796875 ,-120.78125 ,27.602947235107 },
	{ 2387.0751953125 ,-115.537109375 ,28.199396133423 },
	----------------------------------------------
	{ 1210.3193359375 ,-100.7958984375 ,39.666194915771 },
	{ 1216.384765625 ,-92.560546875 ,38.909034729004 },
	{ 1221.822265625 ,-109.109375 ,39.719741821289 },
	{ 1232.59375 ,-99.6455078125 ,38.844223022461 },
	{ 1249.8466796875 ,-98.3388671875 ,37.586952209473 },
	{ 1239.728515625 ,-87.046875 ,37.058906555176 },
	{ 1226.0517578125 ,-76.0205078125 ,36.654205322266 },

}
local MarkWoodPos = {
	{-1352.2431640625,-1494.2998046875,102.6000213623},
	{-1428.8631591797,-1209.2921142578,105.5489654541},
	{-934.33807373047,-590.66320800781,24.142072677612},
	{-346.50366210938,-1017.2008056641,59.047828674316},
	{-1500.0278320312,-2719.4267578125,57.827373504639},
	{-1370.3638916016,-2408.2299804688,33.942180633545},
	{-664.00573730469,-153.16166687012,60.313217163086},
	{-552.30798339844,-1553.2764892578,8.1069288253784},
	{ 190.2587890625 ,-550.4306640625 ,48.716514587402 },
	{ 2115.3671875 ,-740.95703125 ,100.3610534668 },
	{ 2388.51171875 ,-126.5771484375 ,28.70298576355 },
	{ 1223.5244140625 ,-96.6298828125 ,38.993896484375 },
}
local SpawnCarWood = {
	{-1672.828125,-2237.306640625,35.35054397583},
	{-1666.9833984375,-2238.74609375,34.88892364502},
	{-1659.537109375,-2232.009765625,32.44242477417},
	{-1649.47265625,-2232.1025390625,30.685035705566},
	{-1669.3974609375,-2208.1240234375,34.77001953125},
}
local Blips1 = {}
function setupBlipsWood()
	for i=1 , #MarkWoodPos do
	Blips1[i] = createBlip( MarkWoodPos[i][1], MarkWoodPos[i][2], MarkWoodPos[i][3], 14, 0, 0, 0, 255 )
	
	end
end
setupBlipsWood()
function createMarkerAttachedTo(element, mType, size, r, g, b, a, visibleTo, xOffset, yOffset, zOffset)
	mType, size, r, g, b, a, visibleTo, xOffset, yOffset, zOffset = mType or "checkpoint", size or 4, r or 0, g or 0, b or 255, a or 255, visibleTo or getRootElement(), xOffset or 0, yOffset or 0, zOffset or 0
	assert(isElement(element), "Bad argument @ 'createMarkerAttachedTo' [Expected element at argument 1, got " .. type(element) .. "]") assert(type(mType) == "string", "Bad argument @ 'createMarkerAttachedTo' [Expected string at argument 2, got " .. type(mType) .. "]") assert(type(size) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 3, got " .. type(size) .. "]") assert(type(r) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 4, got " .. type(r) .. "]")	assert(type(g) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 5, got " .. type(g) .. "]") assert(type(b) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 6, got " .. type(b) .. "]") assert(type(a) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 7, got " .. type(a) .. "]") assert(isElement(visibleTo), "Bad argument @ 'createMarkerAttachedTo' [Expected element at argument 8, got " .. type(visibleTo) .. "]") assert(type(xOffset) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 9, got " .. type(xOffset) .. "]") assert(type(yOffset) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 10, got " .. type(yOffset) .. "]") assert(type(zOffset) == "number", "Bad argument @ 'createMarkerAttachedTo' [Expected number at argument 11, got " .. type(zOffset) .. "]")
	local m = createMarker(0, 0, 0, mType, size, r, g, b, a, visibleTo)
	if m then if attachElements(m, element, xOffset, yOffset, zOffset) then return m end end return false
end

local BadTree = {}

function InColShpe(hitElement,matchingDimension)
    --local theVehicle = getPedOccupiedVehicle(hitElement)
    
    --if theVehicle == false then
	    if (hitElement and getElementType(hitElement) == "player") then
            local VehID1 = getPedOccupiedVehicle(hitElement)
            --if not VehID1 then
          
                DesID = MarkerID[source]
                
            end
       
        --end    
     
    --end
end

function CreateWoodFunc()
	for i, v in ipairs(WoodObject) do
        ObjectWood[i] = createObject(696,v[1],v[2],v[3])
        BadTree[i] = createObject(831,v[1],v[2],v[3])
		ObjectMarker2[i] = createMarker(v[1],v[2],v[3]-1,"cylinder",6.00,255,255,255,20)
        ObjectMarker[i] = createColSphere( v[1],v[2],v[3], 5 )
        MarkerID[ObjectMarker[i]] = i
        --outputChatBox(i)
        
        addEventHandler("onColShapeHit", ObjectMarker[i], InColShpe)
    end
    for i, v3 in ipairs(ObjectWood) do
        setElementData(ObjectWood[i],"isWood",true)
        --outputChatBox("set Shod")
    end

end
--addEventHandler('onClientResourceStart', root, CreateWoodFunc)
CreateWoodFunc()

local WhatStepGet = {}

function IsMarkerWood(hitElement,matchingDimension)
    
                    DesIDNext[hitElement] = MarkerIDNext[source]
                    destroyElement(ObjectWoodNext[DesIDNext[hitElement]])
                    destroyElement(ObjectMarkerNext[DesIDNext[hitElement]])
                    ObjectMarkerNext[DesIDNext[hitElement]] = nil
                    DesIDNext[hitElement] = nil
					local RandomWood = math.random(5, 8)
					local mablaghR = convertNumber(RandomWood)
                    outputChatBox("#552c2c Shoma "..mablaghR.." Choob Az Zamin Bardashtid",hitElement,255,255,255,true)
					setElementData(hitElement, "item1", tonumber(getElementData(hitElement, "item1")) + mablaghR);

				
end

function IsMarkerWood1(hitElement,matchingDimension)
    
                    DesIDNext1[hitElement] = MarkerIDNext1[source]
                    destroyElement(ObjectWoodNext1[DesIDNext1[hitElement]])
                    destroyElement(ObjectMarkerNext1[DesIDNext1[hitElement]])
                    ObjectMarkerNext1[DesIDNext1[hitElement]] = nil
                    DesIDNext1[hitElement] = nil
                    local RandomWood = math.random(5, 8)
					local mablaghR = convertNumber(RandomWood)
                    outputChatBox("#552c2c Shoma "..mablaghR.." Choob Az Zamin Bardashtid",hitElement,255,255,255,true)
					setElementData(hitElement, "item1", tonumber(getElementData(hitElement, "item1")) + mablaghR);
end

function IsMarkerWood2(hitElement,matchingDimension)
    
                    DesIDNext2[hitElement] = MarkerIDNext2[source]
                    destroyElement(ObjectWoodNext2[DesIDNext2[hitElement]])
                    destroyElement(ObjectMarkerNext2[DesIDNext2[hitElement]])
                    ObjectMarkerNext2[DesIDNext2[hitElement]] = nil
                    DesIDNext2[hitElement] = nil
					local RandomWood = math.random(5, 8)
					local mablaghR = convertNumber(RandomWood)
                    outputChatBox("#552c2c Shoma "..mablaghR.." Choob Az Zamin Bardashtid",hitElement,255,255,255,true)
					setElementData(hitElement, "item1", tonumber(getElementData(hitElement, "item1")) + mablaghR);
end

function CreateWoodStep2 ()
	x,y,z = getElementPosition(ObjectWood[DesID])
	if WhatStepGet[source] == nil then
		ObjectWoodNext[source] = createObject(18566,x,y+9,z-0.5)
		setElementCollisionsEnabled(ObjectWoodNext[source],false)
		setObjectScale(ObjectWoodNext[source], 0.5) 
		--createMarker( 1203.73046875,-1280.3876953125,13.3828125,"cylinder",4,255,255,255,255)  --1193.947265625,-1301.294921875,13.387181282043
		ObjectMarkerNext[source] = createMarker(x,y+9,z-1,"cylinder",6.00,0,255,42,20)
		
		MarkerIDNext[ObjectMarkerNext[source]] = source

		addEventHandler("onMarkerHit", ObjectMarkerNext[source], IsMarkerWood)
	end

	moveObject ( ObjectWood[DesID], 3000, x,y,z , 0 , 90 , 20 )
	setElementData(ObjectWood[DesID],"isWood",false)

	setTimer(function()
		destroyElement(ObjectWood[DesID])
	end,3000,1)
	--destroyElement(ObjectWood[DesID])
	--destroyElement(ObjectMarker[DesID])

	
end
addEvent("CreateWoodStep2",true)
addEventHandler("CreateWoodStep2",root,CreateWoodStep2)

local DesIDNext = {}


local AttachedWoodInVeh = {}
local AttachedWoodInVeh2 = {}








local TakeWoodBlip = {}
local TakeMarker = {}
local TakeWoodPos = {
	[1] = {-1994.2919921875,-2430.8603515625,30.625}
}





		


iLastHour = tonumber(getRealTime().hour)



addEventHandler("OnGlobalTimer", root, function ()
	if tonumber(getRealTime().hour) ~= tonumber(iLastHour) then
		iLastHour = getRealTime().hour
		--[[for k, v in ipairs(getElementsByType("player")) do 
			for i, v in ipairs(ObjectMarker2) do 
				if isElement (v) then  
					destroyElement(v) 
					v = nil  
				end  
			end 
			--outputChatBox("sdsd")
			for i, v in ipairs(ObjectMarker) do 
				if isElement (v) then  
					destroyElement(v) 
					v = nil  
				end  
			end 
			for i, v in ipairs(ObjectWood) do 
				if isElement (v) then  
					destroyElement(v) 
					--setElementData(v,"isWood",true)
					v = nil  
				end  
			end 
			for i, v in ipairs(BadTree) do 
				if isElement (v) then  
					destroyElement(v) 
					v = nil  
				end  
			end 
		CreateWoodFunc()
		end ]]
		restartkonresource()
	end 
end)



function restartkonresource()
	for k, player in ipairs (getElementsByType("player")) do	
		if getElementData(player, "loggedIn") == true then
			local ZpPlayer = getElementData(accSys:getPlayerAcc(player), "ZP")
			setElementData(accSys:getPlayerAcc(player), "ZP", tonumber(ZpPlayer) + 5)

			local ExpPlayer = getElementData(accSys:getPlayerAcc(player), "ZP")
			setElementData(accSys:getPlayerAcc(player), "ZP", tonumber(ExpPlayer) + 30)
		end
	end
	outputDebugString("            ")
	outputDebugString("█▀▀ █▄░█ █▀▄")
	--exports["web"]:sendDiscordMessage("Derakht Ha Respawn Shodand")
	outputDebugString("██▄ █░▀█ █▄▀")
	outputDebugString("            ")
	outputDebugString("Wood Resource Restart!")
	outputDebugString("            ")
	setTimer(function ()
		restartResource(getThisResource())
	end, 500, 1)
end







					