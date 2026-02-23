CreateThread(function()
    RequestIpl("hei_ap1_02_long_0")
    RequestIpl("hei_ap1_02_strm_0")

    while not IsIplActive("hei_ap1_02_long_0") or not IsIplActive("hei_ap1_02_strm_0") do
        Wait(100)
    end

    local interiorId = GetInteriorAtCoords(-1037.0, -2737.0, 20.17)
    if interiorId ~= 0 and IsValidInterior(interiorId) then
        if not IsInteriorReady(interiorId) then
            LoadInterior(interiorId)
            while not IsInteriorReady(interiorId) do
                Wait(100)
            end
        end
        RefreshInterior(interiorId)
    end
end)
