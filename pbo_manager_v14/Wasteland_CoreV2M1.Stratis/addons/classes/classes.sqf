// Kit Loadouts Start here

	switch (true) do
		{
		case (["_sniper_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;

			_player addWeapon "srifle_EBR_F";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addItemToUniform "20Rnd_762x51_Mag";
			_player addItemToUniform "20Rnd_762x51_Mag";
			_player addPrimaryWeaponItem "optic_SOS";
			_player addBackpack "B_FieldPack_oli",;
			_player addVest "V_Chestrig_rgr";
			_player addItemToVest "20Rnd_762x51_Mag";
			_player addItemToVest "SmokeShell";
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addWeapon "Rangefinder";
			_player addHeadgear "H_Bandanna_mcamo";
			_player addItem "FirstAidKit";
			_player addItem "FirstAidKit";
			_player linkItem "ItemMap";
			_player linkItem "ItemCompass";
			_player linkItem "ItemWatch";
			_player linkItem "ItemRadio";
			_player linkItem "NVGoggles_OPFOR";
			};

		case (["_diver_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;
			_player addWeapon "arifle_MX_Black_F";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "30Rnd_65x39_caseless_mag";
			_player addItemToUniform "30Rnd_65x39_caseless_mag";
			_player addItemToUniform "30Rnd_65x39_caseless_mag";
			_player addPrimaryWeaponItem "muzzle_snds_H";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addItemToUniform "16Rnd_9x21_Mag";
			_player addItemToUniform "16Rnd_9x21_Mag";
			_player addVest "V_RebreatherIA";
			_player addBackpack "B_FieldPack_blk";
			_player addItem "FirstAidKit";
			_player addItemToBackpack "SmokeShell";
			_player addHeadgear "H_Bandanna_mcamo";
			_player addGoggles "G_Diving";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addWeapon "Binocular";
			_player linkItem "ItemMap";
			_player linkItem "ItemCompass";
			_player linkItem "ItemWatch";
			_player linkItem "ItemRadio";
			_player linkItem "NVGoggles_OPFOR";
			};

		case (["_medic_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;
			_player forceAddUniform "U_IG_Guerrilla_6_1";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addVest "V_Chestrig_rgr";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "SmokeShell";
			_player addBackpack "B_FieldPack_oli";
			_player addItemToBackpack "Medikit";
			_player addHeadgear "H_Bandanna_khk_hs";
			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addWeapon "Binocular";
			_player linkItem "ItemMap";
			_player linkItem "ItemCompass";
			_player linkItem "ItemWatch";
			_player linkItem "ItemRadio";
			_player linkItem "NVGoggles_OPFOR";
			};

		case (["_engineer_", typeOf _player] call fn_findString != -1):
			{

			removeBackpack _player;
			removeAllWeapons _player;
			_player forceAddUniform "U_I_pilotCoveralls";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addVest "V_Chestrig_rgr";
			_player addItemToVest "SmokeShell";
			_player addItemToVest "100Rnd_65x39_caseless_mag";
			_player addItemToVest "100Rnd_65x39_caseless_mag";
			_player addBackpack "B_FieldPack_oli";
			_player addItemToBackpack "ToolKit";			
			_player addHeadgear "H_Watchcap_khk";
			_player addWeapon "arifle_MX_SW_F";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addWeapon "Binocular";
			_player linkItem "ItemMap";
			_player linkItem "ItemCompass";
			_player linkItem "ItemWatch";
			_player linkItem "ItemRadio";
			_player linkItem "NVGoggles_OPFOR";
			};

		case (["_crew_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;
			_player addVest "V_HarnessOGL_gry";
			_player forceAddUniform "U_I_G_resistanceLeader_F";
			_player addBackpack "B_AssaultPack_cbr";
			_player addItemToVest "MineDetector";
			_player addItemtoBackpack "SatchelCharge_Remote_Mag";
			_player addItemtoBackpack "SatchelCharge_Remote_Mag";
			_player addItemtoBackpack "SatchelCharge_Remote_Mag";
			_player addMagazine "6Rnd_45ACP_Cylinder";
			_player addMagazine "6Rnd_45ACP_Cylinder";
			_player addMagazine "6Rnd_45ACP_Cylinder";
			_player addWeapon "hgun_Pistol_heavy_02_F";
			_player addHeadgear "H_ShemagOpen_tan";
			};


			case (["_soldier_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;
			_player forceAddUniform "U_I_CombatUniform";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addItemToUniform "11Rnd_45ACP_Mag";
			_player addVest "V_PlateCarrierIA1_dgtl";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "30Rnd_65x39_caseless_green";
			_player addItemToVest "HandGrenade";
			_player addItemToVest "HandGrenade";
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShell";
			_player addBackpack "B_TacticalPack_blk";
			_player addItemToBackpack "Medikit";
			_player addHeadgear "H_HelmetB";
			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addWeapon "hgun_Pistol_heavy_01_F";
			_player addWeapon "Rangefinder";
			_player linkItem "ItemMap";
			_player linkItem "ItemCompass";
			_player linkItem "ItemWatch";
			_player linkItem "ItemRadio";
			_player linkItem "NVGoggles_OPFOR";
			};


			case (["_officer_", typeOf _player] call fn_findString != -1):
			{
			removeBackpack _player;
			removeAllWeapons _player;
			_player addVest "V_PlateCarrier1_blk";
			_player addBackpack "B_AssaultPack_blk";
			_player forceAddUniform "U_B_PilotCoveralls";
			_player addItem "SmokeShellYellow";
			_player addItem "SmokeShellYellow";
			_player addItem "SmokeShellYellow";
			_player addItem "SmokeShellYellow";
			_player addItem "FirstAidKit";
			_player addItem "FirstAidKit";
			_player addMagazine "130Rnd_338_Mag";
			_player addWeapon "MMG_02_black_F";
			_player addPrimaryWeaponItem "optic_aco_smg";
			_player addPrimaryWeaponItem "bipod_01_F_blk";
			_player addHeadgear "H_PilotHelmetFighter_B";
			};

			default
			{};
		};