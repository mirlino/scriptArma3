/*
*@Author:  |ArgA|Redburn
*@Creado:  11/08/2018
*@Version: 1.0
*
*/
/*
******* Grupo de Cazadores *****

https://community.bistudio.com/wiki/SQF_syntax
No intente abrir esto con el simple bloc de notas.
Para todo lo que sea con comentario // al frente o entre / *
significa que está deshabilitado, por lo que no es necesario eliminar las líneas adicionales.

Puede abrir este con:
notepad++
https://notepad-plus-plus.org/

y también usa los pluggins extra
(de esta manera será mejor, también dará algunos colores para poder detectar problemas)
http://www.armaholic.com/page.php?id=8680

o usa cualquier otro programa para editar.

Para la Lista de compilación de mis scripts GF, puede buscar en:
https://foro.clanarga.com.ar/viewtopic.php?f=53&t=1590
*/


red_Jugadores_Cazados = allUnits select {isPlayer _x && {!(_x isKindOf "HeadlessClient_F")}};
red_Jugadores_Cazados_seleccionados = red_Jugadores_Cazados call BIS_fnc_selectRandom;

//hint format ["red_Jugadores_Cazados    %1 ",red_Jugadores_Cazados_seleccionados];
//systemchat format ["red_Jugadores_Cazados    %1 ",red_Jugadores_Cazados_seleccionados];


red_Grupo_Cazadores_Tiempo_Aparicion = 40;	//	Tiempo de espera antes de la proxima aparicion de Cazadores enemigos

[] spawn {
	while {true} do {
    _tiempo = diag_tickTime + 1;
    _i = 0;
    waitUntil {
		sleep red_Grupo_Cazadores_Tiempo_Aparicion;
        _i = _i + 1;

        diag_tickTime >= _tiempo
    };
[] execVM "Perseguidores.sqf";

	};
};


[] spawn {
	while {true} do {
    _tiempo = diag_tickTime + 1;
    _i = 0;
    waitUntil {
	sleep 20;	//	tiempo de perseguir al siguiente jugador aleatorio
        _i = _i + 1;
        diag_tickTime >= _tiempo
    };
red_Jugadores_Cazados_seleccionados = red_Jugadores_Cazados call BIS_fnc_selectRandom;

//hint format ["red_Jugadores_Cazados    %1 ",red_Jugadores_Cazados_seleccionados];
//systemchat format ["red_Jugadores_Cazados    %1 ",red_Jugadores_Cazados_seleccionados];
	};
};
