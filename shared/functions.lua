function sescal(dict,ses)
    local soundset_ref = dict or "Mud5_Sounds"
    local soundset_name = ses or  "Small_Safe_Unlock"
    -- local counter_i = 1
    -- while soundset_ref~=0 and not Citizen.InvokeNative(0xD9130842D7226045 ,soundset_ref,0) and counter_i <= 300  do
    --     counter_i = counter_i + 1
    --     Citizen.Wait(0)
    -- end
    if soundset_ref == 0 or Citizen.InvokeNative(0xD9130842D7226045 ,soundset_ref,0) then
        local ped = PlayerPedId()
        local ped_coords = GetEntityCoords(ped)
        -- local x,y,z =  table.unpack(ped_coords + GetEntityForwardVector(ped)*2.0)
        -- Citizen.InvokeNative(0xCCE219C922737BFA,soundset_name, ped_coords, soundset_ref, true, 0, true, 0)
        Citizen.InvokeNative(0x6FB1DA3CA9DA7D90, soundset_name, PlayerPedId(), soundset_ref, true, 0, 0)  -- PLAY_SOUND_FROM_ENTITY
    end
end