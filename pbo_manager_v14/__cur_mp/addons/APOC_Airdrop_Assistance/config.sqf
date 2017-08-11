//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 60; //Expressed in sec

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				Price,	"Drop Type"]
["Quadbike (Civilian)", "C_Quadbike_01_F", 			720, 	"vehicle"],
["Offroad HMG", 		"B_G_Offroad_01_armed_F",	3000, 	"vehicle"],
["MH-9 Hummingbird", 	"B_Heli_Light_01_F", 		6000, 	"vehicle"],
["Strider HMG", 		"I_MRAP_03_hmg_F", 			18000, 	"vehicle"],
["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 	36000,  "vehicle"],
["AH-9 Pawnee", 		"B_Heli_Light_01_armed_F",  48000, 	"vehicle"],
["AMV-7 Marshall", 		"B_APC_Wheeled_01_cannon_F", 33000, "vehicle"],
["M2A1 Slammer", 		"B_MBT_01_cannon_F", 		72000,  "vehicle"]
];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price," drop type"]
["Launchers", 			"mission_USLaunchers", 			35000, "supply"],
["Assault Rifle", 		"mission_USSpecial", 			35000, "supply"],
["Sniper Rifles", 		"mission_Main_A3snipers", 		50000, "supply"],
["DLC Rifles", 			"airdrop_DLC_Rifles", 			45000, "supply"],
["DLC LMGs", 			"airdrop_DLC_LMGs", 			45000, "supply"]
];