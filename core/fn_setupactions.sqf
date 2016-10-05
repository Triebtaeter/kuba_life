/*
	File: fn_setupActions.sqf
	Author:

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
	case civilian: {
		//Drop fishing net
			life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
			(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 10 && speed (vehicle player) > -1 && player distance getMarkerPos "fisch_1" < 500 && !life_net_dropped ']];
		//Rob person
			life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
			!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "AmovPpneMstpSrasWrflDnon" && !(cursorObject getVariable["robbed",FALSE]) ']];
		// Suicide Bomb
			life_actions = life_actions + [player addAction["<t color='#FF0000'>Sprengweste zünden!</t>",life_fnc_suicideBomb,"",0,false,false,"",
			'vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !life_isSuicide && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Ausweis
			life_actions = life_actions + [player addAction["Ausweis zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorObject < 3']];
	};
	case west:
		{
			life_actions = life_actions + [player addAction["<t color='#BBBB00'>Items am Boden beschlagnahmen</t>",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']];
			//CopEnter - Driver Seat
			/*life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
			//CopEnter - Passenger Seat
			life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
			//CopEnter - Gunner Seat
			life_actions = life_actions + [player addAction[localize "STR_pAct_GunnerSeat",life_fnc_copEnter,"gunner",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
			//CopEnter - Exit
			life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];*/
			//Warner's barriers
			life_actions = life_actions + [player addAction ["<t color='#81DAF5'>Absperrungen Menü</t>",life_fnc_barriers]];
			//Ausweis
			life_actions = life_actions + [player addAction["Marke zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorObject < 3']];
		};
	case independent:
		{
			life_actions = life_actions + [player addAction ["<t color='#81DAF5'>Absperrungen Menü</t>",life_fnc_barriers]];
			//Ausweis
			life_actions = life_actions + [player addAction["Dienstausweis zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorObject < 3']];
		};
};


//life_actions pushBack (player addAction ["<img image='icons\seatOn.paa' /><t color='#BBBB00'>Anschnallen Anlegen</t>", {life_imAuto = false;}, "", 3, true, true, "", 'vehicle player isKindOf "Car" && !life_imAuto']);
//life_actions pushBack (player addAction ["<img image='icons\seatOff.paa' /><t color='#BBBB00'>Abschnallen Off</t>", {life_imAuto = true;}, "", 3, true, true, "", 'vehicle player isKindOf "Car" && life_imAuto']);
//life_actions pushBack (player addAction ["<img image='icons\seatOn.paa' /><t color='#BBBB00'>Anschnallen</t>", {life_seatbelt=true}, "", 3, false, true, "", 'vehicle player isKindOf "Car" && !life_seatbelt']);
//life_actions pushBack (player addAction ["<img image='icons\seatOff.paa' /><t color='#BBBB00'>Abschnallen</t>", {life_seatbelt=false}, "", 3, false, true, "", 'vehicle player isKindOf "Car" && life_seatbelt']);

//remove mask
//life_actions = life_actions + [player addAction["<t color='#FFB124'>Überzieher entfernen</t>",life_fnc_unmask,"",1,false,true,"",' playerSide == west OR playerSide == civilian && !isNull cursorTarget && cursorTarget getVariable "masked" && player distance cursorTarget < 3 && cursorTarget isKindOf "Man" ']];



