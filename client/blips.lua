-- Add blips as per below examples:
-- https://docs.fivem.net/docs/game-references/blips/

local blips = {
  {title="Weed Depot", colour=62 , id=140,x = -1172.088, y = -1571.833, z = 0},
  {title="Strip Club", colour=61 , id=121,x = 126.87, y = -1297.25, z = 0},
  {title="Trucking Headquarters", colour=83 , id=477,x = 1208.75, y = -3115.47, z = 0},
  {title="", colour=62 , id=66,x = 69.0, y = -1570.05, z = 0},
  {title="", colour=62 , id=66,x = -278.22, y = 2205.6, z = 0},
  {title="", colour=62 , id=66,x = 4520.26, y = -4515.44, z = 0},
  {title="", colour=62 , id=66,x = 306.33, y = 4294.56, z = 0},
  {title="Mine", colour=31 , id=618,x = 2831.76, y = 2799.67, z = 0},
  {title="City Hall", colour=15 , id=304,x = -544.65, y = -204.7, z = 0},
  {title="Garbage Job", colour=22 , id=318,x = -341.06, y = -1562.07, z = 0},
  {title="Digital Den", colour=25 , id=606,x = -1525.51, y = -408.49, z = 0},
  {title="Diamond Casino", colour=53 , id=617,x = 946.53, y = 36.43, z = 0},
  {title="Bobcat Security", colour=29 , id=468,x = 881.18, y = -2259.69, z = 0},
  {title="Fishing", colour=46 , id=404,x = -1599.932, y = 5259.831, z = 0},
  {title="Aircraft Rentals", colour=26 , id=64,x = -1621.77, y = -3152.65, z = 0},
 }
 
 -- To add additional function to the below blip display, you can add natives to change/add/remove various things, just go here (https://docs.fivem.net/natives/) and search 'SetBlip' and it will give you a list. Example: https://docs.fivem.net/natives/?_0xB14552383D39CE3E
 
Citizen.CreateThread(function()

   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 0.75) -- This is the size of the blip, 0.65 is fairly good.
     SetBlipColour(info.blip, info.colour)
     SetBlipAsShortRange(info.blip, true)
	 BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.title)
     EndTextCommandSetBlipName(info.blip)
   end
end)
