/*
Humo
Descripción:
Humo: Puede ser colocado en el init en un objeto del juego o en una lógica de juego en módulos.
Tambien puede ser colocado en posiciones especificas de un vehiculo.

Ejemplo:*/
humo1 = "test_EmptyObjectForSmoke" createVehicle position this; humo1 setpos (getpos smoking_wreck);

//Donde humo1 Sería el nombre de la variable(nombre de objeto).

/*Caso 2:

Descripción:
Humo con fuego: Puede ser colocado en el init de un objeto del juego o en una lógica de juego.
Tambien puede ser colocado en posiciones especificas de un vehiculo.

Ejemplo:*/
FuegoHumo = "test_EmptyObjectForFireBig" createVehicle (position this);
FuegoHumo attachTo [this, [0, 1.5, 0]];
/*
Donde FuegoHumo sería el nombre de la variable(nombre del objeto).
*/
