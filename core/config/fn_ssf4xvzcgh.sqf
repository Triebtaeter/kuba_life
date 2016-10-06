/*
PROPERTY OF THE Code Red Gaming DO NOT ATTEMPT TO STEAL CONTENT
*/

if(playerSide != civilian) exitWith {};
private ["_camera", "_camDistance","_randCamY","_randCamZ","_camTime"];

_camDistance = 700;
_randCamY = 75 - floor(random 150);
_randCamZ = 75 - floor(random 150);
playsound "intro";
_onScreenTime = 4;

_role1 = "Willkommen";
_role1names = ["Willkommen bei Kuba Life RPG!"];

{_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='1.00' color='#3399ff' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[_finalText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
} forEach [[_role1, _role1names]];

_camTime = 15;
_camera = "camera" camCreate [4440.2,11716.15,15];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;
_camera camCommit 0;

waitUntil {camCommitted _camera};
_camera camSetTarget [4820.04,11577,20];
_camera camSetRelPos [0,0,0];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
_onScreenTime = 3;

_role1 = "Website:";
_role1names = ["www.kuba-life.de"];
{_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='1.0' color='#3399ff' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[_finalText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
} forEach [[_role1, _role1names]];

_camTime = 7;
_camera = "camera" camCreate [5440.73,11416,30];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;
_camera camCommit 0;

waitUntil {camCommitted _camera};
_camera camSetTarget [5720.73,11205,35];
_camera camSetRelPos [0,0,0];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;

_role1 = "Teamspeak:";
_role1names = ["89.163.132.28"];
{_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='1.0' color='#3399ff' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[_finalText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
} forEach [[_role1, _role1names]];

_camTime = 7;
_camera = "camera" camCreate [5960.2,10970.2,20];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;
_camera camCommit 0;

waitUntil {camCommitted _camera};
_camera camSetTarget [5740.4,10790.28,20];
_camera camSetRelPos [0,0,0];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;

_role1 = "Du möchtest Polizist werden?";
_role1names = ["Bewirb dich unter www.kuba-life.de!"];
{_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='1.0' color='#3399ff' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[_finalText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
} forEach [[_role1, _role1names]];

_camTime = 7;
_camera = "camera" camCreate [5630.11,10500.9,20];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;
_camera camCommit 0;

waitUntil {camCommitted _camera};
_camera camSetTarget [5620.12,10246.10,20];
_camera camSetRelPos [0,0,0];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;

_role1 = "";
_role1names = ["Achtet stets auf die Regeln, nun habt Spaß :)"];
{_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='1.0' color='#FFFFFF' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[_finalText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
} forEach [[_role1, _role1names]];

_camTime = 4;
_camera = "camera" camCreate [(position player select 0), (position player select 1),(position player select 2)+500];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;
_camera camCommit 0;waitUntil {camCommitted _camera};
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit _camTime;
waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
life_firstSpawn = false;

[] call life_fnc_InfoMenu;
