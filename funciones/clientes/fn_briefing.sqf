/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      12/11/2018
@Version:   NONE
************************************************
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////

// Creditos del Editor
player createDiaryRecord["Diary", ["Cr"+toString[233]+"ditos",
"<center><p align='center'><br/>EQUIPO EDICION:<br/><br/><img image='img\fam.jpg' align='center' width='240' height='110' /></p></center><br/><br/>

<p align='justify'>
<br/>
EDICION por: Redburn <br/>
BRIEFING por: Camello and Redburn.
</p>"]];


// Recursos
player createDiaryRecord["Diary", ["Recursos", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Recursos:</font>
<br/><br/>
a - 1 Vehículo de transporte M1097A2 desarmado para 6 personas y usado como vehículo médico.<br/>
b - 1 Vehículo de transporte M1025A2 Artillada para 5 personas.<br/>
c - 1 Helicóptero MH-6M Little Bird.<br/>
d - 1 Centro Médico en base.<br/>
e - 1 Caja de Recursos.<br/>

</p>"]];

//Tareas
player createDiaryRecord["Diary", ["Tareas Adicionales", 
"<p align='center'><img image='img\tareas.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
a - Liberar cuatro civiles usados rehenes para sus exigencias ubicados cerca del artefacto Explosivo. <font color='#ffcc00'>(1pts)</font><br/>
b - Eliminar por lo menos a 30 enemigos. <font color='#ffcc00'>(2pts)</font><br/>
c - Llevar el objetivo B a base sin recibir ningún tipo de daño. <font color='#ffcc00'>(3pts)</font><br/>
<br/><br/>
<font size='18' color='#29a329'>Final:</font>
<br/>
Replegar a base de inicio y dar por finalizada la misión con la escuadra completa <font color='#ffcc00'>(5pts)</font>
<br/><br/>
<font size='15' color='#ff0000'>NOTA:</font>Todos deben llegar a base, de lo contrario restará -1 por cada miembro que no haya llegado a base al momento de finalizar misión.

</p>"]];

//Objetivos secundarios
player createDiaryRecord["Diary", ["Objetivos Secundarios", 
"<p align='center'><img image='img\ObjSecundario.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
a - Conseguir un documento en los altos de Agia Stemma que muestra la ubicación exacta de cada una de las laptops, una de ellas conteniendo el código <<-Color->> para la desactivación del artefacto. <font color='#ffcc00'>(8pts)</font>
<br/><br/>

</p>"]];
//b - NO DISPONIBLE. <font color='#ffcc00'>(0pts)</font>
// Objetivos
player createDiaryRecord["Diary", ["Objetivos Primarios",
"<p align='center'><img image='img\ObjPrimario.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
<font size='14' color='#ffffff'>A - Desactivar un Artefacto altamente peligroso ubicado por los alrededores por los Almacenes de Aggelochori. </font> <font size='18' color='#ffcc00'>(10pts)</font>
<br/><br/><font size='15' color='#ff0000'>NOTA:</font> para desactivar la bomba primero deben buscar un código de un color que necesita el desactivador encontrada en una de cuatro laptops ubicados en los alrededores.
Si presionan el color incorrecto al intentar desactivar la bomba estallara matando a todo el que este cerca de este.<br/><br/>
<font size='14' color='#ffffff'>B - Encontrar y transportar a base otro artefacto montado en un camión militar ubicado por los alrededores de Agios Dionyssios.</font> <font size='18' color='#ffcc00'>(10pts)</font>
<br/><br/>
<img image='img\trackingObjetive.jpg' align='center' width='340' height='220' /><br/>
Imagen del artefacto siendo transportado a uno de los lugares marcados en el mapa, tengan en cuenta que es el mismo artefacto tanto en objetivo A como en el B, 
la diferencia es que el objetivo A esta desmontado y listo para armarse y pero el objetivo B aun no lo han desmontado, esto según informes.

</p>"]];

// Situación
player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", 
"<p align='justify'><img image='img\Mision1.jpg' align='center' width='400' height='100' /><br/><br/>

Sin lugar a dudas que el despliegue de “Los Libertadores” hicieron mella en la organización del Papayo, se logró capturarlo y destruir parte del cargamento que tenía como destino la financiación de grupos paramilitares.
<br/><br/>
Los datos que se obtuvieron en la operación anterior, nos están aclarando el panorama, o más bien oscureciendo, pues nos han llevado a una encrucijada de la cual pueden depender miles de vidas en Altis.
<br/><br/>
El caso es que hemos considerado al Papayo como la cabeza de una red y no podíamos estar más equivocados. Rigostia cumplía con una importante misión para el grupo paramilitar Garra Negra.
<br/><br/>
Garra Negra es un grupo paramilitar que gozan del beneplácito de Al Qaeda, se ha estado financiando con la compra-venta de armas, el narcotráfico, el secuestro y extorsión. Así es que se ha hecho de gran cantidad de armas y artefactos bélicos modernos y de alto poder, e incluso se sospecha de alcance químico y/o atómico.
<br/><br/>
Hace unas horas este grupo ha reclamado la liberación de Rigostia, reclamándolo como “el hermano mayor”. 
<br/><br/>
Garra negra exige su liberación, en caso contrario eliminaran a poblaciones enteras comenzando con Altis. Para ello ha desplegado fuerzas paramilitares en Altis, por el momento y en el poco tiempo que ha pasado sólo se sabe de algunas tropas, pero el grupo dice tener en su poder un artefacto que puede poner de rodillas regiones enteras sino cumplimos con su exigencia.
<br/><br/>
Nada nos hacía presagiar este entuerto, pero la amenaza es grande y los Libertadores seguramente serán llamados para torcer, a la Garra Negra.
<br/><br/>
Hemos pasado de barrer el polvo a levantar elementos más pesados…

</p>"]];
	
enableSentences false;


// Deshabilita el radio largo alcance automatico en mochila
tf_no_auto_long_range_radio = true;
TF_give_microdagr_to_soldier = false;
