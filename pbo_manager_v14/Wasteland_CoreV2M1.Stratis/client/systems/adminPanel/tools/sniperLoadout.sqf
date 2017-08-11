_uid = getPlayerUID player;

if (_uid call isAdmin) then {

		fn_spawnLoadout_snipar = {
			
			_SniperLOADOUT = player;
 
			removeAllWeapons _SniperLOADOUT;
			//removeAllUniform _SniperLOADOUT;
			removeAllItems _SniperLOADOUT;
			removebackpack _SniperLOADOUT;
			removeAllAssignedItems _SniperLOADOUT;
			removeGoggles _SniperLOADOUT;
			removeHeadgear _SniperLOADOUT;
 
			_SniperLOADOUT addHeadgear "H_HelmetLeaderO_oucamo";
			_SniperLOADOUT addGoggles "G_Sport_Blackred";
			//_SniperLOADOUT addUniform  "U_O_FullGhillie_sard";
			_SniperLOADOUT addVest "V_PlateCarrierSpec_mtp";
			_SniperLOADOUT addBackpack "B_Bergen_mcamo_F";
			_SniperLOADOUT addWeapon "NVGoggles";
			_SniperLOADOUT addWeapon "Rangefinder";
 
			_SniperLOADOUT addMagazine "10Rnd_93x64_DMR_05_Mag";
			_SniperLOADOUT addMagazine "10Rnd_93x64_DMR_05_Mag";
			_SniperLOADOUT addweapon "srifle_DMR_05_tan_f";
			_SniperLOADOUT addPrimaryWeaponItem "muzzle_snds_93mmg_tan";
			_SniperLOADOUT addPrimaryWeaponItem "bipod_02_F_tan";
			_SniperLOADOUT addPrimaryWeaponItem "optic_DMS";
			_SniperLOADOUT addPrimaryWeaponItem "acc_pointer_IR";
 
			_SniperLOADOUT addWeaponGlobal "ItemCompass";
			_SniperLOADOUT addWeaponGlobal "ItemMap";
			_SniperLOADOUT addWeaponGlobal "Itemgps";
 
			(unitBackpack _SniperLOADOUT) additemCargo["FirstAidKit", 5];
			(unitBackpack _SniperLOADOUT) additemCargo["10Rnd_93x64_DMR_05_Mag", 3];
			(unitBackpack _SniperLOADOUT) additemCargo["optic_LRPS", 1];

        };
    [] spawn fn_spawnLoadout_snipar;
    hint format ["Sniper Loadout added to admin %1", name player];
};        


   