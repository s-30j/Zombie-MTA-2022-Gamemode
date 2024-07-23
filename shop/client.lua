
-- To ON / OFF The Faggio default Sound
-- FALSE = OFF \ TRUE = ON
local Sound = false

-- To ON / OFF The Jump
-- FALSE = OFF \ TRUE = ON
local Jump = true

function onClientResourceStart()
	engineLoadIFP("Data/ifp/bikev.ifp", "BIKEVC")
	engineImportTXD(engineLoadTXD("Data/skin/hover.txd", 462), 462)
	engineReplaceModel(engineLoadDFF("Data/skin/hover.dff", 462), 462)

	engineImportTXD(engineLoadTXD("Data/skin/hover.txd", 448), 448)
	engineReplaceModel(engineLoadDFF("Data/skin/hover.dff", 448), 448)
	
	if not Sound then
		setWorldSoundEnabled( 19, 21, false, true)
		setWorldSoundEnabled( 19, 37, false, true)
		setWorldSoundEnabled( 7, 1, false, true)
		setWorldSoundEnabled( 5, 19, false, true)
		setWorldSoundEnabled( 5, 20, false, true)
		setWorldSoundEnabled( 40, 0, false, true)
		setWorldSoundEnabled( 40, 2, false, true)
		setWorldSoundEnabled( 7, 0, false, true)
	end
	
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(), onClientResourceStart )

function setPedAnimationClient(estado)
	--setPedAnimation(source, "BIKEVC", "BIKEv_Ride", -1, false, false, false)
	if estado == true then
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Back", "BIKEVC", "BIKEv_Back" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_drivebyFT", "BIKEVC", "BIKEv_drivebyFT" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_drivebyLHS", "BIKEVC", "BIKEv_drivebyLHS" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_drivebyRHS", "BIKEVC", "BIKEv_drivebyRHS" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Fwd", "BIKEVC", "BIKEv_Fwd" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_getoffBACK", "BIKEVC", "BIKEv_getoffBACK" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_getoffLHS", "BIKEVC", "BIKEv_getoffLHS" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_getoffRHS", "BIKEVC", "BIKEv_getoffRHS" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_hit", "BIKEVC", "BIKEv_hit" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_jumponL", "BIKEVC", "BIKEv_jumponL" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_jumponR", "BIKEVC", "BIKEv_jumponR" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_kick", "BIKEVC", "BIKEv_kick" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Left", "BIKEVC", "BIKEv_Left" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_passenger", "BIKEVC", "BIKEv_passenger" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_pushes", "BIKEVC", "BIKEv_pushes" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Ride", "BIKEVC", "BIKEv_Ride" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Right", "BIKEVC", "BIKEv_Right" )
		engineReplaceAnimation( source, "BIKEV", "BIKEv_Still", "BIKEVC", "BIKEv_Still" )
	else
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Back")
		engineRestoreAnimation( source, "BIKEV", "BIKEv_drivebyFT" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_drivebyLHS" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_drivebyRHS" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Fwd" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_getoffBACK" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_getoffLHS" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_getoffRHS" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_hit" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_jumponL" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_jumponR" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_kick" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Left" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_passenger" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_pushes" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Ride" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Right" )
		engineRestoreAnimation( source, "BIKEV", "BIKEv_Still" )
	end
end
addEvent("setPedAnimationClient",true)
addEventHandler("setPedAnimationClient",getRootElement(),setPedAnimationClient)

function HoverJump()
	if Jump then
		if isPedInVehicle(getLocalPlayer()) then 
			local theVehicle = getPedOccupiedVehicle(getLocalPlayer())
			if isElement(theVehicle) and (getElementModel(theVehicle) == 462) and isVehicleOnGround (theVehicle) then
				if not isPedDead(getLocalPlayer()) then
					local vx,vy,vz = getElementVelocity(theVehicle)
					setElementVelocity(theVehicle,vx,vy,0.2)
				end
			end
		end
	end
end
bindKey("lshift", "down", HoverJump)






setBlurLevel( 10 )

-- Variables
local Thread = false
local VehModel =		462		-- Veh Model: faggio
local Veh
local EffectsEnabled =	true
local EngineEffect = createEffect( "nitro",0,0,0,0,0,0,0 )
local NitroEffect = createEffect( "flame",0,0,0,0,0,0,0 )
setEffectSpeed(EngineEffect, 10)
setEffectSpeed(NitroEffect, 10)
local Engine2Effect = createEffect( "nitro",0,0,0,0,0,0,0 )
local Nitro2Effect = createEffect( "flame",0,0,0,0,0,0,0 )
setEffectSpeed(Engine2Effect, 10)
setEffectSpeed(Nitro2Effect, 10)


addEventHandler("onClientPreRender", root,
	function( TS )
		if Thread then
			CVM = getElementMatrix( Veh, false )

			-- Rotate Configurator
			rotX, rotY, rotZ 	= getElementRotation(Veh)

			
			if EffectsEnabled then
				-- Acclerating Effect
				setElementPosition(Engine2Effect,
					0.012 * CVM[2][1] + -0.204 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -0.204 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -0.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Engine2Effect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(Nitro2Effect,
					0.012 * CVM[2][1] + -0.305 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -0.305 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -0.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Nitro2Effect, 80 , 0, 0 )

				-- Acclerating Effect
				setElementPosition(EngineEffect,
					-0.512 * CVM[2][1] + -0.204 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -0.204 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -0.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(EngineEffect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(NitroEffect,
					-0.512 * CVM[2][1] + -0.305 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -0.305 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -0.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(NitroEffect, 80 , 0, 0 )
			end
		end
	end
)




addEventHandler("onClientVehicleEnter", root,
	function(plr,seat)
		if plr == localPlayer then
			if getElementModel(source) == VehModel then
				Veh = source
				Thread = true

			end
		end
	end
)

addEventHandler("onClientVehicleExit", root,
    function(plr)
        if (plr == localPlayer) and (source == Veh) then
			Thread = false
			Veh = nil
			RunMultpr = 0
			VVx,VVy,VVz = 0,0,0



			setElementPosition(Engine2Effect,
					0.012 * CVM[2][1] + -2.204 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -2.204 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -2.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Engine2Effect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(Nitro2Effect,
					0.012 * CVM[2][1] + -2.305 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -2.305 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -2.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Nitro2Effect, 80 , 0, 0 )

				-- Acclerating Effect
				setElementPosition(EngineEffect,
					-0.512 * CVM[2][1] + -2.204 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -2.204 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -2.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(EngineEffect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(NitroEffect,
					-0.512 * CVM[2][1] + -2.305 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -2.305 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -2.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(NitroEffect, 80 , 0, 0 )

        end
    end
)
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
setBlurLevel( 10 )

-- Variables
local Thread2 = false
local VehModel2 =		448		-- Veh Model: faggio
local Veh2
local RunMultpr =  		0
local RunAccMax =  		1  		-- Max Velocity - acclerate
local RunRevMax = 	   -0.7  	-- Max Velocity - reverse
local RunIncBre =		0.1		-- Breaking / Traction
local RunIncDec =  		0.01	-- Change this for quicker accleration/breaking/reversing
local RunIncDecAuto = 	0.01 	-- Change this for slowdown without break or acc
local RotStablize =		2		-- For Straightening and Stablizing vehicle after steered up or down
local TurnMtp = 		2		-- Left/Right turn speed, (Cause crumbling if lower render/render-overhead/low-cpu)
local SteerMtp =		2		-- Steering Up/Down speed
local CVM 						-- Current Vehicle Matrix, to manipulate from one.
local rotX,rotY,rotZ, rotXB 	-- Rotation of vehicle
local Vx,Vy,Vz 					-- Vehicle Position
local VVx,VVy,VVz = 	0,0,0 	-- Vehicle Velocity, initialized so no error msg before accel
local AVelX,AVelY,AVelZ			-- Vehicle Angular Velocity (To Stabilize Vehicle Z axis rotation on collision or other impact)
local GroundClearence			-- Returns if not close to ground
local ScX,ScY,ScZ, EcX,EcY,EcZ	-- Ground Clearence checking
local ArrU,ArrD,AccKey,RevKey,LeftKey,RightKey,LeftSecKey,RightSecKey,SpaceKey -- = false,false,false,false,false,false,false,false,false -- Keys
local EffectsEnabled =	true
local EngineEffect = createEffect( "nitro",0,0,0,0,0,0,0 )
local NitroEffect = createEffect( "flame",0,0,0,0,0,0,0 )
setEffectSpeed(EngineEffect, 10)
setEffectSpeed(NitroEffect, 10)
local Engine2Effect = createEffect( "nitro",0,0,0,0,0,0,0 )
local Nitro2Effect = createEffect( "flame",0,0,0,0,0,0,0 )
setEffectSpeed(Engine2Effect, 10)
setEffectSpeed(Nitro2Effect, 10)


addEventHandler("onClientPreRender", root,
	function( TS )
		if Thread2 then
			CVM = getElementMatrix( Veh2, false )

			-- Rotate Configurator
			rotX, rotY, rotZ 	= getElementRotation(Veh2)
			rotXB = rotX

			-- Ground Clearence for Auto Incline Front --------------------------------------------------
			--			-Left/+Right		-Back/+Front				-Down/+Up
			ScX = --[[ 0 * CVM[1][1] + ]] 	0.5 * CVM[2][1] 		+ -0.3 * CVM[3][1] 		+ CVM[4][1]
			ScY = --[[ 0 * CVM[1][2] + ]] 	0.5 * CVM[2][2] 		+ -0.3 * CVM[3][2] 		+ CVM[4][2]
			ScZ = --[[ 0 * CVM[1][3] + ]] 	0.5 * CVM[2][3] 		+ -0.3 * CVM[3][3] 		+ CVM[4][3]
			EcX = --[[ 0 * CVM[1][1] + ]] 	1.5 * CVM[2][1] 		+ -0.9 * CVM[3][1] 		+ CVM[4][1]
			EcY = --[[ 0 * CVM[1][2] + ]] 	1.5 * CVM[2][2] 		+ -0.9 * CVM[3][2] 		+ CVM[4][2]
			EcZ = --[[ 0 * CVM[1][3] + ]] 	1.5 * CVM[2][3] 		+ -0.9 * CVM[3][3] 		+ CVM[4][3]
			
			GroundClearence = isLineOfSightClear( ScX,ScY,ScZ,EcX,EcY,EcZ )
			---------------------------------------------------------------------------------------------
			
			-- Auto Ground Clearence
			if (not GroundClearence) then
				rotX = rotX + 1
			end

			if AccKey then
				-- Breaking Check
				if RunMultpr < 0 then
					RunMultpr = RunMultpr + RunIncBre
				else
					-- Max Accleration Check
					if RunMultpr < RunAccMax then
						RunMultpr = RunMultpr + RunIncDec
					end
				end
				
			-- Braking/Reversing
			elseif RevKey then
				-- Breaking Check
				if RunMultpr > 0 then
					RunMultpr = RunMultpr - RunIncBre
				else
					-- Max Reverse Check
					if RunMultpr > RunRevMax then
						RunMultpr = RunMultpr - RunIncDec
					end
				end

			-- Slowdown / Idle
			else
				if RunMultpr > 0.02 then
					RunMultpr = RunMultpr - RunIncDecAuto
				elseif RunMultpr < -0.02 then
					RunMultpr = RunMultpr + RunIncDecAuto
				else
					RunMultpr = 0
				end
			end
			
			-- Ground Clearence for Manual Steering block -----------------------------------------------
			--			-Left/+Right		-Back/+Front				-Down/+Up
			ScX = --[[ 0 * CVM[1][1] + ]] 	0.5 * CVM[2][1] 		+ -0.3 * CVM[3][1] 		+ CVM[4][1]
			ScY = --[[ 0 * CVM[1][2] + ]] 	0.5 * CVM[2][2] 		+ -0.3 * CVM[3][2] 		+ CVM[4][2]
			ScZ = --[[ 0 * CVM[1][3] + ]] 	0.5 * CVM[2][3] 		+ -0.3 * CVM[3][3] 		+ CVM[4][3]
			EcX = --[[ 0 * CVM[1][1] + ]] 	1.2 * CVM[2][1] 		+ -1.2 * CVM[3][1] 		+ CVM[4][1]
			EcY = --[[ 0 * CVM[1][2] + ]] 	1.2 * CVM[2][2] 		+ -1.2 * CVM[3][2] 		+ CVM[4][2]
			EcZ = --[[ 0 * CVM[1][3] + ]] 	1.2 * CVM[2][3] 		+ -1.2 * CVM[3][3] 		+ CVM[4][3]
			
			GroundClearence = isLineOfSightClear( ScX,ScY,ScZ,EcX,EcY,EcZ )
			---------------------------------------------------------------------------------------------
			-- HandBreaking
			if SpaceKey then
				RunMultpr = RunMultpr > 0.1 and RunMultpr-0.1 or 0
			end
			
			-- Acclerating/Braking/Reversing - Movement
			if RunMultpr ~= 0 then
				Vx,Vy,Vz = getElementPosition(Veh2)
				VVx,VVy,VVz = RunMultpr * CVM[2][1] + CVM[4][1] - Vx, RunMultpr * CVM[2][2] + CVM[4][2] - Vy, RunMultpr * CVM[2][3] + CVM[4][3] - Vz
			else
				if SpaceKey and GroundClearence then
					VVx,VVy,VVz = VVx*0.1,VVy*0.1,-0.05
				else
					VVx,VVy,VVz = 0,0,0
				end
			end
			setElementVelocity(Veh2,VVx,VVy,VVz)
			
			
			-- Turning Left / "Veh2icle_left"
			if LeftKey or LeftSecKey then
				rotZ = rotZ+TurnMtp
			-- Turning Right / "Veh2icle_right"
			elseif RightKey or RightSecKey then
				rotZ = rotZ-TurnMtp
			end
			
			-- Steering Up / "steer_back"
			if ArrD then
				rotX = rotX+SteerMtp
			-- Steering Down / "steer_forward"
			elseif ArrU then
				if GroundClearence then
					rotX = rotX-SteerMtp
				end
			else
				-- Straighten Veh2icle
				if (GroundClearence) then
					-- 270 and 358
					if rotX > 180 and rotX < 358 then
						rotX = rotX + RotStablize
					-- 2 and 180
					elseif rotX > 2 and rotX < 180 then
						rotX = rotX - RotStablize
					end
				end
			end

			AVelX,AVelY,AVelZ = getElementAngularVelocity(Veh2)
			setElementAngularVelocity(Veh2,AVelX,AVelY,AVelZ*0.5)
			
			if RunMultpr > 0 then
				setElementRotation(Veh2,rotX,rotY,rotZ)
			else
				if (GroundClearence) then
					setElementRotation(Veh2,rotX,rotY,rotZ)
				else
					setElementRotation(Veh2,rotXB,rotY,rotZ)
				end
			end
			
			if EffectsEnabled then
				setElementPosition(Engine2Effect,
					0.012 * CVM[2][1] + -0.204 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -0.204 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -0.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Engine2Effect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(Nitro2Effect,
					0.012 * CVM[2][1] + -0.305 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -0.305 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -0.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Nitro2Effect, 80 , 0, 0 )

				-- Acclerating Effect
				setElementPosition(EngineEffect,
					-0.512 * CVM[2][1] + -0.204 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -0.204 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -0.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(EngineEffect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(NitroEffect,
					-0.512 * CVM[2][1] + -0.305 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -0.305 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -0.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(NitroEffect, 80 , 0, 0 )
			end
		end
	end
)


-- For replacing sound
-- world sound id's
--  7 = engine-idle sound
-- 19 = tyre-drag sound
-- 40 = accelerate sound
-- Reference in case if you need to change sound.

addEventHandler( "onClientKey", root, function(k,s) 
    if k == "arrow_u" then
        ArrU = s
    elseif k == "arrow_d" then
		ArrD = s
	elseif k == "w" then
		AccKey = s
	elseif k == "s" then
		RevKey = s
	elseif k == "a" then
		LeftKey = s
	elseif k == "d" then
		RightKey = s
	elseif k == "arrow_l" then
		LeftSecKey = s
	elseif k == "arrow_r" then
		RightSecKey = s
	elseif button == "space" then
		SpaceKey = s
	end
end )



addEventHandler("onClientVehicleEnter", root,
	function(plr,seat)
		if plr == localPlayer then
			if getElementModel(source) == VehModel2 then
				Veh2 = source
				Thread2 = true
				toggleControl ( "steer_back", false ) 
				toggleControl ( "steer_forward", false ) 
				toggleControl ( "brake_reverse", false )
			end
		end
	end
)

addEventHandler("onClientVehicleExit", root,
    function(plr)
        if (plr == localPlayer) and (source == Veh2) then
			Thread2 = false
			Veh2 = nil
			RunMultpr = 0
			VVx,VVy,VVz = 0,0,0
			toggleControl ( "steer_back", true ) 
			toggleControl ( "steer_forward", true )
			toggleControl ( "brake_reverse", true )

			

			setElementPosition(Engine2Effect,
					0.012 * CVM[2][1] + -2.204 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -2.204 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -2.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Engine2Effect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(Nitro2Effect,
					0.012 * CVM[2][1] + -2.305 * CVM[3][1] + CVM[4][1],
					0.012 * CVM[2][2] + -2.305 * CVM[3][2] + CVM[4][2],
					0.012 * CVM[2][3] + -2.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(Nitro2Effect, 80 , 0, 0 )

				-- Acclerating Effect
				setElementPosition(EngineEffect,
					-0.512 * CVM[2][1] + -2.204 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -2.204 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -2.204 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(EngineEffect, 0 , 0, 0 )
				
				-- Boosting/Nitro Effect
				setElementPosition(NitroEffect,
					-0.512 * CVM[2][1] + -2.305 * CVM[3][1] + CVM[4][1],
					-0.512 * CVM[2][2] + -2.305 * CVM[3][2] + CVM[4][2],
					-0.512 * CVM[2][3] + -2.305 * CVM[3][3] + CVM[4][3]
				)
				--setEffectSpeed(EngineEffect, RunMultpr*5)
				setElementRotation(NitroEffect, 80 , 0, 0 )
        end
    end
)
