-- Add blips as per below examples:
-- https://docs.fivem.net/docs/game-references/blips/

local blips = {
  {title="Oxy Delivery", colour=2 , id=403,x = 69.0, y = -1570.05, z = 0},
  {title="Weed Depot", colour=62 , id=140,x = -1172.088, y = -1571.833, z = 0},
  {title="Car Rentals", colour=70 , id=290,x = 181.19, y = -1010.28, z = 0},
  {title="Strip Club", colour=61 , id=121,x = 126.87, y = -1297.25, z = 0},
  {title="Trucking Headquarters", colour=83 , id=477,x = 1208.75, y = -3115.47, z = 0},
  {title="", colour=62 , id=66,x = 363.37, y = 6482.18, z = 0},
  {title="", colour=62 , id=66,x = 3479.65, y = 3647.15, z = 0},
  {title="", colour=62 , id=66,x = -278.22, y = 2205.6, z = 0},
  {title="", colour=62 , id=66,x = 4520.26, y = -4515.44, z = 0},
  {title="", colour=62 , id=66,x = -1359.33, y = -759.85, z = 0},
  {title="Mine Shaft", colour=31 , id=618,x = -597.11, y = 2091.39, z = 0},
  {title="City Hall", colour=15 , id=304,x = -544.65, y = -204.7, z = 0},
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
