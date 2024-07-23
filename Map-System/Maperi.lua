setDevelopmentMode(true)


		local screenW, screenH = guiGetScreenSize()
		local font1_Font = guiCreateFont("Data/Font.ttf", 15)
		local font5_Font = guiCreateFont("Data/Font.ttf", 10)
		local font0_Font = guiCreateFont("Data/Font.ttf", 25)
        Background = guiCreateWindow((screenW - 750) / 2, (screenH - 400) / 2, 750, 400, "Maperi Panel ZombieMTA", false)
		guiSetProperty( Background, "Visible", "False")
		aks = guiCreateStaticImage(10, 25, 886, 505, "Data/Background.png", false, Background)
        
        Players = guiCreateComboBox(408, 26, 220, 315, "", false, aks)
        Select = guiCreateButton(635, 26, 61, 24, "Select", false, aks)
		guiSetProperty(Select, "HoverTextColour", "FF00FF00")
        InformationBackground = guiCreateStaticImage(14, 25, 386, 317, "Data/WhiteBG.png", false, aks)
    
        PlayerInofrmationLabel = guiCreateLabel(8, 8, 364, 41, "Player Information", false, InformationBackground)
        
        guiSetFont(PlayerInofrmationLabel, font0_Font)
        guiLabelSetHorizontalAlign(PlayerInofrmationLabel, "center", false)
        UsernameLabel = guiCreateLabel(7, 55, 365, 41, "Name:", false, InformationBackground)
		guiLabelSetColor(UsernameLabel,239 , 239 , 100 )
		guiSetFont(UsernameLabel, font1_Font)
        guiLabelSetVerticalAlign(UsernameLabel, "center")
		
        UsernameLabel1 = guiCreateLabel(120, 63, 365, 41, "", false, InformationBackground)
		guiLabelSetColor(UsernameLabel1,255 , 255 , 255 )
		guiSetFont(UsernameLabel1, font1_Font)
		----------------------------------
        LevelLabel = guiCreateLabel(7, 96, 365, 41, "Account ID:", false, InformationBackground)
        guiSetFont(LevelLabel, font1_Font)
		guiLabelSetColor(LevelLabel,239 , 239 , 100 )
		guiLabelSetVerticalAlign(LevelLabel, "center")
		LevelLabel1 = guiCreateLabel(140, 104, 365, 41, "", false, InformationBackground)
        guiSetFont(LevelLabel1, font1_Font)
		guiLabelSetColor(LevelLabel1,255 , 255 , 255 )
 
		-----------------------------------
        LastLoginLabel = guiCreateLabel(7, 137, 365, 41, "Level:", false, InformationBackground)
        guiSetFont(LastLoginLabel, font1_Font)
		guiLabelSetColor(LastLoginLabel,239 , 239 , 100 )
        guiLabelSetVerticalAlign(LastLoginLabel, "center")
		LastLoginLabel1 = guiCreateLabel(90, 145, 365, 41, "", false, InformationBackground)
        guiSetFont(LastLoginLabel1, font1_Font)
		guiLabelSetColor(LastLoginLabel1,255 , 255 , 255 )
		-----------------------------------
        FactionWarnsLabel = guiCreateLabel(7, 178, 365, 41, "Maperi ID:", false, InformationBackground)
        guiSetFont(FactionWarnsLabel, font1_Font)
		guiLabelSetColor(FactionWarnsLabel,239 , 239 , 100 )
        guiLabelSetVerticalAlign(FactionWarnsLabel, "center")
        FactionWarnsLabel1 = guiCreateLabel(160, 186, 365, 41, "", false, InformationBackground)
        guiSetFont(FactionWarnsLabel1, font1_Font)
		guiLabelSetColor(FactionWarnsLabel1,255 , 255 , 255 )

		-----------------------------------
        FactionRankLabel = guiCreateLabel(7, 219, 365, 41, "Maperi Rank:", false, InformationBackground)
        guiSetFont(FactionRankLabel, font1_Font)
		guiLabelSetColor(FactionRankLabel,239 , 239 , 100 )
        guiLabelSetVerticalAlign(FactionRankLabel, "center")
        FactionRankLabel1 = guiCreateLabel(147, 227, 365, 41, "", false, InformationBackground)
        guiSetFont(FactionRankLabel1, font1_Font)
		guiLabelSetColor(FactionRankLabel1,255 , 255 , 255 )
		----------------------------------
        Kick = guiCreateButton(213, 270, 116, 32, "Kick", false, InformationBackground)
		Close = guiCreateButton(703, 25, 24, 24, "X", false, aks)
		guiSetFont(Kick, font5_Font)
		guiSetFont(Close, font5_Font)
		guiSetProperty(Kick, "HoverTextColour", "FFFE0000")
		guiSetProperty(Close, "HoverTextColour", "FFFE0000")
		


bindKey ("F10", "down",
function()
    triggerServerEvent("openFactionPanel2", getLocalPlayer(), getLocalPlayer() )
end)

function toggleFactionPanel(root)
	if root == getLocalPlayer() then
		if getElementData(root, "loggedIn") == true then
			local windowState = guiGetProperty(Background, "Visible")
			if windowState == "False" then
                guiSetProperty(Background, "Visible", "True")
				showCursor(true)
				triggerServerEvent("infoFaction", getLocalPlayer(), getLocalPlayer() )
			else
				guiSetProperty(Background, "Visible", "False")
				guiComboBoxClear(Players)
				showCursor(false)
			end
		end
	end
end
addEvent("toggleFcPanel2",true)
addEventHandler("toggleFcPanel2", root, toggleFactionPanel)


addEvent("infoFactionPanel",true)
addEventHandler("infoFactionPanel",getLocalPlayer(),function(fmember,lvl)
	factionMember = tostring(fmember)
	guiComboBoxAddItem(Players, factionMember)
end)

selectedName = 0

addEventHandler("onClientGUIClick",root,
function ()
	if source == Close then
	    sound = playSound("Data/error.mp3",false)
        setSoundVolume(sound,1)
		guiSetVisible(Background, false)
	    showCursor(false)
		guiComboBoxClear(Players)
	elseif source == Select then
		if guiGetText(Players) == "" then
			exports["notf"]:addNotification("Ebteda Yek Member Ra Entekhab Konid!","error")
		sound = playSound("Data/errorp.mp3",false)
        setSoundVolume(sound,0.2)
		else
		sound = playSound("Data/click.mp3",false)
        setSoundVolume(sound,0.2)
			entekhab = guiComboBoxGetSelected(Players)
			esmesh = guiComboBoxGetItemText(Players, entekhab)
			guiSetText ( UsernameLabel1, ""..esmesh )
			local finalName = tostring(esmesh)
			selectedName = esmesh
			triggerServerEvent("getPlayerFactionData",getLocalPlayer(),getLocalPlayer(),finalName)
		end
	elseif source == GiveFactionWarn then
		if selectedName ~= 0 then
			local finalPlayerName = tostring(selectedName)
			triggerServerEvent("bedeFw2", getLocalPlayer(), getLocalPlayer(),finalPlayerName)
			
		else
			exports["notf"]:addNotification("Ebteda Yek Member Ra Entekhab Konid!","error")
			sound = playSound("Data/errorp.mp3",false)
        setSoundVolume(sound,0.2)
		end
    elseif source == Kick then
		if selectedName ~= 0 then
						local fName = tostring(selectedName)
						local fFp = tostring(guiGetText(FP))
						triggerServerEvent("KickeshKonAzToFac2",getLocalPlayer(),getLocalPlayer(),fName,fFp)
		else
			exports["notf"]:addNotification("Ebteda Yek OzV Ra Entekhab Konid!","error")
			sound = playSound("Data/errorp.mp3",false)
            setSoundVolume(sound,0.2)
		end
	end
end)

addEvent("SetPlayerDataOnGui",true)
addEventHandler("SetPlayerDataOnGui",getLocalPlayer(),function(thePlayer,pLevel,pFWarn,ID,finalRank)
	guiSetText(LevelLabel1," "..ID)
	guiSetText(FactionWarnsLabel1," "..pFWarn.."")
	guiSetText(FactionRankLabel1," "..finalRank.."")
	guiSetText(LastLoginLabel1," "..pLevel)
end)

function reloadMPage()
	guiSetText(LevelLabel1," ")
	guiSetText(FactionWarnsLabel1," ")
	guiSetText(FactionRankLabel1," ")
	guiSetText(LastLoginLabel1," ")
	guiComboBoxClear(Players)
	triggerServerEvent("infoFaction", getLocalPlayer(), getLocalPlayer() )
end

addEvent("reloadPageEvent",true)
addEventHandler("reloadPageEvent",getLocalPlayer(),function()
	reloadMPage()
end)

