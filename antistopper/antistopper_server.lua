-- antistopper_server.lua

-- Discord Webhook URL'nizi buraya ekleyin (isteğe bağlı)
local webhookURL = 'YOUR_DISCORD_WEBHOOK_URL_HERE'

-- Discord'a mesaj gönderme fonksiyonu (isteğe bağlı)
function sendToDiscord(name, message, color)
    if webhookURL == 'YOUR_DISCORD_WEBHOOK_URL_HERE' then return end
    local connect = {
        {
            ["color"] = color,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "FiveM Anti-Stopper",
            },
        }
    }
    PerformHttpRequest(webhookURL, function(err, text, headers) end, 'POST', json.encode({username = "Anti-Stopper Bot", embeds = connect}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('antistopper:resourceStopped')
AddEventHandler('antistopper:resourceStopped', function(resourceName)
    local _source = source
    local playerName = GetPlayerName(_source)
    print('Korunan Kaynak Kapatıldı: ' .. resourceName .. ' - Oyuncu: ' .. playerName)

    -- Kaynağı yeniden başlat
    StartResource(resourceName)

    -- Discord'a bildirim gönder (isteğe bağlı)
    sendToDiscord('Korunan Kaynak Kapatıldı', 'Kaynak: **' .. resourceName .. '** - Oyuncu: **' .. playerName .. '** tarafından kapatılmaya çalışıldı.', 16711680) -- Kırmızı renk kodu
end)
