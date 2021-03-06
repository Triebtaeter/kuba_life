private["_outroCam"];

disableSerialization;
player allowDamage false;
disableUserInput true;
showChat false;
hintSilent "";

life_tagson = !true;

[LIFE_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;

1 fadeSound 0;
1 fadeMusic 0;
1 fadeRadio 0;
1 fadeSpeech 0;

(uiNamespace getVariable ["playerHUD",displayNull]) closeDisplay 0;
setViewDistance (viewDistance*1.5);

_outroCam = "camera" camCreate (player modelToWorldVisual [-5,0,1.85]);
_outroCam cameraEffect ["internal","back"];
_outroCam camSetFov 2.000;
_outroCam camSetTarget vehicle player;
_outroCam camSetRelPos [0,-1,1.85];
_outroCam camCommit 0;

waitUntil {camCommitted _outroCam};
_outroCam camSetFov 2;
_outroCam camSetRelPos [0,-5,1.85];
_outroCam camCommit 0.7;
8 cutFadeOut 3;

waitUntil {camCommitted _outroCam};
_outroCam camSetFov 9;
_outroCam camSetRelPos [0,-5,1050.85];
_outroCam camCommit 1.5;

waitUntil {camCommitted _outroCam};
cutText ["","BLACK",1];

sleep 1.25;
["<t size='1.3' color='#cc181e'>Kuba Life RPG</t><br/>Erfolgreich ausgeloggt und gespeichert! Bis demnächst! ;)<br/><br/><br/><t size='1.1'>www.Kuba-Life.de</t>",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;

sleep 3;
0 fadeSound 1;
0 fadeMusic 1;
0 fadeRadio 1;
0 fadeSpeech 1;

showChat true;
disableUserInput false;

["",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;
["Abort",true,false] spawn BIS_fnc_endMission;
_outroCam cameraEffect ["terminate","back"];
camDestroy _outroCam;
