local SynDiscord = loadstring(game:HttpGet('https://raw.githubusercontent.com/ou1z/SynDiscordV2/main/module/main.lua'))()
local Client = SynDiscord.Client.new()

Client:on('ready', function()
    print('bot is ready')
end)

Client:on('messageCreate', function(message)
    if message.author.id == Client.User.id then
        if message.content == '.ping' then
            local embed = SynDiscord.Embeds.Create()
             
            embed:setFields({
                {
                    inline = true,
                    name = "NAME",
                    value = "VALUE"
                }
            })
            embed:setTitle('This is a title.')

            message.reply('pong', {
                embeds = {embed}
            })  
        elseif message.content == '.react' then
            message.react('👍')
        end
    end
end)

Client:login("TOKEN HERE")
