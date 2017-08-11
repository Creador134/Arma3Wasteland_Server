// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: spawnRandom.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap, AgentRev

disableSerialization;

private ["_switch", "_data"];
_switch = _this select 0;
_data = [_this select 1, false];

if (isNil "playerData_resetPos") then
{
	// Deal with money here
	_baseMoney = ["A3W_startingMoney", 100] call getPublicVar;
	player setVariable ["cmoney", _baseMoney, true];

	if (["A3W_survivalSystem"] call isConfigOn) then
	{
		[MF_ITEMS_CANNED_FOOD, 1] call mf_inventory_add;
		[MF_ITEMS_WATER, 1] call mf_inventory_add;
	};

	[MF_ITEMS_REPAIR_KIT, 1] call mf_inventory_add;
};

private ["_preload", "_randomLoc", "_pos", "_rad", "_townName", "_playerPos"];
_preload = param [1, false, [false]];

_randomLoc = (call cityList) call BIS_fnc_selectRandom;

_pos = getMarkerPos (_randomLoc select 0);
_rad = _randomLoc select 1;
_townName = _randomLoc select 2;


if (600 < 25) then
{
	_pos set [2, 0];
	_playerPos = [_pos,1,25,1,0,0,0] call findSafePos;
}
else
{
	_playerPos = [_pos select 0, _pos select 1, 600];
};

if (_preload) then { waitUntil {sleep 0.1; preloadCamera _playerPos} };

waitUntil {!isNil "bis_fnc_init" && {bis_fnc_init}};

player setPos _playerPos;

respawnDialogActive = false;
closeDialog 0;

_this call antiglitch;

_townName spawn
{
	_townName = _this;
	sleep 1;

	_hour = date select 3;
	_mins = date select 4;
	["Wasteland", _townName, format ["%1:%3%2", _hour, _mins, if (_mins < 10) then {"0"} else {""}]] spawn BIS_fnc_infoText;
};
