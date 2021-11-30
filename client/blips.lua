-- Add blips as per below examples:
-- https://docs.fivem.net/docs/game-references/blips/

local blips = {
  {title="Vineyard", colour=58 , id=615,x = -1928.9, y = 2048.9, z = 0},
  {title="Oxy Delivery", colour=2 , id=403,x = 69.0, y = -1570.05, z = 0},
  {title="Apple Store", colour=22 , id=590,x = 154.59, y = -219.06, z = 0},
  {title="Electric Fuse", colour=1 , id=354,x = 379.74, y = -907.84, z = 0},
  {title="Electric Fuse", colour=1 , id=354,x = 158.27, y = -224.37, z = 0},
  {title="Boostin", colour=30 , id=620,x = 485.36, y = -3383.1, z = 0},
  {title="Weed Depot", colour=62 , id=140,x = -1172.088, y = -1571.833, z = 0},
  {title="Car Rentals", colour=70 , id=290,x = 181.19, y = -1010.28, z = 0},
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
