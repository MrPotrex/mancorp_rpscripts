-- Client

---Desmayo
Citizen.CreateThread(function()

    local isRagdolling = 0

     while true do
         Citizen.Wait(0)
         if IsControlJustReleased(1, 303) then -- Start holding U
             isRagdolling = (isRagdolling + 1) % 2
        end
         if isRagdolling == 1 then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
         end
     end
 end)
---Desmayo

-- Cruzar brazos
Citizen.CreateThread(function()
    local dict = "amb@world_human_hang_out_street@female_arms_crossed@base"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(600)
	end
    local handsup = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 47) then --Start holding g
            if not handsup then
                TaskPlayAnim(PlayerPedId(), dict, "base", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end)
-- Cruzar brazos
