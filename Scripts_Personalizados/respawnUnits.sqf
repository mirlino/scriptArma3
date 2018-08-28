//respawn units

//_grupo1 = [position pos1, WEST, 5] call BIS_fnc_spawnGroup;

//[_grupo1, position pos1, 50] call bis_fnc_taskPatrol;

//[_grupo1, position pos1] call bis_fnc_taskDefend;

//sleep 5;

_grupo2 = [ position pos1, WEST, ["rhsusf_usmc_marpat_d_rifleman_m4", "rhsusf_usmc_marpat_d_javelin_assistant", "rhsusf_usmc_marpat_d_rifleman_m4", "rhsusf_usmc_marpat_d_rifleman_m4"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

[_grupo2, position pos1, 50] call bis_fnc_taskPatrol;