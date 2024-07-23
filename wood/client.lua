

local showBox = false
local Size = {guiGetScreenSize()}
local BoxReact = {142,12}
local pos = {Size[1]/2 - BoxReact[1]/2, Size[2]/1.25 - BoxReact[2]/2}
local Woodprogress = 0


addEventHandler("onClientObjectDamage", getRootElement(),function(loss,attacker)
    if getElementData(source,"isWood") == true then
        if localPlayer == attacker then
            if getPedWeapon(localPlayer) == 8 then
                if showBox then
                    if Woodprogress >= 0 then
                       
                        randDamage = math.random(10,11)
						Woodprogress = Woodprogress+(loss/randDamage)
                        if Woodprogress+(loss/randDamage) >= 156.2 then
                            showBox = false
                            Woodprogress = 0
                            triggerServerEvent("CreateWoodStep2",getLocalPlayer())
                            setTimer(function()
                                showBox = false
                            end,500,2)
                        end
                    end
				else 
				--	outputChatBox("Not")
                end
            end
        end
    end
end)



local WoodElement = nil

setTimer(function()
		
	for k,v in ipairs(getElementsByType("object")) do
		if getElementData(v,"isWood") then
			local pX,pY,pZ = getElementPosition(localPlayer)
			local eX,eY,eZ = getElementPosition(v)
			if getDistanceBetweenPoints3D(pX,pY,pZ,eX,eY,eZ) <= 3 then
				if getPedWeapon(localPlayer) == 8 then
					if not showBox then
						showBox = true
						WoodElement = v
					end
                else
                    if showBox then
						showBox = false
						WoodElement = nil
						if Woodprogress >= 0 then
                            showBox = false
							Woodprogress = 0
						end
					end  
				end
			end
			if getDistanceBetweenPoints3D(pX,pY,pZ,eX,eY,eZ) >= 3 then
				if WoodElement == v then
					if showBox then
						showBox = false
						WoodElement = nil
						if Woodprogress >= 0 then
                            showBox = false
							Woodprogress = 0
						end
					end
				end
			end
		end
	end
		
end,250,0)

addEventHandler("onClientRender",getRootElement(),function()

	if showBox then
		dxDrawRectangle(pos[1],pos[2],BoxReact[1],BoxReact[2]+20,tocolor(0,0,0,80))
		dxDrawRectangle(pos[1],pos[2],Woodprogress,BoxReact[2]+20,tocolor(0, 255, 42,200))
		dxDrawRectangle(pos[1],pos[2]-2,BoxReact[1],2,tocolor(0,0,0,160))
		dxDrawRectangle(pos[1],pos[2]+32+0.1,BoxReact[1],2,tocolor(0,0,0,160))
		dxDrawRectangle(pos[1]-2,pos[2]-2,2,BoxReact[2]+24,tocolor(0,0,0,160))
		dxDrawRectangle(pos[1]+BoxReact[1],pos[2]-2,2,BoxReact[2]+24,tocolor(0,0,0,160))
	end
    
end)


























