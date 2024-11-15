RegisterServerEvent('submit:bug:report')
AddEventHandler('submit:bug:report', function(data)
    local src = source
    local pName = GetPlayerName(source)
    local connect = {
        {
            ["color"] = "8388736",
            ["title"] = "New Report - ".. pName,
            ["description"] = "Title: \n\n `"..data.title.."` \n\n━━━━━━━━━━━━━━━━━━\n\n Description: \n\n `"..data.description.."` \n\n━━━━━━━━━━━━━━━━━━\n\n VOD / Clip / Screenshot URLs: \n\n `"..data.url.."` \n\n━━━━━━━━━━━━━━━━━━\n\n",
	        ["footer"] = {
                ["text"] = "BRINLEY DEVELOPPMENT",
            },
            ["image"] = {
                ["url"] = "https://media.discordapp.net/attachments/1108561990324068512/1290770955873943603/Picsart_24-09-26_18-22-51-845.png?ex=673704e1&is=6735b361&hm=e4b265443e9b3dc8b2365d527b2e1e36fe489289b7151bb66405ba642fdb146e&=&format=webp&quality=lossless"
            }
        }
    }
    PerformHttpRequest("put your webhook here", function(err, text, headers) end, 'POST', json.encode({username = "Brinley Developpment - Report System",  avatar_url = "https://media.discordapp.net/attachments/1108561990324068512/1290770955873943603/Picsart_24-09-26_18-22-51-845.png?ex=6737ada1&is=67365c21&hm=fd9d913fd57232f2d7e8c6ada36cd7dc4001125d9962aba0ee6140a0ef726516&=&format=webp&quality=lossless",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)
