-- npc_reducer.lua
-- Ensure these values are appropriate for your game setting.
local vehicleDensity = 0.1 -- Modify this value as needed.
local pedDensity = 0.1 -- Separate density for pedestrians
local updateInterval = 10000 -- Update interval in milliseconds

-- A function to update density settings for vehicles and pedestrians.
local function updateDensities()
    -- Check and set vehicle density
    if SetVehicleDensityMultiplierThisFrame then
        SetVehicleDensityMultiplierThisFrame(vehicleDensity)
        print("Vehicle density set successfully.")
    else
        print("SetVehicleDensityMultiplierThisFrame function is not available.")
    end
a
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
    -- SET_NUMBER_OF_PARKED_VEHICLES
    DisableVehicleDistantlights(true)
    SetPedPopulationBudget(0)
    SetVehiclePopulationBudget(0)
    SetRandomEventFlag(false)
    local scenarios = {
        'WORLD_VEHICLE_ATTRACTOR',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_BICYCLE_BMX',
        'WORLD_VEHICLE_BICYCLE_BMX_BALLAS',
        'WORLD_VEHICLE_BICYCLE_BMX_FAMILY',
        'WORLD_VEHICLE_BICYCLE_BMX_HARMONY',
        'WORLD_VEHICLE_BICYCLE_BMX_VAGOS',
        'WORLD_VEHICLE_BICYCLE_MOUNTAIN',
        'WORLD_VEHICLE_BICYCLE_ROAD',
        'WORLD_VEHICLE_BIKE_OFF_ROAD_RACE',
        'WORLD_VEHICLE_BIKER',
        'WORLD_VEHICLE_BOAT_IDLE',
        'WORLD_VEHICLE_BOAT_IDLE_ALAMO',
        'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
        'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
        'WORLD_VEHICLE_BROKEN_DOWN',
        'WORLD_VEHICLE_BUSINESSMEN',
        'WORLD_VEHICLE_HELI_LIFEGUARD',
        'WORLD_VEHICLE_CLUCKIN_BELL_TRAILER',
        'WORLD_VEHICLE_CONSTRUCTION_SOLO',
        'WORLD_VEHICLE_CONSTRUCTION_PASSENGERS',
        'WORLD_VEHICLE_DRIVE_PASSENGERS',
        'WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED',
        'WORLD_VEHICLE_DRIVE_SOLO',
        'WORLD_VEHICLE_FIRE_TRUCK',
        'WORLD_VEHICLE_EMPTY',
        'WORLD_VEHICLE_MARIACHI',
        'WORLD_VEHICLE_MECHANIC',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_PARK_PARALLEL',
        'WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN',
        'WORLD_VEHICLE_PASSENGER_EXIT',
        'WORLD_VEHICLE_POLICE_BIKE',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_QUARRY',
        'WORLD_VEHICLE_SALTON',
        'WORLD_VEHICLE_SALTON_DIRT_BIKE',
        'WORLD_VEHICLE_SECURITY_CAR',
        'WORLD_VEHICLE_STREETRACE',
        'WORLD_VEHICLE_TOURBUS',
        'WORLD_VEHICLE_TOURIST',
        'WORLD_VEHICLE_TANDL',
        'WORLD_VEHICLE_TRACTOR',
        'WORLD_VEHICLE_TRACTOR_BEACH',
        'WORLD_VEHICLE_TRUCK_LOGS',
        'WORLD_VEHICLE_TRUCKS_TRAILERS',
        'WORLD_VEHICLE_DISTANT_EMPTY_GROUND'
    }
    for i, v in pairs(scenarios) do
        SetScenarioTypeEnabled(v, false)
    end
    SetNumberOfParkedVehicles(vehicleDensity)
    SetMaxWantedLevel(0) -- Never wanted
    SetCreateRandomCops(0) -- Don't create cops
    SetCreateRandomCopsNotOnScenarios(0) -- Don't create cops 2
    SetCreateRandomCopsOnScenarios(0) -- Don't create cops 3
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
