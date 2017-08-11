// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: UniformPainter_ownerMenu.sqf
//	@file Author: LouD / Cael817 for original script
//	@file Description: Paint script

#define Paint_Menu_option 17001
disableSerialization;

private ["_start","_panelOptions","_Paint_select","_displayPaint"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "Paint_Menu";

	_displayPaint = uiNamespace getVariable "Paint_Menu";
	_Paint_select = _displayPaint displayCtrl Paint_Menu_option;

	_panelOptions = 
	[
		"NATO Tan ($ 1,500)",
		"CSAT Brown ($ 1,500)",
		"AAF Green ($ 1,500)",
		"Bloodshot ($ 1,500)",
		"Swamp ($ 1,500)",
		"Urban ($ 1,500)",
		"Orange Camo ($ 1,500)",
		"Pink Camo ($ 1,500)",
		"Red Camo ($ 1,500)",
		"Digital ($ 1,500)",
		"Digital Black ($ 1,500)",
		"Digital Desert ($ 1,500)",
		"Digital Wood ($ 1,500)",
		"Woodland ($ 1,500)",
		"Woodland Dark ($1,500)",
		"Woodland Tiger ($ 1,500)",
		"Hex ($ 1,500)",
		"Hello Kitty ($ 1,500)",
		"Leopard ($ 1,500)",
		"Murica ($ 1,500)",
		"Nazi ($ 1,500)",
		"ISIS ($ 1,500)"
	];

	{
		_Paint_select lbAdd _x;
	} forEach _panelOptions;
};

