local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',--'https://discord.com/api/webhooks/1089251489718992946/FQJiXRyOYxkKh7l1R0kmm6hJXhFyMAFfOe6PJHU338-xIyPlW22wtWtof7o5_UKpX7Ui',
    ['testwebhook'] = '',--'https://discord.com/api/webhooks/1089263886802366495/kGmuKTVxuS5jWBfjmowdubKi98sh6dg6qQ4rM8Dzi8HYOC5AN8uX5-16MnwjgZDbEpeS',
    ['playermoney'] = '',--'https://discord.com/api/webhooks/1089252423748554802/IPyR5dmO2NY3Vs0jpo2nQhQaoHe2yeZr5rB6f7p-CsMhcxBvOYTP05xZrGNfsJYzZpDa',
    ['playerinventory'] = '',--'https://discord.com/api/webhooks/1089252808366231572/9ESq7oGMgNsdjnKKl70lobEkDCiEkOBb5kE6MctM57DRL07IlekDrKCSMUhi8guWOPGe',
    ['robbing'] = '',--'https://discord.com/api/webhooks/1089253269387358278/crU_LwlQz23Xl6D8CRzkxSWyvCWcPL-gBABbua2aWzN3sZP9daf00Ok8uNMhHH8BB5pv',
    ['cuffing'] = '',--'https://discord.com/api/webhooks/1089254219657261078/yjnx1_j6wGYcyOImAC9O3P7VmQkhc0MVOlLWSF7OKxboITyyn4lqdIcTIAle4JjX7TFe',
    ['drop'] = '',--'https://discord.com/api/webhooks/1089254376205463553/Bjd6k794yK4phtOl0U-m2HfBoO93xjL5KPoHdysdKV4vGH3cCBCjQEPObVPeFDncKtR4',
    ['trunk'] = '',--'https://discord.com/api/webhooks/1089254523979182230/M_w0nVdvCiqeQT18azJX9EJq3WfbZmy-Hzzts0lgYhT2JHRXqaxTSwLKTp-lwMn2F8hP',
    ['stash'] = '',--'https://discord.com/api/webhooks/1089254988888408165/90UfH_keOGyLTIohuValgPcTz1EEh2xfln34grZ7CQ720-kxBJgpoRtyKf9OW67DvYQH',
    ['glovebox'] = '',--'https://discord.com/api/webhooks/1089255135861014568/YMzRX_bP8_CamAx-_eXJuDmlCzyiOZDI-7-q1B0s5NhEooOu1gWAC1wwtbCKOQR437X_',
    ['banking'] = '',--'https://discord.com/api/webhooks/1089255318984343644/kwOGi9tzgoW8BVUvnAvDgmPpKLQKdgiFS7RlopEzMqCPOiU7eApOO1IX8dkNuE3FsgHx',
    ['vehicleshop'] = '',--'https://discord.com/api/webhooks/1089255498353750097/9rOr6n50ZYptcKVD0kvbmXEtHDeBhEpkOvkWsIDwFDkOL-38yy0cLxARvZRWXigHGdeK',
    ['vehicleupgrades'] = '',--'https://discord.com/api/webhooks/1089255799571882086/dJMtVtgGmem1r0ftuV6mom60p-YKxGbcllNUS0fALS43gwFqsIbm52XaF5Y3R35PUL_-',
    ['shops'] = '',--'https://discord.com/api/webhooks/1089255959945289819/5gu-yXLfQOonx-mCh3-yKe2OmDtgGdW1usud5TW3EMtxpS_3b2I5Qy97Os7OoZGFrdUn',
    ['dealers'] = '',--'https://discord.com/api/webhooks/1089256208910782524/BzsH5ujFzk8kwzr8jj-wUm59gWpEongWcVI1qj9Xy0Eki4fuhqtq31TBRvVX8XNFhlFb',
    ['storerobbery'] = '',--'https://discord.com/api/webhooks/1089256366973128804/JsX8AP9vdtHxtwSG9dz5N3TKgrQUg6Pdd5BjBl7B3M3G3j2cVkPyKNs6WBhvXK-UGSMT',
    ['bankrobbery'] = '',--'https://discord.com/api/webhooks/1089256515225010176/e49INpyuyq6755G4xL_5zJG7xDIJOI_PtbXek_pz9sb9aaCie8b2TaSSqzNDCb1IsHKj',
    ['powerplants'] = '',--'https://discord.com/api/webhooks/1089256670468780132/21a130y8puklId7QLEh_6wEGaBEvFa7e-i58c1-uwQ044Bn86RMMboUzSg032jNXnbEj',
    ['death'] = '',--'https://discord.com/api/webhooks/1089256828669542553/SgqyfYUpYX_PJzxy1DJ2-LV6bpHZ6GkRIPzBfYi_Ep-i4QkmkULXBHqKArk80fcEhqYV',
    ['joinleave'] = '',--'https://discord.com/api/webhooks/1089257085235114026/y8GWfEHlbpQR8Huc0zFJlyaIpYjQWfauqTpjNiAsRZAf15g_bQlxN_Y099fk3T8emJXi',
    ['ooc'] = '',--'https://discord.com/api/webhooks/1089257645615087687/D-bkM95n5ANe2tSjxUDO_ce_gLODHuEb0i8b-EW9vUnhpJWQqg8D-9G5VklEx_Uy3tC_',
    ['report'] = '',--'https://discord.com/api/webhooks/1089257788703781005/pquevuV5--Xh7Vy7scTD4bM5mUbwEl54j5fe3IXTODOA3Mn5SqcQY5LoLMq5skgTqVjX',
    ['me'] = '',--'https://discord.com/api/webhooks/1089257940621463734/lMgS3SlbpVbIYumo257AkN2b9GlewNZ9kGZz-avKO2yTSMPlsZiQ8Tz-l20JfNAZM-eM',
    ['pmelding'] = '',--'https://discord.com/api/webhooks/1089259779626643526/SKm03gyQJiU5vULcFYt7xgllyei5rHgMcMW_LOPFJx5jtIoFYTvVUUoMtibj27EGHpsd',
    ['112'] = '',--'https://discord.com/api/webhooks/1089260322570903572/7i1S0hk3z8ztkkCasx6ZvaxnXswY2bMi_cjEkIXjhU-k972eG2pluNPNug0xlDKat7Be',
    ['bans'] = '',--'https://discord.com/api/webhooks/1089260433493467247/_bu1DAuvi3H-xTIRCPyz7P6QCL1LpE0VkbQJ-9eQ-d8UiaCqyA2Oq9DDTm-hKcefB44a',
    ['anticheat'] = '',--'https://discord.com/api/webhooks/1089260527806599289/pAdH1GT-tmcw9Kkgnyz3-MWtCQGZkqsvrHhnFry1OMM90G-SMijPW3NXsZKYJG7X5Hci',
    ['weather'] = '',--'https://discord.com/api/webhooks/1089260938382823434/lpJ0lUwMynBwFtp0HBdreANk8gpL64HNZxquBhcb8H9oERmvyTAS0aa-eMFc0EiDbHhe',
    ['moneysafes'] = '',--'https://discord.com/api/webhooks/1089261084306845706/RD9EJc4vx_ewv9ACF32HT7dw_xM1UML-dAHksrra20cuFMbJzj4ymtGbFqMRgVpeXEGz',
    ['bennys'] = '',--'https://discord.com/api/webhooks/1089261190796034048/KFAud85NCMIf_vWa5jM-UzFJwpXwJMZCG4nde1ezaO4ze9mkpy3AIItTD1UrVogiCaSr',
    ['bossmenu'] = '',--'https://discord.com/api/webhooks/1089261681626062949/sIywqsPZ3_82udD5otvtfwjM7A5reAtpn_oGxQ4SWaFpohwGXr_tqx3dl8YSjEqtFSX2',
    ['robbery'] = '',--'https://discord.com/api/webhooks/1089261784596218006/ezDVs8NJ2zHuBltrL9vHU6d8zy8YpgO0FmhchhYiQc87XHp2ZKngdxGzEOB99YNP_T7r',
    ['casino'] = '',
    ['traphouse'] = '',--'https://discord.com/api/webhooks/1089262171541733559/c-CXGnzBvUDd9SZQSMuwG-V5yywIMbrZU_6X5ydzaSnCzET1-hptcrBWuCj_KWib4Tc3',
    ['911'] = '',--'https://discord.com/api/webhooks/1089262373883346944/opJMbWLucVhHDJ1QtMv_cAxxgBCZrXEJ3JPoZjer_Qs7UfJQ6ku4myTBZJnAanjc2y2-',
    ['palert'] = '',--'https://discord.com/api/webhooks/1089262485481197699/VfGcFa6RC5UOOTIwDKtmkYqYNz2pKMjUvXyyHAOrhEO2Yac79BzFHvN2Yzg0vMbShzPN',
    ['house'] = '',--'https://discord.com/api/webhooks/1089262598840647791/u7PbnKwR7tJPJzsS9W1k7TirPj4ytyBWhYZRq7lIMh20uwBvrquiUJbLYmUsUtFQgnoc',
    ['qbjobs'] = '',--'https://discord.com/api/webhooks/1089262719728889947/lqJQQnE8yPd5hYjWryIDDV4leGBvInFABsL-jrvrYfUNtEwYsI4zxTK0DQeXosHp0LtQ',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = '2Life Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/avatars/1051958138204594176/92885d1e7915ea53f8b5cbfeed295f95.png?width=670&height=670',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name]+1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        local postData = { username = 'QB Logs', embeds = {} }

        for i = 1, #logQueue[name] do
            postData.embeds[#postData.embeds+1] = logQueue[name][i].data[1]
        end

        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })

        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds+1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
