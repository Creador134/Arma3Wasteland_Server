// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.2
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [GoT] JoSchaap, AgentRev
//	@file Description: The main init.

#include "debugFlag.hpp"

#ifdef A3W_DEBUG
#define DEBUG true
#else
#define DEBUG false
#endif

enableSaving [false, false];

// block script injection exploit
inGameUISetEventHandler ["PrevAction", ""];
inGameUISetEventHandler ["Action", ""];
inGameUISetEventHandler ["NextAction", ""];

_descExtPath = str missionConfigFile;
currMissionDir = compileFinal str (_descExtPath select [0, count _descExtPath - 15]);

X_Server = false;
X_Client = false;
X_JIP = false;

/*CHVD_allowNoGrass = false;
CHVD_allowTerrain = false; // terrain option has been disabled out from the menu due to terrible code, this variable has currently no effect
CHVD_maxView = 3000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 3000;*/ // Set maximimum object view distance (default: 12000)

// versionName = ""; // Set in STR_WL_WelcomeToWasteland in stringtable.xml

if (isServer) then { X_Server = true };
if (!isDedicated) then { X_Client = true };
if (isNull player) then { X_JIP = true };

A3W_scriptThreads = [];

[DEBUG] call compile preprocessFileLineNumbers "globalCompile.sqf";

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "storeConfig.sqf"; // Separated as its now v large
[] execVM "briefing.sqf";

if (!isDedicated) then
{
	[] spawn
	{
		if (hasInterface) then // Normal player
		{
			9999 cutText ["Bem vindo ao Olympus Server A3Wasteland, por favor espere o client inicializar", "BLACK", 0.01];

			waitUntil {!isNull player};
			player setVariable ["playerSpawning", true, true];
			playerSpawning = true;

			removeAllWeapons player;
			client_initEH = player addEventHandler ["Respawn", { removeAllWeapons (_this select 0) }];

			// Reset group & side
			[player] joinSilent createGroup playerSide;

			execVM "client\init.sqf";

			if ((vehicleVarName player) select [0,17] == "BIS_fnc_objectVar") then { player setVehicleVarName "" }; // undo useless crap added by BIS
		}
		else // Headless
		{
			waitUntil {!isNull player};
			if (getText (configFile >> "CfgVehicles" >> typeOf player >> "simulation") == "headlessclient") then
			{
				execVM "client\headless\init.sqf";
			};
		};
	};
};

if (isServer) then
{
	diag_log format ["############################# %1 #############################", missionName];
	diag_log "Olympus Server - Inizializando Servidor";
	[] execVM "server\init.sqf";
};

if (hasInterface || isServer) then
{
	//init 3rd Party Scripts
	[] execVM "addons\parking\functions.sqf";
	[] execVM "addons\storage\functions.sqf";
	[] execVM "addons\vactions\functions.sqf";
	[] execVM "addons\APOC_Airdrop_Assistance\init.sqf";
	[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
	[] execVM "addons\JumpMF\init.sqf";
	[] execVM "addons\JTS_PM\Functions.sqf";
	[] execVM "addons\outlw_magrepack\MagRepack_init.sqf";
	[] execVM "addons\lsd_nvg\init.sqf";
	[] execVM "addons\stickyCharges\init.sqf";
	if (isNil "drn_DynamicWeather_MainThread") then { drn_DynamicWeather_MainThread = [] execVM "addons\scripts\DynamicWeatherEffects.sqf" };
	[] execVM "addons\bounty\init.sqf";
	[] execVM "addons\scripts\HvT.sqf"; // High Value Target
	[] execVM "addons\Grenades\initGrenades.sqf";            // Toxic Gas, smokerYellow and GLsmokerRed
	[] execVM "addons\statusBar\statusbar.sqf";              // Status do FPS LR
	[] execVM "addons\scripts\effect.sqf";                   // Melhoria de grafico do arma
	[] execVM "addons\scripts\trader.sqf";                 // Trader
	[] ExecVM "scarCODE\ServerInfoMenu\sqf\initLocal.sqf"; // scarCODE ServerInfoMenu
	[] execVM "addons\timedrestart\timed_restart.sqf";
	[] execVM "addons\ScarCode\sRestartWarnings.sqf";
};

// Server restart message
"RM_DISPLAYTEXT_PUBVAR" addPublicVariableEventHandler {(_this select 1) spawn BIS_fnc_dynamicText;};

// Remove line drawings from map
(createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
[
	"!triggerActivated thisTrigger",
	"thisTrigger setTriggerTimeout [30,30,30,false]",
	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
];
if (!(isServer)) then

{
ClientPreComp_AnnounceMessages = compileFinal preprocessFileLineNumbers "addons\announceMessages\client_AnnounceMessages.sqf";

[] call ClientPreComp_AnnounceMessages;
};