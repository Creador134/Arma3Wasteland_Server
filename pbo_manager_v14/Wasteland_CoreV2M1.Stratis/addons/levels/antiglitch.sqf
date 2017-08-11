// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: antiglitch.sqf v2.0
//	@file Author: Matt76 @CCG

Private _goodGuns = [
	'arifle_CTAR_blk_F',
	"srifle_EBR_F",
	"srifle_DMR_06_olive_F",
	'arifle_CTAR_hex_F',
	'arifle_CTAR_ghex_F',
	'arifle_CTAR_GL_blk_F',
	'arifle_CTAR_GL_hex_F',
	'arifle_CTAR_GL_ghex_F',
	'arifle_CTAR_blk_ACO_Pointer_F', // optic_ACO_grn / acc_pointer_IR
	'arifle_CTAR_blk_Pointer_F', // acc_pointer_IR
	'arifle_CTAR_blk_ACO_F', // optic_ACO_grn 
	'arifle_CTAR_GL_blk_ACO_F', // optic_ACO_grn
	'arifle_CTAR_GL_blk_ARCO_Pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	'arifle_CTAR_blk_ARCO_Pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	//'arifle_CTAR_blk_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_58_blk_F
	//'arifle_CTAR_GL_blk_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_58_blk_F
	//'arifle_CTAR_blk_ARCO_Pointer_Snds_F', // optic_Arco_blk_F / acc_pointer_IR / muzzle_snds_58_blk_F
	'arifle_CTAR_blk_ARCO_F', // optic_Arco_blk_F
	'arifle_MX_SW_khk_F',
	'arifle_MX_Black_F',
	'arifle_MX_GL_Black_F',
	'arifle_MX_SW_Black_F',
	'arifle_MX_khk_F', 
	'arifle_MX_khk_ACO_Pointer_F', // optic_Aco / acc_pointer_IR
	'arifle_MX_GL_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_SW_Black_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
	'arifle_MX_SW_khk_Pointer_F', // acc_pointer_IR
	'arifle_MX_F',
	'arifle_MX_GL_F',
	'arifle_MX_SW_F',
	'arifle_MX_pointer_F',
	'arifle_MX_Holo_pointer_F', // optic_Holosight / acc_pointer_IR
	'arifle_MX_Hamr_pointer_F', // optic_Holosight / acc_pointer_IR
	'arifle_MX_ACO_pointer_F', // optic_Aco / acc_pointer_IR
	'arifle_MX_ACO_F', // optic_Aco
	'arifle_MX_GL_ACO_F', // optic_Aco
	'arifle_MX_GL_ACO_pointer_F', // optic_Aco / acc_pointer_IR
	'arifle_MX_GL_Hamr_pointer_F', // optic_Hamr / acc_pointer_IR
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
	'arifle_ARX_hex_ARCO_Pointer_Snds_F', // optic_Arco / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	'arifle_ARX_ghex_ARCO_Pointer_Snds_F', // optic_Arco / acc_pointer_IR / muzzle_snds_65_TI_ghex_F 
	'arifle_ARX_hex_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	'arifle_ARX_ghex_ACO_Pointer_Snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_65_TI_ghex_F
	'arifle_ARX_hex_DMS_Pointer_Snds_Bipod_F', // optic_DMS / acc_pointer_IR / muzzle_snds_65_TI_hex_F
	'arifle_ARX_ghex_DMS_Pointer_Snds_Bipod_F', // optic_DMS_ghex_F / acc_pointer_IR / muzzle_snds_65_TI_ghex_F
	'arifle_ARX_Viper_F', // optic_Arco_ghex_F
	'arifle_ARX_Viper_hex_F', // optic_Arco
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
	'arifle_Katiba_GL_ARCO_pointer_F', // optic_Arco_blk_F / acc_pointer_IR
	//'arifle_Katiba_GL_Nstalker_pointer_F' // optic_Nightstalker / acc_pointer_IR
	'arifle_Katiba_GL_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
	'arifle_Katiba_C_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
	'arifle_Katiba_ACO_pointer_snds_F', // optic_ACO_grn / acc_pointer_IR / muzzle_snds_H
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
	'arifle_SPAR_01_GL_blk_ERCO_Pointer_F', // optic_ERCO_blk_F / acc_pointer_IR
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
	];
private _player_weapons = (weapons player);

// Lowercase everything
{
    _goodGuns set [_forEachIndex,toLower(_x)];
} forEach _goodGuns;
{
    _player_weapons set [_forEachIndex,toLower(_x)];
} forEach _player_weapons;
//diag_log format ["DEBUG: _player_weapons %1", _player_weapons];

private _badguns_count = {!(_x in _goodGuns)} count _player_weapons;
//diag_log format ["DEBUG: _goodGuns %1", _goodGuns];
if (_badguns_count >0) then 
{
		//diag_log format ["DEBUG: _badguns_count %1", _badguns_count];
		CCGLogger = ["GLITCH_LOG", format["Player has tried to glitch a Restricted VA Weapon(s), player [%1 (%2) All weapons have been removed [ %3 ]]", name player, getPlayerUID player, weapons player]];
		publicVariableServer "CCGLogger";

		removeAllWeapons player;
		playSound "FD_CP_Not_Clear_F";

		cutText ["Use somente Armas liberadas no Arsenal Virtual TEAM CORE SERVER","BLACK", 2];
		sleep 10;
		cutText ["", "BLACK IN"];	
};
////////////////////////////////////////////////////////////////////////

private _badattachments = [
	'optic_tws', 
	'optic_tws_mg', 
	'optic_Nightstalker',
	//silencers
	'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan'
   ];
{
	if (_x in _badattachments) then {		
		
		player removePrimaryWeaponItem _x;
		hint format["%1 seu SCOPE ou SILENCIADOR foram retirados de sua arma e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];	
	};
} forEach (primaryWeaponItems player);
////////////////////////////////////////////////////////////////////////

private _badbackpack = ['B_Bergen_tna_F',
                        'B_Bergen_mcamo_F',
						'B_Bergen_hex_F',
						'B_Bergen_dgtl_F',
						'B_UAV_01_backpack_F',
						'O_UAV_01_backpack_F',
						'B_Carryall_khk',
						"B_Carryall_cbr",
						"B_Carryall_mcamo",
						"B_Carryall_oli",
						"B_Carryall_oucamo",
						"B_Carryall_ocamo",
						"B_Carryall_ghex_F",
					    'B_ViperHarness_blk_F',
					    'B_ViperHarness_hex_F',
					    'B_ViperHarness_ghex_F',
					    'B_ViperHarness_khk_F',
					    'B_ViperHarness_oli_F',
						'I_UAV_01_backpack_F'];

	if (backpack player in _badbackpack) then {
	
		CCGLogger = ["GLITCH_LOG", format["Restricted Backpack removed from [%1 (%2) Backpack [ %3 ]]", name player, getPlayerUID player, backpack player]];
		publicVariableServer "CCGLogger";
		removeBackpackGlobal player;
		hint format["%1 sua mochila foi removida e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];		
	};	
////////////////////////////////////////////////////////////////////////

private _baditembackpack = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					 
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	 //silencers
	 'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'							 
	];
{
	if (_x in _baditembackpack) then {
		
		player removeItemFromBackpack _x;
		hint format["%1 o item restrito foi retirado de sua mochila e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];			
	};
} forEach (backpackItems player);
////////////////////////////////////////////////////////////////////////

private _badvest = ['V_PlateCarrierL_CTRG','V_PlateCarrierH_CTRG','V_PlateCarrierSpec_rgr','V_PlateCarrierSpec_blk','V_PlateCarrierSpec_mtp','V_PlateCarrierGL_tna_F','V_PlateCarrierSpec_tna_F','V_PlateCarrier1_tna_F','V_PlateCarrier2_tna_F','V_PlateCarrier1_rgr_noflag_F','V_PlateCarrier2_rgr_noflag_F'];

	If (vest player in _badvest) then {
	
		removeVest player;
		hint format["%1 seu colete foi removido e esta ação foi logada no nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];		
	};	
////////////////////////////////////////////////////////////////////////

private _badvestitems = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	//silencers
	'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'	
	];
{
	if (_x in _badvestitems) then {
		
		player removeItemFromVest _x;
		hint format["%1 o item restrito foi retirado de seu colete e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];	
	};
} forEach (vestItems player);
////////////////////////////////////////////////////////////////////////

private _baduniformitem = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					   
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	//silencers
	'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'								   
	];
{
	if (_x in _baduniformitem) then {
		
		player removeItemFromUniform _x;
		hint format["%1 o item restrito foi retirado de seu uniforme, esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];			
	};
} forEach (uniformItems player);
////////////////////////////////////////////////////////////////////////

private _badgoggles = ['NVGogglesB_grn_F','NVGogglesB_gry_F','NVGogglesB_blk_F'];

	If (hmd player in _badgoggles) then {
	
		CCGLogger = ["GLITCH_LOG", format["Restricted NVGoogles removed from [%1 (%2) GogglesRemoved [ %3 ]]", name player, getPlayerUID player, hmd player]];
		publicVariableServer "CCGLogger";
		player unlinkItem hmd player;
			if (damage player < 1) then // if check required to prevent "Killed" EH from getting triggered twice
			{
				player setVariable ["A3W_deathCause_remote", ["forcekill",serverTime], true];
				player setVariable["f3ifon3oi",0,true];
				player setDamage 1;
			};
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","BLACK", 2];
		sleep 10;
		cutText ["", "BLACK IN"];					
	};
////////////////////////////////////////////////////////////////////////

private _badheadgear = ['H_CrewHelmetHeli_B','H_CrewHelmetHeli_O','H_CrewHelmetHeli_I','H_HelmetO_ViperSP_ghex_F','H_HelmetO_ViperSP_hex_F','H_HelmetB_Enh_tna_F','H_HelmetSpecO_ghex_F','H_HelmetLeaderO_ghex_F','H_HelmetO_ghex_F','H_HelmetCrew_O_ghex_F','H_HelmetB_TI_tna_F'];

	If (headgear player in _badheadgear) then {
	
		CCGLogger = ["GLITCH_LOG", format["Restricted headgear removed from [%1 (%2) HeadGear [ %3 ]]", name player, getPlayerUID player, headgear player]];
		publicVariableServer "CCGLogger";
		removeheadgear player;
			if (damage player < 1) then // if check required to prevent "Killed" EH from getting triggered twice
			{
				player setVariable ["A3W_deathCause_remote", ["forcekill",serverTime], true];
				player setVariable["f3ifon3oi",0,true];
				player setDamage 1;
			};
		hint format["%1 vc foi morto por usar um item proibido e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];
	};
////////////////////////////////////////////////////////////////////////

private _baduniform = ['U_B_Protagonist_VR','U_O_Protagonist_VR','U_I_Protagonist_VR','U_B_Soldier_VR','U_O_Soldier_VR','U_I_Soldier_VR','U_C_Soldier_VR','U_B_FullGhillie_ard','U_O_FullGhillie_ard','U_I_FullGhillie_ard','U_B_FullGhillie_lsh','U_O_FullGhillie_lsh',
'U_I_FullGhillie_lsh','U_B_FullGhillie_sard','U_O_FullGhillie_sard','U_O_T_FullGhillie_tna_F','U_O_V_Soldier_Viper_hex_F','U_O_V_Soldier_Viper_F','U_B_T_FullGhillie_tna_F','U_I_FullGhillie_sard'];

	If (uniform player in _baduniform) then {
	
		removeUniform player;
		hint format["%1 Seu uniforme foi removido e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];				
	};	

////////////////////////////////////////////////////////////////////////	