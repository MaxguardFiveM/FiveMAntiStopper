-- antistopper.lua

-- Kontrol etmek istediğiniz kaynakların adlarını buraya ekleyin
local protectedResources = {
    "essentialmode",
    "es_extended",
    "rulessbaba1top"
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000) -- Her 10 saniyede bir kontrol et

        for _, resourceName in ipairs(protectedResources) do
            if GetResourceState(resourceName) ~= "started" then
                TriggerServerEvent('antistopper:resourceStopped', resourceName)
            end
        end
    end
end)
