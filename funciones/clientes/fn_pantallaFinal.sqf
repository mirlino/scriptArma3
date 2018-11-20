//Llama la pantalla de fin de partida
["LeadTrack01_F_Malden",2,1] call BIS_fnc_playMusic; //Canción elegante
createDialog "FAM_pantallaFinal";
//Bonos
ctrlSetText [123401, format ["Objetivos Primarios: +%1 pts", objetivoPrimarioTotal]];
ctrlSetText [123402, format ["Objetivos Secundarios: +%1 pts", objetivoSecundarioTotal]];
ctrlSetText [123403, format ["Tareas: +%1 pts", objetivoTareaTotal]];
ctrlSetText [123404, format ["Vehículos Neutralizados: +%1 pts", vehEnemigoFinal]];
ctrlSetText [123405, format ["Bono Bandera: +%1 pts", bonoBandera]];
//Penas
ctrlSetText [123406, format ["Bajas Aliadas: -%1 pts", aliadosBajas]];
ctrlSetText [123407, format ["Bajas Civiles: -%1 pts", civilesBajas]];
ctrlSetText [123408, format ["Vehículos Aliados Perdidos: -%1 pts", vehAliadoFinal]];
ctrlSetText [123409, format ["Penalización Tiempo: -%1 pts", penaTiempo]];
//Puntaje final 
ctrlSetText [123410, format ["Puntaje Final: %1", PuntajeFinal]];	


/* AYUDA MEMORIA

123401 = OBJETIVOS PRIMARIOS 
123402 = OBJETIVOS SECUNDARIOS 
123403 = TAREAS 
123404 = VEHICULOS NEUTRALIZADOS (+2 x cada 1)
123405 = BONO BANDERA (+5 si todos en la bandera)

123406 = BAJAS ALIADAS (-1)
123407 = BAJAS CIVILES (-2 x cada 1)
123408 = VEHICULOS PERDIDOS (-2 x cada 1)
123409 = PENALIZACIÓN TIEMPO (-10)

123410 = PUNTAJE FINAL (sumatoria bonos - penalizaciones)
*/ 