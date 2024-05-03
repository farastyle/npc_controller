-- npc_reducer.lua
-- Ensure these values are appropriate for your game setting.
local vehicleDensity = 0.1 -- Modify this value as needed.
local pedDensity = 0.1 -- Separate density for pedestrians
local updateInterval = 1000 -- Update interval in milliseconds

-- A function to update density settings for vehicles and pedestrians.
local function updateDensities()
    -- Check and set vehicle density
    if SetVehicleDensityMultiplierThisFrame then
        SetVehicleDensityMultiplierThisFrame(vehicleDensity)
        print("Vehicle density set successfully.")
    else
        print("SetVehicleDensityMultiplierThisFrame function is not available.")
    end

    -- Check and set pedestrian density
    if SetPedDensityMultiplierThisFrame then
        SetPedDensityMultiplierThisFrame(pedDensity)
        print("Pedestrian density set successfully.")
    else
        print("SetPedDensityMultiplierThisFrame function is not available.")
    end

    -- Random vehicle density
    if SetRandomVehicleDensityMultiplierThisFrame then
        SetRandomVehicleDensityMultiplierThisFrame(vehicleDensity)
        print("Random vehicle density set successfully.")
    else
        print("SetRandomVehicleDensityMultiplierThisFrame function is not available.")
    end

    -- Parked vehicle density
    if SetParkedVehicleDensityMultiplierThisFrame then
        SetParkedVehicleDensityMultiplierThisFrame(vehicleDensity)
        print("Parked vehicle density set successfully.")
    else
        print("SetParkedVehicleDensityMultiplierThisFrame function is not available.")
    end

    -- Scenario pedestrian density
    if SetScenarioPedDensityMultiplierThisFrame then
        SetScenarioPedDensityMultiplierThisFrame(pedDensity, pedDensity)
        print("Scenario pedestrian density set successfully.")
    else
        print("SetScenarioPedDensityMultiplierThisFrame function is not available.")
    end
end

-- Create a new thread to run the density updates continuously
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(updateInterval)

        -- Using pcall to catch any runtime errors during the execution of updateDensities
        local status, err = pcall(updateDensities)
        if not status then
            print("Error updating densities: " .. tostring(err))
        end
    end
end)
