
puntos = _this select 0; //Cantidad de puntos que suma
tipo   = _this select 1; //Tipo de objetivo, 1 = primario, 2 = secundario, 3 = tarea.

//Separa el caso para cada tipo

switch tipo do 
{
  	case 1: //OBJ 1
  	{
		objetivoPrimarioUno = puntos;
		publicVariable "objetivoPrimarioUno";
		["objPrimUno", ["Bomba desactivada. Reciben 10 Puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
  	};

	case 2: //OBJ 2
 	{
		objetivoPrimarioDos = puntos;
		publicVariable "objetivoPrimarioDos";
		["objPrimDos", ["Camión con artefacto En base. Reciben 10 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
  	};

 	case 3: // OBJ secundaria 1
 	{
		objetivoSecundarioUno = puntos;
		publicVariable "objetivoSecundarioUno";
		["objSecondOne",["Archivos adquiridos. Reciben 8 Puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
  	};

  	case 4: // tarea 1
  	{	
		if (!FAM_granDamage) then {
			
			objetivoTareaUno = puntos;
			publicVariable "objetivoTareaUno";
			["tareaUno", ["Llego vehiculo sin daños. Reciben 3 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
			dispo1 allowDamage false;
			publicVariable "dispo1";

		} else {
			if (FAM_granDamage) then { 
				objetivoTareaUno = puntos - 3;
				["tareaUnoF", ["Camión Recibe daño importante, Tarea Fallida. No reciben Puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
			};
		};
				
  	};

	case 5: // tarea 2
  	{	
		
		objetivoTareaDos = puntos;
		publicVariable "objetivoTareaDos";
		["tareaDos", ["Rehenes Rescatados. Reciben 1 Punto!"]] remoteExecCall ["BIS_fnc_showNotification"];

  	};

	case 6: // tarea 3
  	{	
		
		objetivoTareaTres = puntos;
		publicVariable "objetivoTareaTres";
		["tareaTres", ["30 Enemigos Muertos. Reciben 2 Puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];

	};

	case 7: //Vehiculo 1
	{
		
		vehPrimero = puntos;
		publicVariable "vehPrimero";
		["veh1", ["Vehiculo Aliado inhabilitado. Pierden -2 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};

	case 8: //Vehiculo 2
	{
		
		vehSegundo = puntos;
		publicVariable "vehSegundo";
		["veh2", ["Vehiculo Aliado inhabilitado. Pierden -2 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};

	case 9: //Vehiculo 3
	{
		
		vehTercero = puntos;
		publicVariable "vehTercero";
		["veh3", ["Helicoptero Aliado inhabilitado. Pierden -2 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};
	
	case 10: //Vehiculo 4
	{
		
		vehCuarto = puntos;
		publicVariable "vehCuarto";
		["veh4", ["Vehiculo Aliado inhabilitado. Pierden -2 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};
	
	case 11: //Muerte Miembro equipo
	{
		
		JugadorMuerto = JugadorMuerto + puntos;
		publicVariable "JugadorMuerto";
		["JugadorDead", ["Ha muerto un miembro del equipo. Pierden -1 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};

	case 12: //Civiles muertos
	{
		civilMuerto = civilMuerto + puntos;
		publicVariable "civilMuerto";
		["Civil", ["Han matado un Civil. Pierden -2 puntos!"]] remoteExecCall ["BIS_fnc_showNotification"];
	};
	
};
