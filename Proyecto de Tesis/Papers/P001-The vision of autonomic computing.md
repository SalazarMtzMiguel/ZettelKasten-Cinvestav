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

Basado en el paper [[(Kephart and Chess) The vision of autonomic computing.pdf]]

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

Cada elemento autonomico sera responsable por la gestion de su propio estado inter y comportamiento y sus interacciones con un entorno.

# Desafios de ingenieria

El ciclo de vida de un elementos autonomico (individual) o de sus relaciones entre otros elementos revela gran cantidad de desafios.

## Ciclo de vida de un elemento autonomico

este inicia con su diseño e imlementacion, se continua con las pruebas y verificacion, luego se procede con la instalacion, configuracion, optimizacion, actualizacion, monitoreo, determinacion del problema, recuperacion y culmina con su desinstalacion o reemplazo.

### Instalacion y configuracion

instalar y configurar estos elementos autonomos seran un proceso de arranque que inicia con el registro del mismo en el directorio de servicio, listando sus capacidades e informacion de contando.

### Monitoreo y determinacion del problema.

Los elementos se vana a monitorear a si mismos para asegurar que van a coincidir con sus propios objetivos.

### Actualizacion
los elementos necesitan actualizarse a si mismos en el tiempo, incluso pueden crear nuevos elementos como parte de una actualizacion de sistema, pudiendo eliminar versiones obsoletas.

### Manejo del ciclo de vida
los elementos estaran en varias actividades simultaneamente, participando en una o mas negociaciones eb varuas fases de cinoketacuibm buscando de manera proactiva entradas de otros elementos.

## Relaciones entre elementos autonomicos

### Especificacion
Un elemento debe tener asociado a el, un set de servicios de entrada que pueden desarrollar y un conjunto de servisions de entrada que requieren ser expresados en un formato estandar que nos demas elementos pueden entender.

### Ubicacion
un elemento debe ser capaz de localizar servicios de entrada que necesite, en torno otros elemento requiere sus servisios de salida debe de poder localizar ese elementos.

### Negociacion
Una vez un elemento encuentra proveedores potenciales de un servicio de entrada este debe de negociar con ellos como obtener ese servicio.

### Provision
Uno de los dos elementos alcanza el acuerdo, entonces proporciona sus recursos inernos.

### Operacion
Uno de los dos lados ha sido provisionado, estos operan bajo el tratado negociado.

### Terminacion
Una vez fueron despachados se termina el acuerdo, y se puede grabar informacion de ocmo fue la relacion para tener un registro de reputacion.

## Problemas de todo el sistema
Otros problemas de ingeniería importantes que surgen a nivel de sistema incluyen la seguridad, la privacidad y la confianza, así como la aparición de nuevos tipos de servicios para satisfacer las necesidades de otros elementos autónomos.
Estos incluyen la autenticación, la autorización, el cifrado, la firma, la auditoría y la monitorización seguras, el no repudio, la agregación de datos y el enmascaramiento de identidad, y el cumplimiento de requisitos legales complejos que varían de un estado a otro o de un país a otro.

## Especificacion de metas
Mientras los sistemas autonomicos puedam asumir mucho de su operacion e integration, los humanos puedes proveerles a estos sistemas politicas, las metas y restricciones que gobiernen sus acciones.
Se debe de garantizar que las metas son especificadas corrrectamente y que el sistema se comporte rasonablemente incluso cuando las metas no lo son.
## Abstracciones de comportamiento y modelos
Definir abstracciones y modelo propios para el entendimiento, control y diseño emergente en sustemas es un desafir en el corazon del computo autonomico.
Un enfoque plausible combina técnicas avanzadas de búsqueda y optimización con modelos parametrizados de la relación entre lo local y lo global y el probable conjunto de influencias ambientales a las que estará sujeto el sistema.

## Teoria de la robustez
Un desafio relacionesdo es desarrollar teoria de la robustez para este tipo de sistemas, incluyendo definiciones y nalisis, diversidad, redundancia y optimalidad y su srelaciones de uno a otro.

## Aprendizaje y teoria de la optimizacion
El aprendizaje maquina de un agente en solitario en ambientes relativamente estaticos es bien estudiado y es bien soportado por resultados teoricos fuertes.

## Teoria de la negociacion
Desde la perspectiva de los elementos individuales, debemos desarrollar y analizar algoritmos y protocolos de negociación, y determinar qué algoritmos de licitación o negociación son más efectivos.
Desde la perspectiva del sistema en su conjunto, debemos establecer cómo el comportamiento general del sistema depende de la combinación de algoritmos de negociación que utilizan los distintos elementos autónomos, y establecer las condiciones bajo las cuales las negociaciones multilaterales, en contraposición a las bilaterales, entre los elementos son necesarias o deseables.

## Modelado estadistico automatizado
Modelos estadisticos de sistemas conectados de manera grande podran predecir el rendimiento de un flujo de datos de sensores de dispositivos individuales.