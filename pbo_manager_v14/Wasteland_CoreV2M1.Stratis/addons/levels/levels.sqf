// Virtual Arsenal Level Customization - 
// by CRE4MPIE
// Inspired by fn_r3m3dy - thx xD
// PS: Arrays are a bitch



// Level Loadout  
_levelEnabled = ["A3W_levelEnabled"] call isConfigOn;
_playerLevel = player getVariable ["playerLevel", 0];

switch (_playerLevel) do {	
		case 1: // Level
		{			
			9999 cutText ["", "BLACK IN"];
				_crate = "Box_East_Ammo_F";		
				["Open", _crate] call BIS_fnc_arsenal;
	[_crate,[true],true] call BIS_fnc_removeVirtualMagazineCargo;
	[_crate,[true],true] call BIS_fnc_removeVirtualBackpackCargo;
	[_crate,[true],true] call BIS_fnc_removeVirtualItemCargo;
	[_crate,[true],true] call BIS_fnc_removeVirtualWeaponCargo;

/////////// Weapons	//////////
[_crate,[
	'arifle_CTAR_blk_F',
	'arifle_CTAR_hex_F',
	'arifle_CTAR_ghex_F',
	"srifle_EBR_F",
    "srifle_DMR_06_olive_F",
	'arifle_CTAR_GL_blk_F',
	'arifle_CTAR_GL_hex_F',
	'arifle_CTAR_GL_ghex_F',
	'arifle_CTAR_blk_ACO_Pointer_F', // optic_ACO_grn / acc_pointer_IR
	'arifle_CTAR_blk_Pointer_F', // acc_pointer_IR
	'arifle_CTAR_blk_ACO_F', // optic_ACO_grn 
	'arifle_CTAR_GL_blk_ACO_F', // optic_ACO_grn
	//'arifle_CTAR_GL_blk_ARCO_Pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	'arifle_CTAR_blk_ARCO_Pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	//'arifle_CTAR_blk_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_58_blk_F
	//'arifle_CTAR_GL_blk_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_58_blk_F
	//'arifle_CTAR_blk_ARCO_Pointer_Snds_F', // optic_Arco_blk_F / acc_pointer_IR / muzzle_snds_58_blk_F
	'arifle_CTAR_blk_ARCO_F', // optic_Arco_blk_F
	'arifle_MX_Black_F',
	//'arifle_MX_GL_Black_F',
	'arifle_MX_SW_Black_F',
	'arifle_MX_khk_F', 
	'arifle_MX_khk_ACO_Pointer_F', // optic_Aco / acc_pointer_IR
	//'arifle_MX_GL_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_SW_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_SW_khk_Pointer_F', // acc_pointer_IR
	'arifle_MX_SW_khk_F',
	'arifle_MX_F',
	'arifle_MX_GL_F',
	'arifle_MX_SW_F',
	'arifle_MX_pointer_F',
	'arifle_MX_Holo_pointer_F', // optic_Holosight / acc_pointer_IR
	'arifle_MX_Hamr_pointer_F', // optic_Holosight / acc_pointer_IR
	'arifle_MX_ACO_pointer_F', // optic_Aco / acc_pointer_IR
	'arifle_MX_ACO_F', // optic_Aco
	'arifle_MX_GL_ACO_F', // optic_Aco
	//'arifle_MX_GL_ACO_pointer_F', // optic_Aco / acc_pointer_IR
	//'arifle_MX_GL_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	//'arifle_MX_ACO_pointer_snds_F', // optic_Aco / acc_pointer_IR / muzzle_snds_H 
	'arifle_MX_SW_pointer_F', // acc_pointer_IR
	'arifle_MX_SW_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	//'arifle_MX_GL_Holo_pointer_snds_F', // optic_Holosight / acc_pointer_IR / muzzle_snds_H
	'arifle_MXC_ACO_F', // optic_Hamr / acc_pointer_IR
	'arifle_MXC_khk_F',
	'arifle_MXC_khk_ACO_F', // optic_Aco
	'arifle_MXC_khk_Holo_Pointer_F', // acc_pointer_IR / optic_Holosight_khk_F
	//'arifle_MXC_Holo_pointer_snds_F', // optic_Holosight / acc_pointer_IR / muzzle_snds_H
	//'arifle_MXC_SOS_point_snds_F', // optic_SOS / acc_pointer_IR / muzzle_snds_H
	//'arifle_MXC_ACO_pointer_snds_F', // optic_Aco / acc_pointer_IR / muzzle_snds_H
	'arifle_MXC_ACO_pointer_F', // optic_Aco / acc_pointer_IR
	//'arifle_MXC_khk_ACO_Pointer_Snds_F', // optic_Aco / acc_pointer_IR / muzzle_snds_H_khk_F
	'arifle_MXC_F',
	'arifle_MXC_Holo_F', // optic_Holosight
	'arifle_MXC_Holo_pointer_F', // optic_Holosight / acc_pointer_IR
	'arifle_MXC_Black_F', 
	'arifle_MXM_SOS_pointer_F', // optic_SOS / acc_pointer_IR
	//'arifle_MXM_RCO_pointer_snds_F', // optic_Arco / acc_pointer_IR / muzzle_snds_H
	'arifle_MXM_DMS_F', // optic_DMS
	'arifle_MXM_F',
	'arifle_MXM_Black_F',
	'arifle_MXM_khk_F',
	'arifle_MXM_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'srifle_DMR_07_blk_F',
	'srifle_DMR_07_hex_F',
	'srifle_DMR_07_ghex_F',
	'srifle_DMR_07_blk_DMS_F', // optic_DMS
	'srifle_DMR_07_blk_DMS_Snds_F', // optic_DMS / muzzle_snds_65_TI_blk_F
	'arifle_ARX_blk_F',
	'arifle_ARX_ghex_F',
	'arifle_ARX_hex_F',
	//'arifle_ARX_hex_ARCO_Pointer_Snds_F', // optic_Arco / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	//'arifle_ARX_ghex_ARCO_Pointer_Snds_F', // optic_Arco / acc_pointer_IR / muzzle_snds_65_TI_ghex_F 
	//'arifle_ARX_hex_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	//'arifle_ARX_ghex_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_65_TI_ghex_F
	//'arifle_ARX_hex_DMS_Pointer_Snds_Bipod_F', // optic_DMS / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	//'arifle_ARX_ghex_DMS_Pointer_Snds_Bipod_F', // optic_DMS_ghex_F / acc_pointer_IR / muzzle_snds_65_TI_ghex_F
	//'arifle_ARX_Viper_F', // optic_Arco_ghex_F
	//'arifle_ARX_Viper_hex_F', // optic_Arco
	'srifle_DMR_01_F', 
	'srifle_DMR_01_ACO_F', // optic_ACO_grn
	'srifle_DMR_01_MRCO_F', // optic_MRCO
	'srifle_DMR_01_SOS_F', // optic_SOS
	'srifle_DMR_01_DMS_F', // optic_DMS
	//'srifle_DMR_01_DMS_snds_F', // optic_DMS / muzzle_snds_B
	'srifle_DMR_01_ARCO_F', // optic_Arco
	'arifle_SDAR_F',
	'arifle_Mk20_F', 
	'arifle_Mk20_plain_F',
	'arifle_Mk20C_F', 
	'arifle_Mk20C_plain_F',
	'arifle_Mk20_GL_F',
	'arifle_Mk20_GL_plain_F',
	'arifle_Mk20C_ACO_F', // optic_ACO_grn
	'arifle_Mk20C_ACO_pointer_F',
	'arifle_Mk20_pointer_F', // acc_pointer_IR
	'arifle_Mk20_Holo_F', // optic_Holosight
	'arifle_Mk20_ACO_F', // optic_ACO_grn
	'arifle_Mk20_ACO_pointer_F', // optic_ACO_grn / acc_pointer_IR
	'arifle_Mk20_MRCO_F', // optic_MRCO
	'arifle_Mk20_MRCO_plain_F', // optic_MRCO
	'arifle_Mk20_MRCO_pointer_F', // optic_MRCO / 
	'arifle_Mk20_GL_MRCO_pointer_F', // optic_MRCO / acc_pointer_IR
	'arifle_Mk20_GL_ACO_F', // optic_ACO_grn
	'arifle_Katiba_F',
	'arifle_Katiba_C_F',
	'arifle_Katiba_GL_F',
	'arifle_Katiba_C_ACO_pointer_F', // optic_ACO_grn / acc_pointer_IR
	'arifle_Katiba_C_ACO_F', // optic_ACO_grn
	'arifle_Katiba_pointer_F', // acc_pointer_IR
	'arifle_Katiba_ACO_pointer_F', // optic_ACO_grn / acc_pointer_IR
	'arifle_Katiba_ARCO_F', // optic_Arco_blk_F
	'arifle_Katiba_ARCO_pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	'arifle_Katiba_GL_ACO_F', // optic_ACO_grn
	//'arifle_Katiba_GL_ARCO_pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	//'arifle_Katiba_GL_Nstalker_pointer_F' // optic_Nightstalker / acc_pointer_IR
	//'arifle_Katiba_GL_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
	//'arifle_Katiba_C_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
	//'arifle_Katiba_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
	'arifle_Katiba_ARCO_pointer_snds_F', // optic_Arco_blk_F / acc_pointer_IR / muzzle_snds_H
	'arifle_SPAR_01_blk_F',
	'arifle_SPAR_01_khk_F',
	'arifle_SPAR_01_snd_F',
	'arifle_SPAR_01_GL_blk_F',
	'arifle_SPAR_01_GL_khk_F',
	'arifle_SPAR_01_GL_snd_F',
	'arifle_SPAR_01_blk_ERCO_Pointer_F', // optic_ERCO_blk_F / acc_pointer_IR
	'arifle_SPAR_01_blk_ACO_Pointer_F', // optic_ERCO_blk_F / acc_pointer_IR
	'arifle_SPAR_01_GL_blk_ACO_Pointer_F', // optic_Aco / acc_pointer_IR
	//'arifle_SPAR_01_GL_blk_ERCO_Pointer_F', // optic_ERCO_blk_F / acc_pointer_IR
	'arifle_AKS_F', 
	'arifle_AK12_F',
	'arifle_AK12_GL_F',
	'arifle_AKM_F',
	'arifle_AKM_FL_F',
	'LMG_Zafir_F',
	'LMG_Zafir_pointer_F', // acc_pointer_IR
	'LMG_Zafir_ARCO_F', // 	optic_Arco
	'hgun_Pistol_heavy_01_F',
	'hgun_P07_khk_F',
	'hgun_P07_F',
	'hgun_Rook40_F',
	'hgun_ACPC2_F',

	// SMGs
	'hgun_PDW2000_F',
	'SMG_05_F',
	'SMG_02_F',
	'SMG_01_F',
	'Rangefinder',
	'Binocular'
],true] call BIS_fnc_addVirtualWeaponCargo;

/////////// Backpacks //////////					
[_crate,[
    "B_Kitbag_rgr",
	'B_Carryall_Base',
	'B_AssaultPack_rgr',
	'B_FieldPack_khk',
	'B_Kitbag_sgg',
	'B_AssaultPack_ocamo',
	'B_AssaultPack_mcamo',
	'B_FieldPack_cbr_Ammo',
	'B_ViperLightHarness_khk_F',
	"B_ViperLightHarness_hex_F",
	"B_ViperLightHarness_oli_F",
	"B_ViperLightHarness_blk_F",
	'B_FieldPack_ghex_F'

],true] call BIS_fnc_addVirtualBackpackCargo;

/////////// ammo for guns above	//////////
[_crate,[
	'MiniGrenade',
	'HandGrenade',
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	'APERSTripMine_Wire_Mag',
	'APERSBoundingMine_Range_Mag',
	'APERSMine_Range_Mag',
	'SatchelCharge_Remote_Mag',
	'SmokeShellBlue',
	'SmokeShellGreen',
	'SmokeShellOrange',
	'SmokeShellRed'

],true] call BIS_fnc_addVirtualMagazineCargo;

/////////// Items //////////
[_crate,[
	//optics
	'optic_Arco',
	'acc_pointer_IR',
	'optic_ERCO_blk_F',
	'optic_Aco',
	'optic_Arco_blk_F',
	'optic_ACO_grn',
	'optic_MRCO',
	'optic_Holosight',
	'optic_DMS',
	'optic_SOS',
	"optic_AMS",
	'optic_Arco_ghex_F',
	'optic_DMS_ghex_F',
	'optic_Hamr',
	'bipod_01_F_blk',
	'bipod_01_F_snd',
	'bipod_01_F_mtp',
	"muzzle_snds_H",
	"muzzle_snds_B",
	"muzzle_snds_M",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_58_blk_F",
	//Vests	
	'V_Rangemaster_Belt',
	'V_RebreatherB',
	'V_RebreatherIR',
	'V_RebreatherIA',
	'V_HarnessO_brn',
	'V_HarnessO_gry',
	'V_HarnessOGL_brn',
	'V_HarnessOGL_gry',
	'V_HarnessOSpec_brn',
	'V_HarnessOSpec_gry',
	'V_BandollierB_blk',
	'V_BandollierB_cbr',
	'V_BandollierB_rgr',
	'V_BandollierB_khk',
	'V_BandollierB_oli',
	'V_Chestrig_khk',
	'V_Chestrig_rgr',
	'V_Chestrig_blk',
	'V_Chestrig_oli',
	'V_TacVest_blk',
	'V_TacVest_brn',
	'V_TacVest_camo',
	'V_TacVest_khk',
	'V_TacVest_oli',
	'V_TacVest_blk_POLICE',
	"V_TacVestIR_blk",
	"V_PlateCarrierIA1_dgtl",
	"V_TacVest_blk",
	'V_I_G_resistanceLeader_F',
	// Items
	'Medikit',
	'MineDetector',
	'FirstAidKit',
	'NVGoggles_OPFOR',
	'NVGoggles_INDEP',
	'NVGoggles',
	'Chemlight_blue',
	'Chemlight_green',
	'Chemlight_red',
	"ItemGPS",
	"ItemMap",
	'ItemCompass',
	'ItemWatch',
	// Goggles
	'G_Aviator',
	'G_Diving',
	'G_Balaclava_blk',
	'G_Balaclava_oli',
	'G_Balaclava_combat',
	'G_Balaclava_lowprofile',
	'G_Bandanna_aviator',
	'G_Bandanna_beast',
	'G_Bandanna_blk',
	'G_Bandanna_khk',
	'G_Bandanna_oli',
	'G_Bandanna_shades',
	'G_Bandanna_sport',
	'G_Bandanna_tan',
	'G_Combat',
	'G_Goggles_VR',
	'G_Lady_Blue',
	'G_Lady_Dark',
	'G_Lady_Mirror',
	'G_Lady_Red',
	'G_Lowprofile',
	'G_Shades_Black',
	'G_Shades_Blue',
	'G_Shades_Green',
	'G_Shades_Red',
	'G_Spectacles',
	'G_Spectacles_Tinted',
	'G_Sport_Blackred',
	'G_Sport_BlackWhite',
	'G_Sport_Blackyellow',
	'G_Sport_Checkered',
	'G_Sport_Greenblack',
	'G_Sport_Red',
	'G_Squares',
	'G_Squares_Tinted',
	'G_Tactical_Black',
	'G_Tactical_Clear',
	//Apex
	'G_Combat_Goggles_tna_F',
	'O_NVGoggles_urb_F',
	// All Clothing
	'U_OrestesBody',
	'U_I_G_resistanceLeader_F',
	'U_B_GhillieSuit',
	'U_O_GhillieSuit',
	'U_I_GhillieSuit',
	'U_B_Wetsuit',
	'U_O_Wetsuit',
	'U_I_Wetsuit',
	'U_B_CombatUniform_mcam',
	'U_O_CombatUniform_ocamo',
	'U_I_CombatUniform',
	'U_B_CombatUniform_mcam_tshirt',
	'U_B_CombatUniform_mcam_vest',
	'U_B_SpecopsUniform_sgg',
	'U_B_CTRG_1',
	'U_B_CTRG_2',
	'U_B_CTRG_3',
	"U_I_C_Soldier_Para_5_F",
	"U_I_C_Soldier_Para_3_F",
	"U_I_C_Soldier_Para_1_F",
	"U_I_C_Soldier_Para_2_F",
	"U_I_C_Soldier_Para_4_F",
	"U_B_T_Soldier_F",
	"U_B_T_Soldier_AR_F",
	'U_O_SpecopsUniform_ocamo',
	'U_O_CombatUniform_oucamo',
	'U_I_CombatUniform_shortsleeve',
	'U_I_CombatUniform_tshirt',
	'U_O_OfficerUniform_ocamo',
	'U_I_OfficerUniform',
	'U_B_PilotCoveralls',
	'U_O_PilotCoveralls',
	'U_I_pilotCoveralls',
	'U_B_HeliPilotCoveralls',
	'U_I_HeliPilotCoveralls',
	'U_BG_Guerilla1_1',
	'U_BG_Guerilla2_1',
	'U_BG_Guerilla2_2',
	'U_BG_Guerilla2_3',
	'U_BG_Guerilla3_1',
	'U_BG_Guerilla3_2',
	'U_BG_leader',
	'U_OG_Guerilla1_1',
	'U_OG_Guerilla2_1',
	'U_OG_Guerilla2_2',
	'U_OG_Guerilla2_3',
	'U_OG_Guerilla3_1',
	'U_OG_Guerilla3_2',
	'U_OG_leader',
	'U_IG_Guerilla1_1',
	'U_IG_Guerilla2_1',
	'U_IG_Guerilla2_2',
	'U_IG_Guerilla2_3',
	'U_IG_Guerilla3_1',
	'U_IG_Guerilla3_2',
	'U_IG_leader',
	'U_Competitor',
	'U_Rangemaster',
	//Apex
	'U_B_CTRG_Soldier_F',
	'U_B_T_Soldier_F',
	'U_O_T_Soldier_F',
	'U_B_T_Sniper_F',
	// All Headgear
	'H_HelmetB',
	'H_HelmetB_camo',
	'H_HelmetB_light',
	'H_HelmetB_paint',
	'H_HelmetSpecB',
	'H_HelmetSpecB_blk',
	'H_HelmetSpecB_paint1',
	'H_HelmetSpecB_paint2',
	'H_HelmetB_plain_blk',
	'H_HelmetSpecO_blk',
	'H_MilCap_blue',
	'H_MilCap_gry',
	'H_MilCap_oucamo',
	'H_MilCap_rucamo',
	'H_MilCap_mcamo',
	'H_MilCap_ocamo',
	'H_MilCap_dgtl',
	'H_Cap_headphones',
	'H_Bandanna_cbr',
	'H_Bandanna_camo',
	'H_Bandanna_gry',
	'H_Bandanna_khk',
	'H_Bandanna_mcamo',
	'H_Bandanna_sgg',
	'H_Bandanna_surfer',
	'H_Watchcap_blk',
	'H_Watchcap_sgg',
	'H_Watchcap_cbr',
	'H_Watchcap_khk',
	'H_Watchcap_camo',
	'H_Beret_blk',
	'H_Beret_Colonel',
	'H_Beret_02',
	'H_Booniehat_khk',
	'H_Booniehat_tan',
	'H_Booniehat_mcamo',
	'H_Booniehat_dgtl',
	'H_Hat_blue',
	'H_Hat_brown',
	'H_Hat_camo',
	'H_Hat_checker',
	'H_Hat_grey',
	'H_Hat_tan',
	'H_Cap_blk',
	'H_Cap_blu',
	'H_Cap_grn',
	'H_Cap_oli',
	'H_Cap_red',
	'H_Cap_tan',
	'H_Cap_grn_BI',
	'H_Cap_blk_CMMG',
	'H_Cap_blk_ION',
	'H_Cap_blk_Raven',
	'H_Cap_khaki_specops_UK',
	'H_Cap_tan_specops_US',
	'H_Cap_brn_SPECOPS',
	'H_ShemagOpen_khk',
	'H_ShemagOpen_tan',
	'H_Shemag_khk',
	'H_Shemag_olive',
	'H_Shemag_tan',
	'H_RacingHelmet_1_black_F',
	'H_RacingHelmet_1_blue_F',
	'H_RacingHelmet_1_green_F',
	'H_RacingHelmet_1_yellow_F',
	'H_RacingHelmet_1_orange_F',
	'H_RacingHelmet_1_red_F',
	'H_RacingHelmet_1_white_F',
	'H_RacingHelmet_1_F',
	'H_RacingHelmet_2_F',
	'H_RacingHelmet_3_F',
	'H_RacingHelmet_4_F',
	'H_HelmetSpecO_ocamo',
	'H_HelmetIA_net',
	'H_HelmetIA_camo',
	'H_BandMask_blk',
	'H_BandMask_demon',
	'H_BandMask_khk',
	'H_BandMask_reaper',
	//Apex
	'G_Balaclava_TI_blk_F',
	'G_Balaclava_TI_G_blk_F'

],true] call BIS_fnc_addVirtualItemCargo;

[missionNamespace, "arsenalOpened", {
	disableSerialization;
	_display = _this select 0;
	(_display displayCtrl 44150) ctrlRemoveAllEventHandlers "buttonclick";
	(_display displayCtrl 44150) ctrlEnable false;
	_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
	}] call BIS_fnc_addScriptedEventHandler;

				//systemChat format["Welcome %1, Enjoy your Supporter Loadout!", name player];
				//systemChat format["Bem vindo %1, Aproveite! Este Loadout será disponibilizado por tempo limitado!", name player];
				systemChat format["Bem vindo %1, Aproveite! Este Loadout será disponibilizado por tempo limitado! Obrigado por ajudar a manter o Server", name player];
		};	
	};

waitUntil {isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull])};