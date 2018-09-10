private _player = param[0];
//ls reveal gh1;
//ls1 reveal gh1;

smoke3 = "test_EmptyObjectForSmoke" createVehicle position fuego;
smoke3 attachTo [gh1,[0,-0.5,-0.0]];
[] spawn {
	[] spawn {
		1.5 fadeMusic 0;
		sleep 0.5;
		playMusic ["LeadTrack02_F_EPC", 45.8];
		1.5 fadeMusic 1
	};


	//ls doTarget gh1;
	//ls1 doTarget gh1;
	gh1 vehicleChat "NOS DIERON, ¡SUJÉTENSE!, INTENTAREMOS ATERRIZARLO!";

	sleep 2;
	gh1 setdamage 0.85;



	[] spawn {
		sleep 3.2;
		gh1 setHitPointDamage ["HitVRotor", 1]; // Destruye el rotor tracero
		//{deleteVehicle _x} forEach (crew ls);
		//deleteVehicle ls;
		//{deleteVehicle _x} forEach (crew ls1);
		//deleteVehicle ls1;
		sleep 5;
		fire7 = "test_EmptyObjectForFireBig" createVehicle position fuego;
		fire7 attachTo [gh1,[0,-0.8,-0.0]];
		gh1 vehicleChat "¡HEMOS PERDIDO AMBOS MOTORES!";
		gh1 setfuel 0;
		sleep 10;
		gh1 vehicleChat "¡SI SOBREVIVIMOS AL IMPACTO, NO SE QUEDEN CERCA DEL HELICÓPTERO!";
		sleep 5;
		fire8 = "test_EmptyObjectForFireBig" createVehicle position fuego;
		sleep 15;
		fire8 attachTo [gh1,[0,3.5,-2.0]];
		//p4 setdamage 1;
		sleep 20;
		gh1 setdamage 1;
		smoke3 attachTo [fuego,[0,0,-0.0]];
		_bm1 = "HelicopterExploBig" createVehicle position gh1;
		sleep 30;
		fire7 attachTo [fuego,[0,0,-0.0]];
		fire8 attachTo [fuego,[0,0,-0.0]];
		//sleep 20;
		//_bm2 = "HelicopterExploBig" createVehicle position gh1;
		//deletevehicle gh1;

	};


};


//_cnt = {alive _x} count allUnits;
