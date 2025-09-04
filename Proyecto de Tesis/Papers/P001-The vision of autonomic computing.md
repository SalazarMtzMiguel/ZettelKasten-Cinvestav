Basado en el paper [[(Kephart and Chess) The vision of autonomic computing.pdf]]
#CitaLatex
Cita BibLatex:
@article{kephart2003vision,
  title={The vision of autonomic computing},
  author={Kephart, Jeffrey O and Chess, David M},
  journal={Computer},
  volume={36},
  number={1},
  pages={41--50},
  year={2003},
  publisher={IEEE}
}
#ResumenPaper

Los sistemas cada vez con mas complejos y de hecho ya son masivos, esto lleva a que incluso a las personas mas capaces y habilidosas tengan problemas para instalar, configurar, optimiza, mantener y fusionar. Entonces no existe manera de que estos procesos sean llevados a cabo de manera rapida y decisiva en un sonjunto rapido de cambios o de conflictos bajo demanda.

La unica opcion faltante es el computo autonomico, los sistemas pueden ser gestionados por ellos mismos dados unos objetivos de alto nivel.

# Auto-Gestion
Basicamente el pilar de la auto-gestion es que no se tenga a un administrador al pendiente del sistema en un rendimiento de 24/7.

La travesía a la que nos enfrentamos llevara varios años.

## La auto-configuracion

Instalar, configurar y grandes integraciones de sistemas complejos es desafiente, consime mucho tiempo y lleva mucha depuracion o purga de errores hasta para expertos.

## La auto-optimizacion

Los sistemas autonomicos deben de burcar manera de mejorar su operacion identificando y midiendo oportunidades para hacerse mas eficientes en desempeño o costos.

## La auto-sanacion

Los sistemas autonomicos deben de detectar, diagnosticar y reparar problemas localizados desde bugs o fallas de software o hardware, a traves del tester.
El sistema debera de hacer coincidir el diagnostico con los parches de software conocidos, o alertar al programador en caso de no conocer uno, instalar el parche y re probar.

## La auto-proteccion

Los sistemas autonomicos deben de autoprotegerse en dos sentidos, defender el sistema como un todo, y anticipar problemas basados en reprotes de los sensores y tomar acciones para evadir o mitigarlos.
![[P001 Tabla 1 conceptps clave de la auto-gestion.png]]
# Consideraciones arquitectonicas
Un systema autonomico es el resultado de un conjunto de elementos autonomicos que se comunican e interactuan entre si.
![[P001 Figura1 MAPEK como elementos autonomicos.png]]

El administrador autonomico distingue el elemento autonomico de su parte que no lo es, mediante la monitorizacion del elemento gestionado y su ambiente externo, y contruye y ejecuta planes basados en el analisis de su informacion, entonces el administrados autonomico puede relevar a los humanos en la responsabilidad directa de adminitracion del elemento en cuestion.

Cada elemento autonomico sera responsa