	// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: adminTP.sqf 
//	@file Author: Matt76 @CCG

_uid = getPlayerUID player;

if (_uid call isAdmin) then {

	if (vehicle player isKindOf "air") then
	{	
		openMap [true, false];
		cutText ["CLICK ON THE MAP TO TP","PLAIN", 2];	
		onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call ccgadminTPair";

		ccgadminTPair = {

		_posAir = [_this select 0, _this select 1, (getPosASL player select 2)+100];
	
		_aim = (vehicle player);
		if ((_aim isKindOf "AllVehicles") || (_aim isKindOf "Man")) then
		{
			_aim setPosASL _posAir;
		};
	
		onMapSingleClick "";
		openMap [false, false];
		
		CCGLogger = ["AdminLog", format["Admin %1 (%2) TP'd to GPS Position (%3)", name player, getPlayerUID player, mapGridPosition player]];
		publicVariableServer "CCGLogger";		
		};
	}
	else
	{
		openMap [true, false];
		cutText ["CLICK ON THE MAP TO TP","PLAIN", 2];	
		onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call ccgAdminTP";

		ccgAdminTP = {

		_pos = [_this select 0, _this select 1, _this select 2];

		_aim = (vehicle player);
		if ((_aim isKindOf "AllVehicles") || (_aim isKindOf "Man")) then
		{
			_aim setPosASL _pos;
		};
	
		onMapSingleClick "";
		openMap [false, false];
		
		CCGLogger = ["AdminLog", format["Admin %1 (%2) TP'd to GPS Position (%3)", name player, getPlayerUID player, mapGridPosition player]];
		publicVariableServer "CCGLogger";
		};
	};
};