/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      27/10/2018
@Version:   NONE
************************************************
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////

//Si jugador intenta sacar 3ra Persona no podra
onEachFrame {
   if(cameraOn == vehicle player) then {
       if(vehicle player == player) then {
           if(driver vehicle player == player) then {
               if(cameraView == "EXTERNAL") then {
                   player switchCamera "INTERNAL";
               };
           };
       };
   };
}; 

//si esta dentro de un vehiculo no podra sacar 3ra Persona
addMissionEventHandler ["eachFrame", { 
	if (!isnull objectParent player && cameraView == "external") then { 
		player switchCamera "internal" 
	}
}];