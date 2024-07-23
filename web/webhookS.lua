local discordWebhookURL = "https://discord.com/api/webhooks/936022421310435379/1TgUzL1U8BlC_pTx_1U-4gckUNsAk3mnjiL3X-eGpB-jDHR3wg4xqi8SOJQAJn5qIXdM"

function sendDiscordMessage(message)
sendOptions = {
    formFields = {
        content="```"..message.."```"
        --content=" "..message.." "
    },
}
fetchRemote ( discordWebhookURL, sendOptions, WebhookCallback )
end

function sendDiscordAdminMessage(message)
    sendOptions = {
        formFields = {
            content="Admin - "..message.."  @everyone "
            --content=" "..message.." "
        },
    }
    fetchRemote ( discordWebhookURL, sendOptions, WebhookCallback )
end

function WebhookCallback(responseData) --[[outputDebugString("(Discord webhook callback): responseData: "..responseData) ]] end

--    exports["web"]:sendDiscordMessage(getPlayerName(thePlayer).." Bobcat Ra Ba 280 ZP Kharid")


--[[
function SendDiscordTestMessage(player, command, ...)
local msg = table.concat({...}," ")
sendDiscordAdminMessage(msg)
end
addCommandHandler("dcmessage", SendDiscordTestMessage)]]
