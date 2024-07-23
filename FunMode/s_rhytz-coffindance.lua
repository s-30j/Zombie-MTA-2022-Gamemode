--[[
    Coffin Dance script

    s_rhytz-coffindance.lua - server side script

    Copyright Rhytz © 2019
    Website: https://rhytz.rocks
    Github: https://github.com/Rhytz
]]

--Delay before the command can be used again, in milliseconds (3 minutes by default)
local spamTimeOut = 3 * 60 * 1000

local recentlyTriggered

local spamTimer

--[[function handleCoffinDanceCommand(playerSource, commandName, targetPlayerPartialName)
    local theTargetPlayer = getPlayerFromPartialName(targetPlayerPartialName)
    if not theTargetPlayer then return end
    coffinDance(theTargetPlayer)

    recentlyTriggered = true
    spamTimer = setTimer(
        function()
            recentlyTriggered = false
        end,
        spamTimeOut,
        1
    )
end
addCommandHandler("rip", handleCoffinDanceCommand, true)]]--
function coffinDance(targetPlayer)
    if not targetPlayer then return end
    triggerClientEvent(root, "onStartCoffinDance", resourceRoot, targetPlayer)

    -- Temporarily disable the bouncer resource to prevent afk kill/kick (SKC only(?))
    toggleBouncer(false)

    setTimer(
        toggleBouncer,
        20000,
        1,
        true
    )
end
addCommandHandler("rip", coffinDance)

function toggleBouncer(enableBouncer)
    local bouncerResource = getResourceFromName("race_bouncer")
    if not bouncerResource then return end
    if(enableBouncer and getResourceState(bouncerResource) ~= "running") then
        startResource(bouncerResource)
    elseif(not enableBouncer and getResourceState(bouncerResource) == "running") then
        stopResource(bouncerResource)
    end
end


-- Script from mta wiki
function getPlayerFromPartialName(name)
    local name = name and name:gsub("#%x%x%x%x%x%x", ""):lower() or nil
    if name then
        for _, player in ipairs(getElementsByType("player")) do
            local name_ = getPlayerName(player):gsub("#%x%x%x%x%x%x", ""):lower()
            if name_:find(name, 1, true) then
                return player
            end
        end
    end
end