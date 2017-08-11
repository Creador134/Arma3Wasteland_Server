// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19

#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayDebug","_adminSelect","_debugSelect","_money","_veh"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_panelType = _this select 0;

	_displayAdmin = uiNamespace getVariable ["AdminMenu", displayNull];
	_displayDebug = uiNamespace getVariable ["DebugMenu", displayNull];

	switch (true) do
	{
		case (!isNull _displayAdmin): //Admin panel
		{
			_adminSelect = _displayAdmin displayCtrl adminMenu_option;

			switch (lbCurSel _adminSelect) do
			{
				case 0: //Target Player Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};

				case 1: //Markers log
				{
					closeDialog 0;
					createDialog "MarkerLog";
				};

				case 2: //vehicle markers
				{
					execVM "client\systems\adminPanel\tools\vehicleMarkers.sqf";
				};				

				case 3: //esp map markers
				{
					execVM "client\systems\adminPanel\tools\mapEsp.sqf";
				};

				case 4: //esp
				{
					execVM "client\systems\adminPanel\tools\igEsp.sqf";
				};				

				case 5: // toggle GM
				{
					execVM "client\systems\adminPanel\tools\togglePlayergod.sqf";
				};

				case 6: // toggle veh GM
				{
					execVM "client\systems\adminPanel\tools\toggleVehiclegod.sqf";
				};				

				case 7: // toggle invis mode
 				{
 					execVM "client\systems\adminPanel\tools\toggleInvisMode.sqf";
  				};

				case 8: //TP
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\adminTP.sqf";				
				};

     			case 9: //Unlock Base Objects within 60m
  				{
  					execVM "client\systems\adminPanel\tools\unLock.sqf"; 					
 				};

 				case 10: //Delete Unlocked Base Objects within 60m
 				{
 					execVM "client\systems\adminPanel\tools\deleteUnlocked.sqf"; 					
 				};

  				case 11: //Relock objects within 60m
 				{
 					execVM "client\systems\adminPanel\tools\reLock.sqf"; 				    
 				};

				case 12: //Money
				{
					_money = 10000;
					player setVariable ["f3ifon3oi", (player getVariable ["f3ifon3oi",0]) + 10000, true];
					CCGLogger = ["AdminLog", format["Gave himself 10k in cash [%1 (%2)]", name player, getPlayerUID player]];
					publicVariableServer "CCGLogger";
				};

				case 13: //Full Vehicle Management
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};

				case 14: //Object search menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\loadObjectSearch.sqf";
				};

				case 15: //healself
				{
					execVM "client\systems\adminPanel\tools\healSelf.sqf";
				};

				case 16: //delete vehicle
				{
					closeDialog 0;
					_x = cursorTarget;
					deleteVehicle _x;
					systemChat format["Deleted %1", _x];
					titleText [format["Object Removed!"],"PLAIN DOWN"]; titleFadeOut 4;
					CCGLogger = ["AdminLog", format["Deleted Cursor target [%1 (%2/%3)]", _x, name player, getPlayerUID player]];
					publicVariableServer "CCGLogger";									
				};

				case 17: //repair vehicle
				{
					closeDialog 0;
					_veh2 = cursorTarget;
					_veh2 setfuel 1;
					_veh2 setdamage 0;
					SystemChat "Vehicle Fixed!";
					CCGLogger = ["AdminLog", format["Repaired Cursor target [%1 (%2/%3)]", typeOf _veh2, name player, getPlayerUID player]];
					publicVariableServer "CCGLogger";									
				};

				case 18: //matt76_rockets
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\matt76_rockets.sqf";
				};

				case 19: //matt76_rockets
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\matt76_bullets.sqf";
				};	

				case 20: //gun store
				{
					closeDialog 0;
					[] call loadGunStore;
				};

				case 21: //Gen store
				{
					closeDialog 0;
					[] call loadGeneralStore;
				};

				case 22: //ATM
				{
					closeDialog 0;
					call mf_items_atm_access;
				};	

				case 23: //ai esp
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\tools\aiEsp.sqf";
				};	

				case 24: //terrain
				{
					execVM "client\systems\adminPanel\tools\terrain.sqf";
				};

				case 25: //freecam
				{
					closeDialog 0;
					if(!isNil'camerathread')then{terminate camerathread;camerathread=nil;};
					camerathread = [] spawn (uinamespace getvariable 'bis_fnc_camera');
				};

				case 26: //unlimited ammo
				{
					execVM "client\systems\adminPanel\tools\matt76_ammo.sqf";
				};

				case 27: //Spawn Beacon markers
				{
					execVM "client\systems\adminPanel\tools\spawnBeacons.sqf";
				};									
			};
		};
	};
};
