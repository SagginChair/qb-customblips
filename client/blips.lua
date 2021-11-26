-- Add blips as per below examples:
-- https://docs.fivem.net/docs/game-references/blips/

local blips = {
  {title="Vineyard", colour=58 , id=615,x = -1928.9, y = 2048.9, z = 0},
  {title="Oxy Delivery", colour=2 , id=403,x = 69.0, y = -1570.05, z = 0},
  {title="", colour=83 , id=66,x = 908.53, y = -1589.17, z = 0},
  {title="", colour=75 , id=66,x = -642.8, y = -1227.65, z = 0},
  {title="", colour=83 , id=66,x = 363.76, y = 6472.57, z = 0},
  {title="", colour=83 , id=66,x = -1078.38, y = -1678.54, z = 0},
  {title="", colour=29 , id=66,x = 322.48, y = -305.29, z = 0},
  {title="", colour=75 , id=66,x = -429.43, y = 1109.7, z = 0},
  {title="", colour=75 , id=66,x = -1353.09, y = -752.51, z = 0},
  {title="", colour=46 , id=66,x = 3480.1, y = 3647.19, z = 0},
  {title="", colour=46 , id=66,x = 1957.22, y = 5175.18, z = 0},
  {title="", colour=46 , id=66,x = -317.16, y = -2778.9, z = 0},
  {title="Apple Store", colour=22 , id=590,x = 154.59, y = -219.06, z = 0},
  {title="Electric Fuse", colour=1 , id=354,x = 379.74, y = -907.84, z = 0},
  {title="Electric Fuse", colour=1 , id=354,x = 158.27, y = -224.37, z = 0},
  {title="Boostin", colour=30 , id=620,x = 485.36, y = -3383.1, z = 0},
  {title="Weed Depot", colour=62 , id=140,x = -1172.088, y = -1571.833, z = 0},
  {title="Car Rentals", colour=70 , id=290,x = 181.19, y = -1010.28, z = 0},
  {title="Plane Mission", colour=50 , id=251,x = 4520.05, y = -4515.3, z = 0},
  {title="Palet Unloading", colour=50 , id=527,x = 1208.74, y = -3114.2, z = 0},
 }
 
 -- To add additional function to the below blip display, you can add natives to change/add/remove various things, just go here (https://docs.fivem.net/natives/) and search 'SetBlip' and it will give you a list. Example: https://docs.fivem.net/natives/?_0xB14552383D39CE3E
 
Citizen.CreateThread(function()

   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 0.55) -- This is the size of the blip, 0.65 is fairly good.
     SetBlipColour(info.blip, info.colour)
     SetBlipAsShortRange(info.blip, true)
	 BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.title)
     EndTextCommandSetBlipName(info.blip)
   end
end)
