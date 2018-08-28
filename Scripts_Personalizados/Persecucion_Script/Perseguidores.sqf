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


if (!isServer) exitWith {};

	//hint"_Especiales_Grupo_Cazadores";

#define _Especiales_Grupo_Cazadores "rhsgref_ins_rifleman_akm","rhsgref_ins_rifleman_aks74","rhsgref_ins_rifleman","rhsgref_ins_machinegunner","rhsgref_ins_rifleman_aksu"

	_enemies_Array = [grpNull];

	_Especiales_Equipo_Cazadores = createGroup opfor;
	_red_AleatoriaPos = [[[red_Jugadores_Cazados_seleccionados, (1500)],[]],["water","out"]] call BIS_fnc_randomPos;
	_Especiales_Equipo_Cazadores = [_red_AleatoriaPos, opfor,[_Especiales_Grupo_Cazadores]] call BIS_fnc_spawnGroup;
	_Especiales_Equipo_Cazadores setCombatMode "YELLOW";
	_Especiales_Equipo_Cazadores setSpeedMode "NORMAL";
	_Especiales_Equipo_Cazadores allowFleeing 0;
	_Waypoint =_Especiales_Equipo_Cazadores addWaypoint [(red_Jugadores_Cazados_seleccionados ) ,0];
	_Waypoint setWaypointType "SAD";


	_arreglo_enemigos = _arreglo_enemigos + [_Especiales_Equipo_Cazadores];


while {true} do {
    _tiempo = diag_tickTime + 1;
    _i = 0;
    waitUntil {
	sleep 10;
        _i = _i + 1;
        diag_tickTime >= _tiempo
    };

	//hint "_Actualizando_WP";
	{
	deleteWaypoint [_x, 0];
	_Actualizando_WP = _x addWaypoint [(red_Jugadores_Cazados_seleccionados ) ,0];
    _Actualizando_WP setWaypointType "SAD";		//	MOVIMIENTO SAD
    _x setCombatMode "YELLOW";			//	YELLOW ó RED
    _x setSpeedMode "NORMAL";			//	NORMAL ó	FULL
    _x allowFleeing 0;
	}foreach [_Especiales_Equipo_Cazadores];

};
