---------------------------------
-------**Script By Edward**------
---------------------------------

function centerWindow (center_window)
    local screenW, screenH = guiGetScreenSize()
    local windowW, windowH = guiGetSize(center_window, false)
    local x, y = (screenW - windowW) /2,(screenH - windowH) /2
    guiSetPosition(center_window, x, y, false)
end

GUIEditor = {
    tab = {},
    label = {},
    tabpanel = {},
    edit = {},
    button = {},
    window = {},
    scrollbar = {},
	staticimage = {},
	Image = {}
    
}

GUIEditor.window[1] = guiCreateWindow(480, 187, 580, 500, "User Panel", false)
GUIEditor.Image[1] = guiCreateStaticImage(10,50,1300,1100,"PanelStats/image/Logo.png",false, GUIEditor.window[1])
guiWindowSetSizable(GUIEditor.window[1], false)
----------------------------------------------------------------------
GUIEditor.tabpanel[1] = guiCreateTabPanel(9, 22, 680, 520, false, GUIEditor.window[1])
GUIEditor.tab[1] = guiCreateTab("Etelaat", GUIEditor.tabpanel[1])
guiSetFont(GUIEditor.tab[1],"default-bold-small", 25)
-------------------------------------------------------------------------------------
------------------------------------------------------------
------------------------------------
---------------------
----------
local font4 = guiCreateFont("PanelStats/GOTHIC.ttf", 10)
local font7 = guiCreateFont("PanelStats/GOTHIC.ttf", 9)
-------
GUIEditor.tab[2] = guiCreateTab("Mojavez Ha", GUIEditor.tabpanel[1])
guiSetFont(GUIEditor.tab[2],"default-bold-small", 25)
GUIEditor.staticimage[1] = guiCreateStaticImage(12, -20, 150, 200, "PanelStats/image/car.png", false, GUIEditor.tab[2])
GUIEditor.staticimage[2] = guiCreateStaticImage(20, 105, 140, 130, "PanelStats/image/motor.png", false, GUIEditor.tab[2])
GUIEditor.staticimage[3] = guiCreateStaticImage(10, 205, 160, 140, "PanelStats/image/pilot.png", false, GUIEditor.tab[2])
GUIEditor.staticimage[4] = guiCreateStaticImage(20, 310, 140, 140, "PanelStats/image/ghayegh.png", false, GUIEditor.tab[2])
GUIEditor.staticimage[5] = guiCreateStaticImage(348, 25, 110, 110, "PanelStats/image/mat.png", false, GUIEditor.tab[2])
GUIEditor.staticimage[6] = guiCreateStaticImage(338, 95, 125, 178, "PanelStats/image/gun.png", false, GUIEditor.tab[2])
------------------------------------------
Tab3 = guiCreateTab("Skills", GUIEditor.tabpanel[1])
guiSetFont(Tab3,"default-bold-small", 25)

--|-*** Lic Car ***-|--
GUIEditor.label[43] = guiCreateLabel(175, 80, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[43],font7)
guiLabelSetColor(GUIEditor.label[43],239 , 239 , 100 )
--- Etelate Lic Car --
GUIEditor.label[4343] = guiCreateLabel(227, 80, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[4343],font7)
guiLabelSetColor(GUIEditor.label[4343],255 , 255 , 255 )
-- For Vaziat Lic Car --
GUIEditor.label[434343] = guiCreateLabel(175, 55, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[434343],font7)
guiLabelSetColor(GUIEditor.label[434343],239 , 239 , 100 )
-- For Etelate Vaziat Lic Car (Gheyre Faal) --
GUIEditor.label[43434343] = guiCreateLabel(220, 55, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[43434343],font7)
guiLabelSetColor(GUIEditor.label[43434343],255 , 0 , 0 )
-- For Etelate Vaziat car Lic (Faal)
GUIEditor.label[4343434343] = guiCreateLabel(220, 55, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[4343434343],font7)
guiLabelSetColor(GUIEditor.label[4343434343],42 , 188 , 42 )
--|----------------------------------|---


--|-*** Lic Motor ***-|--
GUIEditor.label[44] = guiCreateLabel(175, 175, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[44],font7)
guiLabelSetColor(GUIEditor.label[44],239 , 239 , 100 )
--- Etelate Lic motor --
GUIEditor.label[444] = guiCreateLabel(225, 175, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[444],font7)
guiLabelSetColor(GUIEditor.label[444],255 , 255 , 255 )
-- For Vaziat Lic motor --
GUIEditor.label[4444] = guiCreateLabel(175, 150, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[4444],font7)
guiLabelSetColor(GUIEditor.label[4444],239 , 239 , 100 )
-- For Etelate Vaziat Lic motor (Gheyre Faal) --
GUIEditor.label[44444] = guiCreateLabel(220, 150, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[44444],font7)
guiLabelSetColor(GUIEditor.label[44444],255 , 0 , 0 )
-- For Etelate Vaziat motor Lic (Faal)
GUIEditor.label[444444] = guiCreateLabel(220, 150, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[444444],font7)
guiLabelSetColor(GUIEditor.label[444444],42 , 188 , 42 )
--|----------------------------------|---


--|-*** Lic Fly ***-|--
GUIEditor.label[55] = guiCreateLabel(175, 275, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[55],font7)
guiLabelSetColor(GUIEditor.label[55],239 , 239 , 100 )
--- Etelate Lic fly --
GUIEditor.label[555] = guiCreateLabel(225, 275, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[555],font7)
guiLabelSetColor(GUIEditor.label[555],255 , 255 , 255 )
-- For Vaziat Lic fly --
GUIEditor.label[5555] = guiCreateLabel(175, 250, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[5555],font7)
guiLabelSetColor(GUIEditor.label[5555],239 , 239 , 100 )
-- For Etelate Vaziat Lic fly (Gheyre Faal) --
GUIEditor.label[55555] = guiCreateLabel(220, 250, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[55555],font7)
guiLabelSetColor(GUIEditor.label[55555],255 , 0 , 0 )
-- For Etelate Vaziat fly Lic (Faal)
GUIEditor.label[555555] = guiCreateLabel(220, 250, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[555555],font7)
guiLabelSetColor(GUIEditor.label[555555],42 , 188 , 42 )
--|----------------------------------|---

--|-*** Lic Boat ***-|--
GUIEditor.label[66] = guiCreateLabel(175, 380, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[66],font7)
guiLabelSetColor(GUIEditor.label[66],239 , 239 , 100 )
--- Etelate Lic Boat --
GUIEditor.label[666] = guiCreateLabel(225, 380, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[666],font7)
guiLabelSetColor(GUIEditor.label[666],255 , 255 , 255 )
-- For Vaziat Lic Boat --
GUIEditor.label[6666] = guiCreateLabel(175, 360, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[6666],font7)
guiLabelSetColor(GUIEditor.label[6666],239 , 239 , 100 )
-- For Etelate Vaziat Lic Boat (Gheyre Faal) --
GUIEditor.label[66666] = guiCreateLabel(220, 360, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[66666],font7)
guiLabelSetColor(GUIEditor.label[66666],255 , 0 , 0 )
-- For Etelate Vaziat Boat Lic (Faal)
GUIEditor.label[666666] = guiCreateLabel(220, 360, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[666666],font7)
guiLabelSetColor(GUIEditor.label[666666],42 , 188 , 42 )
--|----------------------------------|---

--|-*** Lic Mat ***-|--
GUIEditor.label[77] = guiCreateLabel(470, 80, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[77],font7)
guiLabelSetColor(GUIEditor.label[77],239 , 239 , 100 )
--- Etelate Lic Mat --
GUIEditor.label[777] = guiCreateLabel(520, 80, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[777],font7)
guiLabelSetColor(GUIEditor.label[777],255 , 255 , 255 )
-- For Vaziat Lic Mat --
GUIEditor.label[7777] = guiCreateLabel(470, 55, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[7777],font7)
guiLabelSetColor(GUIEditor.label[7777],239 , 239 , 100 )
-- For Etelate Vaziat Lic Mat (Gheyre Faal) --
GUIEditor.label[77777] = guiCreateLabel(515, 55, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[77777],font7)
guiLabelSetColor(GUIEditor.label[77777],255 , 0 , 0 )
-- For Etelate Vaziat Mat Lic (Faal)
GUIEditor.label[777777] = guiCreateLabel(515, 55, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[777777],font7)
guiLabelSetColor(GUIEditor.label[777777],42 , 188 , 42 )
--|----------------------------------|---

--|-*** Lic Gun ***-|--
GUIEditor.label[88] = guiCreateLabel(470, 180, 250, 25, "Mohlat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[88],font7)
guiLabelSetColor(GUIEditor.label[88],239 , 239 , 100 )
--- Etelate Lic Gun --
GUIEditor.label[888] = guiCreateLabel(520, 180, 250, 25, "[200/200]", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[888],font7)
guiLabelSetColor(GUIEditor.label[888],255 , 255 , 255 )
-- For Vaziat Lic Gun --
GUIEditor.label[8888] = guiCreateLabel(470, 160, 250, 25, "Vaziat:", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[8888],font7)
guiLabelSetColor(GUIEditor.label[8888],239 , 239 , 100 )
-- For Etelate Vaziat Lic Gun (Gheyre Faal) --
GUIEditor.label[88888] = guiCreateLabel(515, 160, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[88888],font7)
guiLabelSetColor(GUIEditor.label[88888],255 , 0 , 0 )
-- For Etelate Vaziat Gun Lic (Faal)
GUIEditor.label[888888] = guiCreateLabel(515, 160, 250, 25, "", false, GUIEditor.tab[2])
guiSetFont(GUIEditor.label[888888],font7)
guiLabelSetColor(GUIEditor.label[888888],42 , 188 , 42 )



------
----------
--------------------
-----------------------------------
------------------------------------------------------------
-------------------------------------------------------------------------------------
----------------------------------------------------------------------

GUIEditor.label[1] = guiCreateLabel(50, 35, 250, 25, "Username:", false, GUIEditor.tab[1])
guiLabelSetColor(GUIEditor.label[1],239 , 239 , 100 )
guiSetFont(GUIEditor.label[1],font4)

-- For Etelaate Username --
GUIEditor.label[111] = guiCreateLabel(122, 35, 250, 25, " Auto", false, GUIEditor.tab[1])
guiLabelSetColor(GUIEditor.label[111],255 , 255 , 255 )
guiSetFont(GUIEditor.label[111],font4)
-- For Khate Username --
GUIEditor.label[2] = guiCreateLabel(50, 45, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[2],177 , 168 , 163 )

----------------------------------------------------------------------
GUIEditor.label[3] = guiCreateLabel(50, 75, 250, 50, "Name:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3],font4)
guiLabelSetColor(GUIEditor.label[3],239 , 239 , 100 )

-- For Etelate Email --
GUIEditor.label[55512] = guiCreateLabel(99, 75, 250, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[55512],font4)
guiLabelSetColor(GUIEditor.label[333],255 , 255 , 255 )
-- For Khate Email --
GUIEditor.label[4] = guiCreateLabel(50, 85, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[4],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[4],177 , 168 , 163 )

----------------------------------------------------------------------
GUIEditor.label[5] = guiCreateLabel(50, 120, 178, 50, "ID Account: ", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[5],font4)
guiLabelSetColor(GUIEditor.label[5],239 , 239 , 100 )
-- For Etelate Esme Vaghei --
GUIEditor.label[333] = guiCreateLabel(128, 120, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[333],font4)
guiLabelSetColor(GUIEditor.label[333],255 , 255 , 255 )
--  For Khate Esme Vaghei --
GUIEditor.label[6] = guiCreateLabel(50, 130, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[6],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[6],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[7] = guiCreateLabel(50, 165, 178, 50, "Jensiat:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[7],font4)
guiLabelSetColor(GUIEditor.label[7],239 , 239 , 100 )
-- For Etelate Jensiat --
GUIEditor.label[77712] = guiCreateLabel(103, 165, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[77712],font4)
guiLabelSetColor(GUIEditor.label[77712],255 , 255 , 255 )
-- For Khate Jensiat --
GUIEditor.label[8] = guiCreateLabel(50, 175, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[8],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[8],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[9] = guiCreateLabel(50, 210, 178, 50, "Sen:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[9],font4)
guiLabelSetColor(GUIEditor.label[9],239 , 239 , 100 )
-- For Etelate Sen --
GUIEditor.label[999] = guiCreateLabel(81, 210, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[999],font4)
guiLabelSetColor(GUIEditor.label[999],255 , 255 , 255 )
-- For Khate Sen --
GUIEditor.label[10] = guiCreateLabel(50, 220, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[10],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[10],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[11] = guiCreateLabel(50, 255, 178, 50, "Noe Account:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[11],font4)
guiLabelSetColor(GUIEditor.label[11],239 , 239 , 100 )
--  For Etelate ID Moaref --
GUIEditor.label[1111] = guiCreateLabel(143, 255, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[1111],font4)
guiLabelSetColor(GUIEditor.label[1111],255 , 255 , 255 )
-- For Khate ID Moaref --
GUIEditor.label[12] = guiCreateLabel(50, 265, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[12],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[12],177 , 168 , 163 )

---------------------------------------------------------------------
GUIEditor.label[13] = guiCreateLabel(50, 300, 178, 50, "Player :", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[13],font4)
guiLabelSetColor(GUIEditor.label[13],239 , 239 , 100 )
-- For Etelate Pol Naghd --
GUIEditor.label[1313] = guiCreateLabel(108, 300, 178, 50, "Normal", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[1313],font4)
guiLabelSetColor(GUIEditor.label[1313],255 , 255 , 255 )
-- For Khate Pole Naghd --
GUIEditor.label[14] = guiCreateLabel(50, 310, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[14],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[14],177 , 168 , 163 )

---------------------------------------------------------------------
GUIEditor.label[15] = guiCreateLabel(50, 345, 178, 50, "ZP Shoma :", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[15],font4)
guiLabelSetColor(GUIEditor.label[15],239 , 239 , 100 )
-- For Etelate Mojodie bank --
GUIEditor.label[1515] = guiCreateLabel(125, 345, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[1515],font4)
guiLabelSetColor(GUIEditor.label[1515],255 , 255 , 255 )
-- For Khate Mojodie Bank --
GUIEditor.label[16] = guiCreateLabel(50, 355, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[16],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[16],177 , 168 , 163 )

---------------------------------------------------------------------
GUIEditor.label[17] = guiCreateLabel(50, 390, 250, 50, "Battle Pass :", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[17],font4)
guiLabelSetColor(GUIEditor.label[17],239 , 239 , 100 )
-- For Etelate Tarikh Sabte Nam --
GUIEditor.label[1717] = guiCreateLabel(141, 390, 250, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[1717],font4)
guiLabelSetColor(GUIEditor.label[1717],255 , 255 , 255 )
-- For Khate Tarikh Sabte Nam --
GUIEditor.label[18] = guiCreateLabel(50, 400, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[18],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[18],177 , 168 , 163 )

---------------------------------------------------------------------
GUIEditor.label[19] = guiCreateLabel(390, 35, 178, 25, "Exp:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[19],font4)
guiLabelSetColor(GUIEditor.label[19],239 , 239 , 100 )
-- For Etelate Respect --
GUIEditor.label[1919] = guiCreateLabel(450, 35, 178, 25, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[1919],font4)
guiLabelSetColor(GUIEditor.label[1919],255 , 255 , 255 )
-- For Khate Respect --
GUIEditor.label[20] = guiCreateLabel(390, 45, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[20],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[20],177 , 168 , 163 )

----------------------------------------------------------------------
GUIEditor.label[21] = guiCreateLabel(390, 75, 178, 50, "Level:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[21],font4)
guiLabelSetColor(GUIEditor.label[21],239 , 239 , 100 )
-- For Etelate Level --
GUIEditor.label[2121] = guiCreateLabel(430, 75, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2121],font4)
guiLabelSetColor(GUIEditor.label[2121],255 , 255 , 255 )
-- For Khate Level --
GUIEditor.label[22] = guiCreateLabel(390, 85, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[22],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[22],177 , 168 , 163 )

----------------------------------------------------------------------
-- Dokme Buy Level --
GUIEditor.button[1] = guiCreateButton(470, 74, 80, 18, "Buy Level", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.button[1],"default-bold-small", 25)

guiSetProperty(GUIEditor.button[1], "HoverTextColour", "FF00FF00" )
guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FF00FF00" )
---------------------------------------------------------------------
GUIEditor.label[23] = guiCreateLabel(390, 120, 178, 50, "Shoghl:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[23],font4)
guiLabelSetColor(GUIEditor.label[23],239 , 239 , 100 )
-- For Etelate Shoghl --
GUIEditor.label[2323] = guiCreateLabel(441, 120, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2323],font4)
guiLabelSetColor(GUIEditor.label[2323],255 , 255 , 255 )
-- For Khate Shoghl --
GUIEditor.label[24] = guiCreateLabel(390, 130, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[24],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[24],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[25] = guiCreateLabel(390, 165, 178, 50, "Shomare SimKart:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[25],font4)
guiLabelSetColor(GUIEditor.label[25],239 , 239 , 100 )
-- For Etelate Shomare Simkart --
GUIEditor.label[2525] = guiCreateLabel(507, 165, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2525],font4)
guiLabelSetColor(GUIEditor.label[2525],255 , 255 , 255)
-- For Khate Simkart --
GUIEditor.label[26] = guiCreateLabel(390, 175, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[26],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[26],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[27] = guiCreateLabel(390, 210, 178, 50, "Faction:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[27],font4)
guiLabelSetColor(GUIEditor.label[27],239 , 239 , 100 )
-- For Etelate Faction --
GUIEditor.label[2727] = guiCreateLabel(443, 210, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2727],font4)
guiLabelSetColor(GUIEditor.label[2727],255 , 255 , 255 )
-- For Khate Faction --
GUIEditor.label[28] = guiCreateLabel(390, 220, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[28],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[28],177 , 168 , 163 )

--------------------------------------------------------------------
GUIEditor.label[29] = guiCreateLabel(390, 255, 178, 50, "Premium:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[29],font4)
guiLabelSetColor(GUIEditor.label[29],239 , 239 , 100 )
-- For Etelate Premium Account --
GUIEditor.label[2929] = guiCreateLabel(451, 255, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[2929],font4)
guiLabelSetColor(GUIEditor.label[2929],255 , 255 , 255 )
-- For Khate Premium Account --
GUIEditor.label[30] = guiCreateLabel(390, 265, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[30],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[30],177 , 168 , 163 )

---------------------------------------------------------------------
GUIEditor.label[31] = guiCreateLabel(390, 300, 178, 50, "Slot Car:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[31],font4)
guiLabelSetColor(GUIEditor.label[31],239 , 239 , 100 )
-- For Khate Slot Car --
GUIEditor.label[3131] = guiCreateLabel(447, 300, 178, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3131],font4)
guiLabelSetColor(GUIEditor.label[3131],255 , 255 , 255 )
-- For Khate Slot Car --
GUIEditor.label[33] = guiCreateLabel(390, 310, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[33],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[33],177 , 168 , 163 )

---------------------------------------------------------------------

GUIEditor.label[3256] = guiCreateLabel(390, 345, 250, 50, "Play Time:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3256],font4)
guiLabelSetColor(GUIEditor.label[3256],239 , 239 , 100 )
-- For Etelate Play Time --
GUIEditor.label[3257] = guiCreateLabel(463, 345, 250, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3257],font4)
guiLabelSetColor(GUIEditor.label[3257],255 , 255 , 255 )
-- For Khate Play Time --
GUIEditor.label[3258] = guiCreateLabel(390, 355, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3258],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[3258],177 , 168 , 163 )
-----------------------------------------------------------------------


GUIEditor.label[35] = guiCreateLabel(390, 390, 250, 50, "Last Login:", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[35],font4)
guiLabelSetColor(GUIEditor.label[35],239 , 239 , 100 )
-- For Etelate Last Login --
GUIEditor.label[3535] = guiCreateLabel(463, 390, 250, 50, "", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[3535],font4)
guiLabelSetColor(GUIEditor.label[3535],255 , 255 , 255 )
-- For Khate Last Login --
GUIEditor.label[37] = guiCreateLabel(390, 400, 178, 16, "—————————————————————————————————————————————", false, GUIEditor.tab[1])
guiSetFont(GUIEditor.label[37],"Font.ttf", 25)
guiLabelSetColor(GUIEditor.label[37],177 , 168 , 163 )
---------------------------------------------------------------------------------------------------------------
local font1 = guiCreateFont("PanelStats/font2.ttf", 13)
local font3 = guiCreateFont("PanelStats/GOTHIC.ttf", 10)
local font2 = guiCreateFont("PanelStats/font.ttf", 10)


--                            Skills                              --

jobskill = guiCreateLabel(15, 20, 250, 50, "Job Skills", false, Tab3)
guiSetFont(jobskill,font1)
guiLabelSetColor(jobskill,114 , 176 , 245 )
khatskill = guiCreateLabel(15, 39, 470, 16, "—————————————————————————————————————————————", false, Tab3)
guiLabelSetColor(khatskill,177 , 168 , 163 )

busskill = guiCreateLabel(15, 57, 250, 50, "Bus Driver:", false, Tab3)
guiSetFont(busskill,font3)
guiLabelSetColor(busskill,255 , 255 , 255 )
--> Etelaate Skill Material <--
busskill2 = guiCreateLabel(130, 57, 250, 50, "", false, Tab3)
guiSetFont(busskill2,font3)
guiLabelSetColor(busskill2,124 , 243 , 89 )

pilotskill = guiCreateLabel(15, 85, 250, 50, "Pilot:", false, Tab3)
guiSetFont(pilotskill,font3)
guiLabelSetColor(pilotskill,255 , 255 , 255 )
--> Etelaate Skill Pilot <--
pilotskill2 = guiCreateLabel(130, 85, 250, 50, "", false, Tab3)
guiSetFont(pilotskill2,font3)
guiLabelSetColor(pilotskill2,124 , 243 , 89 )

TuSkill = guiCreateLabel(15, 112, 250, 50, "Trucker:", false, Tab3)
guiSetFont(TuSkill,font3)
guiLabelSetColor(TuSkill,255 , 255 , 255 )
--> Etelaate Skill Trucker <--
TuSkill2 = guiCreateLabel(130, 112, 250, 50, "", false, Tab3)
guiSetFont(TuSkill2,font3)
guiLabelSetColor(TuSkill2,124 , 243 , 89)

StreetWasherSkill = guiCreateLabel(15, 139, 250, 50, "Street Washer:", false, Tab3)
guiSetFont(StreetWasherSkill,font3)
guiLabelSetColor(StreetWasherSkill,255 , 255 , 255 )
--> Etelaate Skill Street Washer <--
StreetWasherSkill2 = guiCreateLabel(130, 139, 250, 50, "", false, Tab3)
guiSetFont(StreetWasherSkill2,font3)
guiLabelSetColor(StreetWasherSkill2,124 , 243 , 89 )

--- Gun And Material

gunmatskill = guiCreateLabel(15, 200, 250, 50, "Gun & Material Skills", false, Tab3)
guiSetFont(gunmatskill,font1)
guiLabelSetColor(gunmatskill,114 , 176 , 245 )
khatskillgun = guiCreateLabel(15, 219, 470, 16, "—————————————————————————————————————————————", false, Tab3)
guiLabelSetColor(khatskillgun,177 , 168 , 163 )

materials = guiCreateLabel(15, 237, 250, 50, "Material:", false, Tab3)
guiSetFont(materials,font3)
guiLabelSetColor(materials,255 , 255 , 255 )
--> Etelaate Skill Material <--
materials2 = guiCreateLabel(130, 237, 250, 50, "", false, Tab3)
guiSetFont(materials2,font3)
guiLabelSetColor(materials2,124 , 243 , 89)



----------------------------------
Akskill = guiCreateLabel(15, 275, 250, 50, "Ak47:", false, Tab3)
guiSetFont(Akskill,font3)
guiLabelSetColor(Akskill,255 , 255 , 255 )

--> Etelaate Skill Ak <--
Akskills = guiCreateLabel(130, 273, 250, 50, "", false, Tab3)
guiSetFont(Akskills,font3)
guiLabelSetColor(Akskills,124 , 243 , 89)
----------------------------------------------

Desertkill = guiCreateLabel(15, 300, 250, 50, "Desert Eagle:", false, Tab3)
guiSetFont(Desertkill,font3)
guiLabelSetColor(Desertkill,255 , 255 , 255 )
--> Etelaate Skill Desert <--
Desertskills = guiCreateLabel(130, 298, 250, 50, "", false, Tab3)
guiSetFont(Desertskills,font3)
guiLabelSetColor(Desertskills,124 , 243 , 89)
----
M4skill = guiCreateLabel(15, 325, 250, 50, "M4:", false, Tab3)
guiSetFont(M4skill,font3)
guiLabelSetColor(M4skill,255 , 255 , 255 )
--> Etelaate Skill M4 <--
M4skills = guiCreateLabel(130, 323, 250, 50, "", false, Tab3)
guiSetFont(M4skills,font3)
guiLabelSetColor(M4skills,124 , 243 , 89)
----
MP5skill = guiCreateLabel(15, 350, 250, 50, "MP5:", false, Tab3)
guiSetFont(MP5skill,font3)
guiLabelSetColor(MP5skill,255 , 255 , 255 )
--> Etelaate Skill MP5 <--
MP5skills = guiCreateLabel(130, 348, 250, 50, "", false, Tab3)
guiSetFont(MP5skills,font3)
guiLabelSetColor(MP5skills,124 , 243 , 89)
----
Pistolskill = guiCreateLabel(15, 375, 250, 50, "Pistol:", false, Tab3)
guiSetFont(Pistolskill,font3)
guiLabelSetColor(Pistolskill,255 , 255 , 255 )
--> Etelaate Skill Pistol <--
Pistolskills = guiCreateLabel(130, 373, 250, 50, "", false, Tab3)
guiSetFont(Pistolskills,font3)
guiLabelSetColor(Pistolskills,124 , 243 , 89)
----
Sawenskill = guiCreateLabel(350, 300, 250, 50, "Sawed Off:", false, Tab3)
guiSetFont(Sawenskill,font3)
guiLabelSetColor(Sawenskill,255 , 255 , 255 )
--> Etelaate Skill Sawen <--
Sawenskills = guiCreateLabel(485, 298, 250, 50, "", false, Tab3)
guiSetFont(Sawenskills,font3)
guiLabelSetColor(Sawenskills,124 , 243 , 89)

----
Shotgunskill = guiCreateLabel(350, 275, 250, 50, "Shotgun:", false, Tab3)
guiSetFont(Shotgunskill,font3)
guiLabelSetColor(Shotgunskill,255 , 255 , 255 )
--> Etelaate Skill Shotgun <--
Shotgunskills = guiCreateLabel(485, 273, 250, 50, "", false, Tab3)
guiSetFont(Shotgunskills,font3)
guiLabelSetColor(Shotgunskills,124 , 243 , 89)

----
Sniperskill = guiCreateLabel(350, 325, 250, 50, "Rifle:", false, Tab3)
guiSetFont(Sniperskill,font3)
guiLabelSetColor(Sniperskill,255 , 255 , 255 )
--> Etelaate Skill Rifle <--
Sniperskills = guiCreateLabel(485, 323, 250, 50, "", false, Tab3)
guiSetFont(Sniperskills,font3)
guiLabelSetColor(Sniperskills,124 , 243 , 89)
----
Spaz12skill = guiCreateLabel(350, 350, 250, 50, "Spaz-12:", false, Tab3)
guiSetFont(Spaz12skill,font3)
guiLabelSetColor(Spaz12skill,255 , 255 , 255 )
--> Etelaate Skill Spaz12 <--
Spaz12skills = guiCreateLabel(485, 348, 250, 50, "", false, Tab3)
guiSetFont(Spaz12skills,font3)
guiLabelSetColor(Spaz12skills,124 , 243 , 89)
----
Uziskill = guiCreateLabel(350, 375, 250, 50, "Uzi:", false, Tab3)
guiSetFont(Uziskill,font3)
guiLabelSetColor(Uziskill,255 , 255 , 255 )
--> Etelaate Skill Uzi <--
Uziskills = guiCreateLabel(485, 373, 250, 50, "", false, Tab3)
guiSetFont(Uziskills,font3)
guiLabelSetColor(Uziskills,124 , 243 , 89)

----------------------------------------------------------------------------------




guiSetVisible( GUIEditor.window[1], false )
centerWindow ( GUIEditor.window[1] )
-------------------------------------------------

---------------------------------
-------**Script By zezaw**-------
---------------------------------

-- Bargozarie Etelaate Player, Set Va Connect Kardan Be Label Haye Panel --
function updateStats( root ,levelesh , respectash, mail, ref, faction, number, EveryExForLevUp, registerArq, lastArq, preArq, hisJob, genderesh, namesh, agesh, bankaParasi, slotesh, carlic, carlicV, carlicV2, motorlic, motorlicV, motorlicV2 , flylic, flylicV, flylicV2, boatlic, boatlicV, boatlicV2, matlic, matlicV, matlicV2, gunlic, gunlicV, gunlicV2, materialskill, BusSkill, pilotskill, TrcukerSkill, StSkill, PlayTimePlayer,Ak47GSkill,DesertGSkill,M4GSkill,MP5GSkill,PistolsGSkill,SawensGSkill,ShotgunGSkill,SniperGSkill,Spaz12GSkill,UziGSkill)
	if root == getLocalPlayer() then
            myGender = tostring(genderesh)
		guiSetText ( GUIEditor.label[77712], " "..myGender )
			myName = tostring(namesh)
		guiSetText ( GUIEditor.label[55512], " "..myName )
		    myAge = tostring(agesh) 
        guiSetText ( GUIEditor.label[999], " "..myAge )
            job = tostring(hisJob)
        guiSetText ( GUIEditor.label[2323], " "..job )
			email = tostring(mail)
		guiSetText ( GUIEditor.label[333], " "..email )
			fac = tostring(faction)
		guiSetText ( GUIEditor.label[2727], " "..fac )
			number = tostring(number)
		guiSetText ( GUIEditor.label[2525], " "..number )
			ref = tostring(ref)
		guiSetText ( GUIEditor.label[1111], " "..ref )
			respect = tostring(respectash)
			neededEx = tostring(EveryExForLevUp)
		guiSetText ( GUIEditor.label[1919], " "..respect.."/"..EveryExForLevUp )
			level = tostring(levelesh)
        guiSetText ( GUIEditor.label[2121], " "..level)
		    registered = tostring(registerArq)
        guiSetText ( GUIEditor.label[1717], " "..registered)
		    logined = tostring(lastArq)
        guiSetText ( GUIEditor.label[3535], " "..logined)
		    premiumed = tostring(preArq)
        guiSetText ( GUIEditor.label[2929], " "..premiumed)
		    bankaParasi = tostring(bankaParasi)
		guiSetText ( GUIEditor.label[1515], " "..bankaParasi.."" )
			slott = tostring(slotesh) 
        guiSetText ( GUIEditor.label[3131], " "..slott )
		
				-- For Car Lic --
			carlic = tostring(carlic) 
        guiSetText ( GUIEditor.label[4343], "["..carlic.."/200] Saat" )
		
			carlicV = tostring(carlicV)
        guiSetText ( GUIEditor.label[43434343], "" ..carlicV )
		
			carlicV2 = tostring(carlicV2)
        guiSetText ( GUIEditor.label[4343434343], "" ..carlicV2 )
		-----------------------------------
		
				-- For Motor Lic --
			motorlic = tostring(motorlic) 
        guiSetText ( GUIEditor.label[444], "["..motorlic.."/200] Saat" )

			motorlicV = tostring(motorlicV)
        guiSetText ( GUIEditor.label[44444], "" ..motorlicV )
		
			motorlicV2 = tostring(motorlicV2)
        guiSetText ( GUIEditor.label[444444], "" ..motorlicV2 )
		
				-- For Fly Lic --
			flylic = tostring(flylic) 
        guiSetText ( GUIEditor.label[555], "["..flylic.."/200] Saat" )

			flylicV = tostring(flylicV)
        guiSetText ( GUIEditor.label[55555], "" ..flylicV )
		
			flylicV2 = tostring(flylicV2)
        guiSetText ( GUIEditor.label[555555], "" ..flylicV2 )
		
						-- For Boat Lic --
			boatlic = tostring(boatlic) 
        guiSetText ( GUIEditor.label[666], "["..boatlic.."/200] Saat" )

			boatlicV = tostring(boatlicV)
        guiSetText ( GUIEditor.label[66666], "" ..boatlicV )
		
			boatlicV2 = tostring(boatlicV2)
        guiSetText ( GUIEditor.label[666666], "" ..boatlicV2 )
		
						-- For Mat Lic --
			matlic = tostring(matlic) 
        guiSetText ( GUIEditor.label[777], "["..matlic.."/200] Saat" )

			matlicV = tostring(matlicV)
        guiSetText ( GUIEditor.label[77777], "" ..matlicV )
		
			matlicV2 = tostring(matlicV2)
        guiSetText ( GUIEditor.label[777777], "" ..matlicV2 )
		
						-- For Gun Lic --
			gunlic = tostring(gunlic) 
        guiSetText ( GUIEditor.label[888], "["..gunlic.."/200] Saat" )

			gunlicV = tostring(gunlicV)
        guiSetText ( GUIEditor.label[88888], "" ..gunlicV )
		
			gunlicV2 = tostring(gunlicV2)
        guiSetText ( GUIEditor.label[888888], "" ..gunlicV2 )

			materialskill = tostring(materialskill)
        guiSetText ( materials2, " [" ..materialskill.."/500]" )
		
		
			BusSkill = tostring(BusSkill)
        guiSetText ( busskill2, " [" ..BusSkill.."/470]" )
		
			pilotskill = tostring(pilotskill)
        guiSetText ( pilotskill2, " [" ..pilotskill.."/460]" )
		
				
			TrcukerSkill = tostring(TrcukerSkill)
        guiSetText ( TuSkill2, " [" ..TrcukerSkill.."/340]" )

			StSkill = tostring(StSkill)
        guiSetText ( StreetWasherSkill2, " [" ..StSkill.."/370]" )
		
			PlayTimePlayer = tostring(PlayTimePlayer)
        guiSetText ( GUIEditor.label[3257], "" ..PlayTimePlayer.."" )
		
		
		-- For Gun Skill --
		
		   Ak47GSkill = tostring(Ak47GSkill)
        guiSetText ( Akskills, " [" ..Ak47GSkill.."/1000]" )
           DesertGSkill = tostring(DesertGSkill)
        guiSetText ( Desertskills, " [" ..DesertGSkill.."/1000]" )
		   M4GSkill = tostring(M4GSkill)
        guiSetText ( M4skills, " [" ..M4GSkill.."/1000]" )
		   MP5GSkill = tostring(MP5GSkill)
        guiSetText ( MP5skills, " [" ..MP5GSkill.."/1000]" )
		   PistolsGSkill = tostring(PistolsGSkill)
        guiSetText ( Pistolskills, " [" ..PistolsGSkill.."/1000]" )
	   	   SawensGSkill = tostring(SawensGSkill)
        guiSetText ( Sawenskills, " [" ..SawensGSkill.."/1000]" )
		   ShotgunGSkill = tostring(ShotgunGSkill)
        guiSetText ( Shotgunskills, " [" ..ShotgunGSkill.."/1000]" )
		   SniperGSkill = tostring(SniperGSkill)
        guiSetText ( Sniperskills, " [" ..SniperGSkill.."/1000]" )
		   Spaz12GSkill = tostring(Spaz12GSkill)
        guiSetText ( Spaz12skills, " [" ..Spaz12GSkill.."/1000]" )
		   UziGSkill = tostring(UziGSkill)
        guiSetText ( Uziskills, " [" ..UziGSkill.."/1000]" )
		--------------------------------------	
		
	end
end
addEvent("upstats",true)
addEventHandler("upstats", getRootElement(), updateStats)
----------------------------------------------------------
-- For Dokme BuyLevel --
addEventHandler("onClientGUIClick", getRootElement(),
function ()
if source == GUIEditor.button[1] then
triggerServerEvent("bekharleveloo", getLocalPlayer(), getLocalPlayer() )
triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
elseif source == GUIEditor.button[1] then
		guiSetProperty(kadr, "Visible", "False")
		showCursor(false)
elseif source == GUIEditor.button[1] then
    triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
end
end)
----------------------------------------------------------------

-- For Pole Naghd --
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
--------------------

-- Bargozarie Etelate Player Az File Server --
addEventHandler("onClientGUIClick", getRootElement(),
function ()
if source == buyButton then
triggerServerEvent("bekharleveloo", getLocalPlayer(), getLocalPlayer() )
triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
elseif source == closeButton then
		guiSetProperty(kadr, "Visible", "False")
		showCursor(false)
elseif source == refreshButton then
    triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
end
end)
------------------------------------------

-- Bind Dokme Baraye Load Shodan Etelate Player Dar Panel --
bindKey('F1', 'down',
function ()
    if getElementData(getLocalPlayer(), "loggedIn") == true then
        local windowState = guiGetProperty(kadr, "Visible")
	    if windowState == "False" then
		    guiSetProperty(kadr, "Visible", "True")
		    showCursor(true)
		    triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
    	else
	    	guiSetProperty(kadr, "Visible", "False")
            showCursor(false)
            triggerServerEvent("StatPlayer", getLocalPlayer(), getLocalPlayer() )
        end
    end
end)
------------------------------------------------------------

-- Baz Shodan Panel --
function openMain( )
if getElementData(getLocalPlayer(), "loggedIn") == true then
	if guiGetVisible( GUIEditor.window[1] ) == false then
		guiSetVisible( GUIEditor.window[1], true )
		showCursor( true )
	else
		guiSetVisible( GUIEditor.window[1], false )
		showCursor( false )
	end
end

end
------------------------

-- Bind Ddokme Baraye Baz Shodan Panel --
function openPanel (  )
	if getElementData(getLocalPlayer(), "loggedIn") == true then
		openMain( )
	end
end
bindKey( "F1", "down", openPanel )
----------------------------------