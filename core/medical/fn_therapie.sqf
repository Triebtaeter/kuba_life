/*
----------------------------------------------|
Author: Backer
Description: Set the drug level to 0 !
----------------------------------------------|
*/

private["_medic","_player"];
_medic = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _medic) exitWith {};
if(!alive player) exitWith {};
if(!alive _medic) exitWith {};

if (life_drug > 0) then
{
life_drug = 0;
hint "Du wurdest erfolgreich behandelt!";
}else{
hint "Oh... Sorry da weiss ich auch nicht weiter.!";

};
