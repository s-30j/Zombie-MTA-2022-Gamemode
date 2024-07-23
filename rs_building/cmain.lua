---------------------------------------------------------------------------------------------
---- Author: @MrDante , @Mohab --------------------------------------------------------------
---- Discord : Mohab#2440 -------------------------------------------------------------------
---- mtasa profile : https://forum.mtasa.com/profile/81708-mohab/  --------------------------
---- server : https://discord.gg/b9wgqcEUv4 -------------------------------------------------
---- Updated: 11/12/2021 --------------------------------------------------------------------
---------------------------------------------------------------------------------------------

  


   addEvent( "Login=BugFix", true )
   addEventHandler( "Login=BugFix", root,
      function()
         pakKonHamaro()
      end)


local ifp1 = engineLoadIFP ("Files/sur.ifp", "sur")
local ifp2 = engineLoadIFP( "Files/abdominalandpushup.ifp", "abdominalandpushup" )
local ifp3 = engineLoadIFP( "Files/sit.ifp", "otur" )
local ifp4 = engineLoadIFP( "Files/break.ifp", "break" )
local ifp5 = engineLoadIFP( "Files/weppos1.ifp", "weppos1" )
local ifp6 = engineLoadIFP( "Files/weppos2.ifp", "weppos2" )
local ifp7 = engineLoadIFP( "Files/t7ya1.ifp", "t7ya1" )
local ifp8 = engineLoadIFP( "Files/t7ya2.ifp", "t7ya2" )
local ifp9 = engineLoadIFP( "Files/policeanim.ifp", "policeanim" )
local ifp10 = engineLoadIFP( "Files/pullup.ifp", "pullup" )





addEvent( "pullup", true )
addEventHandler( "pullup", root,
	function(enable)
		if (enable) then setPedAnimation(source, "pullup", "TURNIK1", -1, true, false)
		else setPedAnimation(source)
		end		
	end)

addEvent( "policeanim", true )
addEventHandler( "policeanim", root,
	function(enable)
		if (enable) then setPedAnimation(source, "policeanim", "durus_gta", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "t7ya2", true )
addEventHandler( "t7ya2", root,
	function(enable)
		if (enable) then setPedAnimation(source, "t7ya2", "continencia2", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "t7ya1", true )
addEventHandler( "t7ya1", root,
	function(enable)
		if (enable) then setPedAnimation(source, "t7ya1", "continencia", -1, false,false,false,false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "break", true )
addEventHandler( "break", root,
	function(enable)
		if (enable) then setPedAnimation(source, "break", "Plyrlean_loop", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "weppos2", true )
addEventHandler( "weppos2", root,
	function(enable)
		if (enable) then setPedAnimation(source, "weppos2", "colt45_fire_2hands", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "weppos1", true )
addEventHandler( "weppos1", root,
	function(enable)
		if (enable) then setPedAnimation(source, "weppos1", "tutus1", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "pushup", true )
addEventHandler( "pushup", root,
	function(enable)
		if (enable) then setPedAnimation(source, "abdominalandpushup", "Otji_2", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "sit2", true )
addEventHandler( "sit2", root,
function(enable)
   if (enable) then setPedAnimation(source, "otur", "WEAPON_crouch", -1, true, false)
else setPedAnimation(source)
end
end
)

addEventHandler("onClientResourceStart", resourceRoot,
function()
triggerServerEvent("onClientSync", resourceRoot)
end
)


addEvent( "abdominal", true )
addEventHandler( "abdominal", root,
	function(enable)
		if (enable) then setPedAnimation(source, "abdominalandpushup", "Pres_2", -1, true, false)
		else setPedAnimation(source)
		end		
	end
)

addEvent( "sur", true )
addEventHandler( "sur", root,
	function(enable)
		if (enable) then setPedAnimation(source, "sur", "render", -1, false, false, false,true)
		else setPedAnimation(source)
		end		
	end)

addEventHandler("onClientResourceStop", resourceRoot,
	function()
      setElementData(localPlayer,"sur",false)
      if ifp2 then
			for _,player in ipairs(getElementsByType("player")) do
				local _, main = getPedAnimation(player)
				if (main == "Pres_2") then
					setPedAnimation(player)
            elseif (main == "Otji_2") then
               setPedAnimation(player)
            elseif (main == "tutus1") then
               setPedAnimation(player)
            elseif (main == "WEAPON_crouch") then
               setPedAnimation(player)
            elseif (main == "weppos1") then
               setPedAnimation(player)
            elseif (main == "Plyrlean_loop") then
               setPedAnimation(player)
            elseif (main == "pullup") then
               setPedAnimation(player)
            elseif (main == "durus_gta") then
               setPedAnimation(player)
            elseif (main == "colt45_fire_2hands") then
               setPedAnimation(player)
            elseif (main == "continencia") then
               setPedAnimation(player)
            elseif (main == "continencia2") then
               setPedAnimation(player)
            elseif (main == "render") then
               setPedAnimation(player)
            end
            triggerServerEvent("anim.cancel", localPlayer)
         end
         destroyElement(ifp1)
			destroyElement(ifp2)
         destroyElement(ifp3)
         destroyElement(ifp4)
         destroyElement(ifp5)
         destroyElement(ifp6)
         destroyElement(ifp7)
         destroyElement(ifp8)
         destroyElement(ifp9)
         destroyElement(ifp10)
		end
	end
)




local x, y = guiGetScreenSize ()
local relposx = x/2
local medX = x/2
local ancho = -3780
local sizeX = ancho/3
local mitSize = sizeX*0.5
local botX = medX-mitSize
local relposx = y/2
local medX2 = y/2
local ancho2 = -2160
local sizeX2 = ancho2/3
local mitSize2 = sizeX2*0.5
local botX2 = medX2-mitSize2

animations = {}
painel = {
   [1] = false
}






function painelanim ()
   local mx,my = getCursorPosition ()
   local fullx,fully = guiGetScreenSize()
   cursorx,cursory = mx*fullx,my*fully

   dxDrawImage ( botX+sizeX+550, botX2+sizeX2+290, 120, 120,"img/logo.png",0, 0, 0, tocolor ( 255, 255, 255) )
   dxDrawImage ( botX+sizeX+550, botX2+sizeX2+80, 120, 120,"img/Foundation.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+550, botX2+sizeX2+80, 120, 120) and 255 or 175 ))
   dxDrawImage ( botX+sizeX+440, botX2+sizeX2+140, 120, 120,"img/floor.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+440, botX2+sizeX2+140, 120, 120) and 255 or 175))
   dxDrawImage ( botX+sizeX+350, botX2+sizeX2+230, 120, 120,"img/doorway.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+350, botX2+sizeX2+230, 120, 120) and 255 or 175))
   dxDrawImage ( botX+sizeX+360, botX2+sizeX2+350, 120, 120,"img/window.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+360, botX2+sizeX2+350, 120, 120) and 255 or 175))
   --dxDrawImage ( botX+sizeX+220, botX2+sizeX2+390, 120, 120,"Images/sur.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+220, botX2+sizeX2+390, 120, 120) and 255 or 100))
   --dxDrawImage ( botX+sizeX+440, botX2+sizeX2+450, 120, 120,"img/chest.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+440, botX2+sizeX2+450, 120, 120) and 255 or 175))
   dxDrawImage ( botX+sizeX+550, botX2+sizeX2+490, 120, 120,"img/cancel.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+550, botX2+sizeX2+490, 120, 120) and 255 or 175))
   dxDrawImage ( botX+sizeX+665, botX2+sizeX2+150, 120, 120,"img/Wall.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+665, botX2+sizeX2+150, 120, 120) and 255 or 175))
   dxDrawImage ( botX+sizeX+760, botX2+sizeX2+230, 120, 120,"img/chill.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+760, botX2+sizeX2+230, 120, 120) and 255 or 175))
  -- dxDrawImage ( botX+sizeX+750, botX2+sizeX2+350, 120, 120,"img/cancel.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+750, botX2+sizeX2+350, 120, 120) and 255 or 100))
   --dxDrawImage ( botX+sizeX+665, botX2+sizeX2+450, 120, 120,"Images/cop.png", 0, 0, 0, tocolor ( 255, 255, 255, isCursorOnElement(botX+sizeX+665, botX2+sizeX2+450, 120, 120) and 255 or 100) )
end





                                          function check()
                                             if not isPedOnGround(localPlayer) or isPedInVehicle(localPlayer) then
                                                setElementData(localPlayer,"status111",0)
                                             else
                                                setElementData(localPlayer,"status111",1)
                                             end
                                          end
                                          addEventHandler("onClientRender", root, check)

                                          function animations.click (_, estado)
                                          --   if getElementData(localPlayer,"status111") == 0 then return
                                         -- else 
                                             if painel[1] == true then
                                                if estado == "down" then
                                                   setElementData(localPlayer,"stop11",true)
                                                   if isCursorOnElement(botX+sizeX+550, botX2+sizeX2+80, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      BiaFoundationBezarBaram()
                                                   elseif isCursorOnElement(botX+sizeX+440, botX2+sizeX2+140, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      BiaFloorBezarBaram()
                                                   elseif isCursorOnElement(botX+sizeX+665, botX2+sizeX2+150, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      biaWallBezarBaram()
                                                  elseif isCursorOnElement(botX+sizeX+760, botX2+sizeX2+230, 120, 120) then -- تمارين
                                                      BiaChillBezarBaram()
                                                   elseif isCursorOnElement(botX+sizeX+440, botX2+sizeX2+450, 120, 120) then -- جلوس
                                                         playSound("SFX/click2.mp3")
                                                   elseif isCursorOnElement(botX+sizeX+360, botX2+sizeX2+350, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      BiaWallWindowBezarBaram()
                                                   elseif isCursorOnElement(botX+sizeX+350, botX2+sizeX2+230, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      BiaWallDoorBezarBaram()
                                                   elseif isCursorOnElement(botX+sizeX+550, botX2+sizeX2+490, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      triggerServerEvent("anim.cancel", localPlayer)
                                                      triggerServerEvent ( "anim.handsup2off", localPlayer )
                                                      setElementData(localPlayer,"cr",0)
                                                      removeEventHandler("onClientRender", root, painelanim)
                                                      removeEventHandler("onClientRender", root, exer)
                                                      removeEventHandler("onClientRender", root, numbers)
                                                      removeEventHandler("onClientRender", root, numbers2)
                                                      removeEventHandler("onClientRender", root, numbers3)
                                                      removeEventHandler("onClientRender", root, numbers4)
                                                      removeEventHandler("onClientRender", root, numbers5)
                                                      removeEventHandler("onClientRender", root, numbers6)
                                                      removeEventHandler("onClientRender", root, numbers7)
                                                      removeEventHandler("onClientRender", root, numbers8)
                                                      removeEventHandler("onClientRender", root, numbers9)
                                                      removeEventHandler("onClientRender", root, numbers10)
                                                      showCursor(false)
                                                      painel[1] = not painel[1]
                                                      showCursor(painel[1])
                                                      pakKonHamaro()                                                                                              
                                                   elseif isCursorOnElement(botX+sizeX+800, botX2+sizeX2+550, 120, 120) then
                                                      playSound("SFX/click2.mp3")
                                                      triggerServerEvent("anim.policefwd", localPlayer)
                                                   end
                                                end
                                             end
                                       end

                                       addEventHandler("onClientClick", root, animations.click )

                                       function abrir ()
                                             if getElementData(localPlayer, "logedin") then
                                                if not painel[1] then
                                                   --if getElementData(localPlayer,"status111") == 0 then return end
                                                   addEventHandler("onClientRender", root, painelanim)
                                                else
                                                   setElementData(localPlayer,"cr",0)
                                                   removeEventHandler("onClientRender", root, painelanim)
                                                   removeEventHandler("onClientRender", root, exer)
                                                   removeEventHandler("onClientRender", root, numbers)
                                                   removeEventHandler("onClientRender", root, numbers2)
                                                   removeEventHandler("onClientRender", root, numbers3)
                                                   removeEventHandler("onClientRender", root, numbers4)
                                                   removeEventHandler("onClientRender", root, numbers5)
                                                   removeEventHandler("onClientRender", root, numbers6)
                                                   removeEventHandler("onClientRender", root, numbers7)
                                                   removeEventHandler("onClientRender", root, numbers8)
                                                   removeEventHandler("onClientRender", root, numbers9)
                                                   removeEventHandler("onClientRender", root, numbers10)
                                                   showCursor(false)
                                                end

                                                painel[1] = not painel[1]
                                                showCursor(painel[1])
                                             end
                                       end
                                      -- bindKey("5", "both", abrir)
                                       bindKey("B", "down", abrir)


                                       function isMouseInPosition ( x, y, width, height )
                                          if ( not isCursorShowing( ) ) then
                                             return false
                                          end
                                          local sx, sy = guiGetScreenSize ( )
                                          local cx, cy = getCursorPosition ( )
                                          local cx, cy = ( cx * sx ), ( cy * sy )

                                          return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
                                       end


                                       function isCursorOnElement(x,y,w,h)
                                          if (not isCursorShowing()) then
                                             return false
                                          end
                                          local mx,my = getCursorPosition ()
                                          local fullx,fully = guiGetScreenSize()
                                          cursorx,cursory = mx*fullx,my*fully
                                          if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
                                             return true
                                          else
                                             return false
                                          end
                                       end



                                     --[[  addEventHandler( "onClientRelocalPlayerStart", getRootElement(),
                                       function ()
                                          setElementData(localPlayer,"status111",0)
                                          setElementData(localPlayer,"cr",0)
                                       end
                                       )

                                       addEventHandler( "onClientRelocalPlayerStop", getRootElement(),
                                       function ()
                                          setElementData(localPlayer,"status111",0)
                                          setElementData(localPlayer,"cr",0)
                                       end
                                       )]]


                                       --[[
                                       1- 1369, 240, 120, 120
                                       2- 1500, 240, 120, 120
                                       3- 1369, 369, 120, 120
                                       4- 1500, 369, 120, 120
                                       5- 1369, 498, 120, 120
                                       6- 1500, 498, 120, 120
                                       7- 1369, 627, 120, 120
                                       8- 1500, 627, 120, 120
                                       9- 1369, 756, 120, 120
                                       10-1500, 756, 120, 120
                                       ]]


                                       function mouse1()
                                          if getKeyState("mouse1") then
                                             -- التمارين
                                             if getElementData(localPlayer,"cr") == 1 then -- 1
                                                if isMouseInPosition(1369, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("abdominal",localPlayer,localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then -- 1
                                                if isMouseInPosition(1369, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.police1", localPlayer)
                                                end

                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then -- 1
                                                if isMouseInPosition(1369, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then -- 1
                                                if isMouseInPosition(1369, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.sit1",localPlayer)
                                                end
                                             end


                                          end
                                       end
                                       addEventHandler ( "onClientClick", root, mouse1)

                                       

                                       
                                       function mouse2()
                                          if getKeyState("mouse1") then
                                             -- التمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1500, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("pushup",localPlayer,localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1500, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.police2", localPlayer)
                                                end
                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then -- 1
                                                if isMouseInPosition(1500, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance2", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then -- 1
                                                if isMouseInPosition(1500, 240, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("sit2", localPlayer,localPlayer)
                                                end
                                             end

                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse2)

                                       function mouse3()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1369, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("break",localPlayer,localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1369, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.policefwd", localPlayer)
                                                end
                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then 
                                                if isMouseInPosition(1369, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance3", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then 
                                                if isMouseInPosition(1369, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.sit2",localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse3)

                                       function mouse4()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1500, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("pullup",localPlayer,localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1500, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.aim2", localPlayer)
                                                end
                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then 
                                                if isMouseInPosition(1500, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance4", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then 
                                                if isMouseInPosition(1500, 369, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.sit3",localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse4)

                                       function mouse5()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1369, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight4", localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1369, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.aim1", localPlayer)
                                                end
                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then
                                                if isMouseInPosition(1369, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance5", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then
                                                if isMouseInPosition(1369, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.sit4",localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse5)

                                       function mouse6()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1500, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight5", localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1500, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("policeanim",localPlayer,localPlayer)
                                                end
                                                -- الرقص
                                             elseif getElementData(localPlayer,"cr") == 20 then -- 1
                                                if isMouseInPosition(1500, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.dance6", localPlayer)
                                                end
                                                -- الجلوس
                                             elseif getElementData(localPlayer,"cr") == 30 then
                                                if isMouseInPosition(1500, 498, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.sit5",localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse6)

                                       function mouse7()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1369, 627, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight6", localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1369, 627, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("weppos1",localPlayer,localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse7)

                                       function mouse8()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1500, 627, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight7", localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1500, 627, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("weppos2",localPlayer,localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse8)

                                       function mouse9()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1369, 756, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight8", localPlayer)
                                                end
                                                -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1369, 756, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("t7ya1",localPlayer,localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse9)

                                       function mouse10()
                                          if getKeyState("mouse1") then
                                             -- تمارين
                                             if getElementData(localPlayer,"cr") == 1 then
                                                if isMouseInPosition(1500, 756, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("anim.fight9", localPlayer)
                                                end
                                             -- الشرطة
                                             elseif getElementData(localPlayer,"cr") == 10 then
                                                if isMouseInPosition(1500, 756, 120, 120) and getKeyState("mouse1") then
                                                   playSound("SFX/click.mp3")
                                                   triggerServerEvent("t7ya2",localPlayer,localPlayer)
                                                end
                                             end
                                          end
                                       end

                                       addEventHandler ( "onClientClick", root, mouse10)