/*
Only change stuff in here!
*/
NPCSHOP = NPCSHOP or {}
NPCSHOP.CarSpawn = {}
NPCSHOP.NPCSpawn = {}

/*
Edit stuff below this line
**************************
*/
// Model of the NPC, can be changed to whatever you want, as long as it follows this path of models/<modelname>.mdl
NPCSHOP.NPCModel = "models/vortigaunt.mdl"

//Position of the NPC, in YOUR console, type getpos to get positioning co-ordinates

NPCSHOP.NPCSpawn["rp_mapnamehere"] = { //Put the actual map name in
	pos = Vector(-868.878723, -12786.181641, 133.968750),
	ang = Angle(9.002390, -1.786602, 0.000000)
}

//Position for the carspawn

NPCSHOP.CarSpawn["rp_mapnamehere"] = {
	pos = Vector(-576.649597, -12809.720703, 100.968750),
	ang = Angle(0.000000, 90.000000, 0.000000)
}


//Which usergroups are considered "Donator"
NPCSHOP.UserGroups = {"donator", "admin", "superadmin"}

/*=-=-=-=-=-=-=-=-=-=-==--=-=-=-=-=-=HOW TO ADD VEHICLES=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Add vehicles here.

The jobrestriction is abit wonky, in darkrp you can just do like {TEAM_POLICE, TEAM_CHIEF, TEAM_MAYOR} but it doesn't really work the same here.
Jobrestriction is put with {1,2,3} where 1, 2 and 3 are the team numbers of those teams, in order to get the team numbers, just go ingame, open console
using F11 and type "lua_run_cl print(TEAM_CITIZEN)" which will give you the team number for citizen. You can also get the teamnumber of your current
team by typing "lua_run_cl print(LocalPlayer():Team())"
If you add or remove darkrp teams, this process (in some cases) have to be done again!

NPCSHOP.AddVehicle(name, class, model, price, jobrestriction, donatoronly)
name: Name of the vehicle in the npcshop menu
class: SENT-class of the Scar. You can find these in scars/lua/entities. Most of them start with "sent_sakarias_car_"
model: Model which will appear in the npcshop menu
price: How much it costs
jobrestriction: What jobs will be able to buy this (type nil if its available to all jobs)
donatoronly: Is this vehicle only available for donator's? true/false
Display name > Class (rp_getvehicles in console) > Model directory > Price > Jobs > Donator/Not Donator - False = Not Donator, True = Donator
*/
NPCSHOP.AddVehicle("Junker1", "sent_sakarias_car_junker1", "models/props_vehicles/car002b.mdl", 500, nil, false )
NPCSHOP.AddVehicle("Junker2", "sent_sakarias_car_junker2", "models/props_vehicles/car003b.mdl", 1000, nil, false )
NPCSHOP.AddVehicle("Junker3", "sent_sakarias_car_junker3", "models/props_vehicles/van001a.mdl", 1500, nil, false )


