txd1 = engineLoadTXD ( "objects/parachute.txd" )
engineImportTXD ( txd1, 2903 )
dff1 = engineLoadDFF ( "objects/parachute.dff" )
engineReplaceModel ( dff1, 2903 )
txd2 = engineLoadTXD ( "objects/landmine.txd" )
engineImportTXD ( txd2, 1510 )
dff2 = engineLoadDFF ( "objects/landmine.dff" )
engineReplaceModel ( dff2, 1510 )

txd3 = engineLoadTXD ( "objects/safe.txd" )
engineImportTXD ( txd3, 2332 )
dff3 = engineLoadDFF ( "objects/safe.dff" )
engineReplaceModel ( dff3, 2332 )
col3 = engineLoadCOL("objects/safe.col");
engineReplaceCOL(col3, 2332);

txd4 = engineLoadTXD ( "objects/safe.txd" )
engineImportTXD ( txd4, 1829 )
dff4 = engineLoadDFF ( "objects/safe_destroyed.dff" )
engineReplaceModel ( dff4, 1829 )
col4 = engineLoadCOL("objects/safe.col");
engineReplaceCOL(col4, 1829);

local mapobjects = {
  {"ang",2296},
  {"baguilok",2297},
  {"bigsandbags",2298},
  {"baraquement",2299},
  {"controltower",2300},
  {"fire",2301},
  {"fires",2302},
  {"medictent",2303},
  {"tents",2304},
  {"tents2",2305},
  {"torre",2306},
  {"wall",2309},
}

addEventHandler("onClientResourceStart",resourceRoot,function()
  for i,v in pairs(mapobjects) do
    local col11 = engineLoadCOL("objects/map/"..v[1]..".col")
    engineReplaceCOL(col11,v[2]);
    local txd11 = engineLoadTXD("objects/map/"..v[1]..".txd");
    engineImportTXD (txd11,v[2]);
    local dff11 = engineLoadDFF("objects/map/"..v[1]..".dff");
    engineReplaceModel(dff11,v[2]);
    engineSetModelLODDistance(v[2], 1000);
  end
end);

--[[local objects = {
  --{"modelname","colname",modelid}
  {"cardboardbox","cardboardbox",1558},
  --{"firestation","firestation",2009},
  --{"generalstore","generalstore",2010},
  --{"wall","wall",2011},
  --{"wallgate","wallgate",2012},
  --{"tower","tower",2013},
  --{"shop","shop",2014},
}
]]

local vehicles = {
	{"sedan",421,false},
	{"blade",536,false},
	{"551",551,false},
	{"487",487,false},
	{"422",422,false},
	{"579",579,false},
	{"470",470,false},
	{"497",497,false},
	{"468",468,false},
	{"433",433,false},
	{"473",473,false},
	{"509",509,false},
	{"463",463,false},
	{"490",490,false},
	{"531",531,false},
	{"437",437,false},
	{"471",471,false},
	{"taxi",420,false},
	{"modernvan",456,false},
  	{"armoredveh",528,false},
}

local admskin_txd = engineLoadTXD ("skins/admin.txd")
engineImportTXD(admskin_txd, 290)
local admskin_dff = engineLoadDFF ("skins/admin.dff", 290)
engineReplaceModel(admskin_dff, 290)


setTimer(function()
	local x, y, z = getElementPosition(localPlayer)
	local models = getElementsByType("vehicle");
	if #models ~= 0 then
		for i,v in pairs(models) do
			local model = v;
			for i,v in pairs(vehicles) do
				if getElementModel(model) == v[2] then
					local ex, ey, ez = getElementPosition(model)
					local elementdistance = getDistanceBetweenPoints2D ( x, y, ex, ey )
					if elementdistance <= 100 and v[3] == false then
						downloadFile("vehicles/"..v[1]..".txd")
						downloadFile("vehicles/"..v[1]..".dff")
					end
				end
			end
		end
	end
end, 500, 0);

function checkFile(filepath)
	if (filepath) then
		if fileExists(filepath) then
			return true;
		end
		return false;
	end
end

function onDownloadFinish(file,success)
	if ( source == resourceRoot ) then
		for _,v in pairs(vehicles) do
			if (success) then
				if (file == "vehicles/"..v[1]..".txd") then
					local vehtxd = engineLoadTXD ("vehicles/"..v[1]..".txd")
					engineImportTXD (vehtxd, v[2])
					v[3] = true;
				elseif (file == "vehicles/"..v[1]..".dff") then
					local vehdff = engineLoadDFF ("vehicles/"..v[1]..".dff", v[2])
					engineReplaceModel (vehdff, v[2])
					v[3] = true;
				end
			else
				if (file == "vehicles/"..v[1]..".txd") then
					outputChatBox (v[1]..".txd failed to download");
				elseif (file == "vehicles/"..v[1]..".dff") then
					outputChatBox (v[1]..".dff failed to download");
				end
			end
		end
	end
end
addEventHandler("onClientFileDownloadComplete",root,onDownloadFinish)






local itemReplaceTable = {
	["mods/weapons/"] = {
		-- unused 1832,1870,1871,1873
		1869,1872,1874,1875,
		1876,1830,1880,1833,
		1834,1835,1838,1839,
		351,333,1877,1878,
		1879,1881,1882,357,
		348,349
	},
	["mods/skins/"] = {
		12,13,14,285,179,180,288,
		73,27,29,66,210,287
	},
	["mods/skins/zombies/"] = {
		15,22,56,67,68,69,
		70,92,97,105,107,
		108,126,127,128,129
	},
	["mods/items/"] = {
		1247,1213,1241,1577,2601,
		2891,1576,2709,2770,3013,
		2358,3026,2041,2647,2683,
		1271,983,367,1252,3243,
		1575,339,1717,1719,1725,
		1736,1738,1745,1747,1748,
		1749,1750,1751,2105,2106,
	}
};

local disabledWeaponIndexSounds = {
	5,13,33,53,3,4,24,15,76,
	77,26,52,27,23,55,32,73,
	74,21,22,2,3,6,7,8,1,29,
	30,0,14,18,17
}

local emptyWeaponModels = { -- custom weapons that are used to make more weapons
	347,353,355,356,358
}

addEventHandler("onClientResourceStart", resourceRoot, function()
	for i = 346, 358 do
		for _,v in pairs(emptyWeaponModels) do
			if (i == v) then
				local tex = engineLoadTXD("mods/weapons/alpha.txd", i);
				engineImportTXD(tex, i);
				local mod = engineLoadDFF("mods/weapons/alpha.dff", i);
				engineReplaceModel(mod, i);
			end
		end
	end
	for k,_ in pairs(itemReplaceTable) do
		for _,v in ipairs(itemReplaceTable[k]) do
			local txd = engineLoadTXD(k..tostring(v)..".txd", v);
			engineImportTXD(txd, v);
			local dff = engineLoadDFF(k..tostring(v)..".dff", v);
			engineReplaceModel(dff, v);
			if (fileExists(k..tostring(v)..".col")) then
				local col = engineLoadCOL(k..tostring(v)..".col", v);
				engineReplaceCOL(col, v);
			end
		end
	end
	-- standart txd skin textures
	local txd = engineLoadTXD("mods/skins/73.txd", v);
	engineImportTXD(txd, 71);
	local dff = engineLoadDFF("mods/skins/73.dff", v);
	engineReplaceModel(dff, 71);
	local txd = engineLoadTXD("mods/skins/2.txd", v);
	engineImportTXD(txd, 2);
	local dff = engineLoadDFF("mods/skins/2.dff", v);
	engineReplaceModel(dff, 2);
	local txd = engineLoadTXD("mods/skins/72.txd", v);
	engineImportTXD(txd, 72);
	local dff = engineLoadDFF("mods/skins/72.dff", v);
	engineReplaceModel(dff, 72);
	local shader_1 = dxCreateShader("scripts/tools/tex_r.fx");
	local texture_1 = dxCreateTexture("images/empty.png");
	dxSetShaderValue(shader_1, "gTexture", texture_1);
	engineApplyShaderToWorldTexture(shader_1, "shad_exp");
	engineApplyShaderToWorldTexture(shader_1, "cameracrosshair");
	engineApplyShaderToWorldTexture(shader_1, "snipercrosshair");
	toggleControl("radar", false);
	setPlayerHudComponentVisible("radar", false);
	setPlayerHudComponentVisible("area_name", false);
	setPlayerHudComponentVisible("breath", false);
	setPlayerHudComponentVisible("clock", false);
	setPlayerHudComponentVisible("money", false);
	setPlayerHudComponentVisible("health", false);
	setPlayerHudComponentVisible("vehicle_name", false);
	setPlayerHudComponentVisible("radio", false);
	setPlayerHudComponentVisible("weapon", false);
	setPlayerHudComponentVisible("ammo", false);
	setPedTargetingMarkerEnabled(false);
	setAmbientSoundEnabled("general", false);
	setAmbientSoundEnabled("gunfire", false);
	for _,v in ipairs(disabledWeaponIndexSounds) do
		setWorldSoundEnabled(5,v,false);
	end
	setWorldSoundEnabled(40,0,false);
	setWorldSoundEnabled(40,1,false);
	setWorldSoundEnabled(40,2,false);
	setWorldSoundEnabled(7,0,false);
	setWorldSoundEnabled(7,1,false);
	setWorldSoundEnabled(8,0,false);
	setWorldSoundEnabled(8,1,false);
	setWorldSoundEnabled(10,0,false);
	setWorldSoundEnabled(10,1,false);
	setWorldSoundEnabled(11,0,false);
	setWorldSoundEnabled(11,1,false);
	setWorldSoundEnabled(12,0,false);
	setWorldSoundEnabled(12,1,false);
	setWorldSoundEnabled(13,0,false);
	setWorldSoundEnabled(13,1,false);
	setWorldSoundEnabled(14,0,false);
	setWorldSoundEnabled(14,1,false);
	setWorldSoundEnabled(15,0,false);
	setWorldSoundEnabled(15,1,false);
	setWorldSoundEnabled(9,0,false);
	setWorldSoundEnabled(9,1,false);
	for _,v in pairs(getElementsByType("object")) do
		engineSetModelLODDistance(getElementModel(v), 500);
	end
end);