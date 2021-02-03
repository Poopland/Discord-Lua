local discordia = require("discordia")
local client = discordia.Client()

--[[
    createAt
    id
    timestamp
    attachments
    attachment
    author
    channel <<<<<
    cleanContent
    content
    editedTimestamp
    embed
    embeds
    guild
    link
    member <<
    author <<
]]
local prefix = "."

client:on("messageCreate", function(data)
    local msg = data.content
    local member = data.member
    local memberid = data.member.id

    if msg:lower() == "Megumin" then
        data:reply("I'm Here!")
    end

    if msg:lower() == prefix.."test" then
        data:reply("test2")
    end
end)

client:run("Bot "..io.open("./token.txt"):read())