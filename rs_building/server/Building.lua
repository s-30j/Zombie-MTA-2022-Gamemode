Building = class("Building")
local buildings = {}
addEvent("removeObject" ,true);






function Building:initialize(worldPosition, worldAngle)
    self.position = worldPosition
    self.angle = worldAngle
    self.anchors = {}
    self.grid = self:createGrid(3)
    self.parts = {}
    self.element = createObject(1337, worldPosition, Vector3(0, 0, worldAngle))
    self.element.alpha = 0
    self.element:setCollisionsEnabled(false)
    self.element:setData("isBuilding", true)
    buildings[self.element] = self    
    self:addPart("Foundation", 0, 0, 0, 0, true)
end

function Building:addPart(name, x, y, z,direction)

    local part = _G[name]:new(self)
    part.direction = direction
    part.x = x
    part.y = y
    part.z = z
    local position, angle = part:calculatePosition(x, y, z,direction)
    if not position or not angle then
        return false
    end

    self.grid[x][y][z] = part
    self.parts[part] = true
    position = rotateVector(position, self.angle)
    objectB = createObject(part.model, self.position + position, Vector3(0, 0, self.angle + angle))
    objectB.parent = self.element

	local tentCol = createColSphere( self.position + position, 1.2);
    if part.model == 1618 then
        attachElements(tentCol, objectB, 0, 0, 1);
    elseif part.model == 1623 then
        attachElements(tentCol, objectB, 0, 0, 1);
    elseif part.model == 3392 then
        attachElements(tentCol, objectB, 0, 2, -1.5);
    else
        attachElements(tentCol, objectB, 0, 0, 0);
    end

    setElementData(tentCol, "Object", objectB);
	setElementData(objectB, "Object", tentCol);
	setElementData(tentCol, "building", true);
	setElementData(tentCol, "objbuilding", true);

    setTimer(function()
    	setElementData(tentCol, "building", false);
    end,180000)

    objectB:setData("gridPosition", {x, y, z})
    objectB:setData("direction", direction)
    objectB:setData("name", name)
    return true
end

addEventHandler("removeObject",root, function(object,player)
    local col = getElementData(object, "Object");
        local x,y,z = getElementPosition(col);
        if col then destroyElement(col); end
        if object then destroyElement(object); end
        setElementData(player, "loot", false);
        setElementData(player, "currentCol", false);
        setElementData(player, "lootname", false);
end);

function Building:getPart(x, y, z)
    return self.grid[x][y][z]
end

function Building:checkPart(x, y, z, direction, name, instanceof)
    local part = self.grid[x][y][z]
    if not part then
        return false
    end
    if direction and part.direction ~= direction then
        return false
    end
    if name and part.name ~= name then
        return false
    end
    if instanceof and not part:isInstanceOf(instanceof) then
        return false
    end
    return true
end

-- Создаёт сетку с заданной размерностью
function Building:createGrid(dim)
    local mt = {}

    for i = 1, dim do
        mt[i] = { 
            __index = function(t, k)
                if i < dim then
                    t[k] = setmetatable({}, mt[i+1])
                    return t[k]
                end
            end                
        }
    end

    return setmetatable({}, mt[1])
end

local serverAjazemide = false

addEvent("buildPart", true)
addEventHandler("buildPart", resourceRoot, function (name, x, y, z, direction,myname)
    if serverAjazemide == true then
        chob = getElementData(myname,"item1")
        if name == "Foundation" then
            if chob < 25 then 
                outputChatBox("#ff0000 Shoma 25 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 25
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "Wall" then
            if chob < 12 then 
                outputChatBox("#ff0000 Shoma 12 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 12
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "WallDoor" then
            if chob < 10 then 
                outputChatBox("#ff0000 Shoma 10 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 10
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "WallWindow" then
            if chob < 10 then 
                outputChatBox("#ff0000 Shoma 10 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 10
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "Floor" then
            if chob < 12 then 
                outputChatBox("#ff0000 Shoma 12 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 12
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "Chill" then
            if chob < 8 then 
                outputChatBox("#ff0000 Shoma 8 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 8
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
        elseif name == "Door" then
            if chob < 12 then 
                outputChatBox("#ff0000 Shoma 12 Chob Baraye Sakht In Building Object Niaz Darid", myname, 255, 255, 0,true)
                return
            end
            local tedad = 12
            local itmPlayer = getElementData(myname, "item1")
            setElementData(myname, "item1", tonumber(itmPlayer) - tonumber(tedad))
            return
        end

        if source == resourceRoot then
            Building:new(Vector3(x, y, z),direction,myname)
        else
            local building = buildings[source]
            if not building then
                return
            end


            building:addPart(name, x, y, z,direction,myname)
        end
    else
        outputChatBox("#ff0000 Shoma Slot Building Nadarid", myname, 255, 255, 0,true)
    end
end)

