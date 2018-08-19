/*Humo
Descripción:
Humo: Puede ser colocado en un objeto del juego o en una lógica de juego en módulos.

Ejemplo:*/
smoke1 = "test_EmptyObjectForSmoke" createVehicle position this; smoke1 setpos (getpos smoking_wreck);

//Donde Smoke1 Sería el nombre de la variable(nombre de objeto).

/*Caso 2:

Descripción:
Humo con fuego: Puede ser colocado en un objeto del juego o en una lógica de juego.

Ejemplo:*/
FuegoHumo = "test_EmptyObjectForFireBig" createVehicle (position this);
FuegoHumo attachTo [this, [0, 1.5, 0]];
/*
Donde FuegoHumo sería el nombre de la variable(nombre del objeto).
*/
