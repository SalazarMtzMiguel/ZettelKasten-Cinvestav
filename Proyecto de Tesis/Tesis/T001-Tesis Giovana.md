#CitaLatex 
@mastersthesis{perez2024,
  author = {Pérez Carrillo, Giovana Patricia},
  title = {Nuevo Marco Conceptual de Sistemas de Autoingeniería y una Arquitectura para la Gestión de su Ciclo de Vida},
  type = {Tesis de Maestría en Ciencias},
  school = {Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional Unidad Guadalajara},
  year = {2024},
  month = {aug},
  address = {Guadalajara, México},
  note = {
    Directores: Dr. Mario Ángel Siller González Pico y Dr. Luis Alberto Alonso Pastor.
    Becaria CONAHCYT (expediente no. 1229663).
    Formación previa: Ingeniería en Diseño Electrónico y Sistemas Inteligentes (CETI, 2018-2022)
  }
}
Lectura basada en la tesis [[Tesis Giovana.pdf]]
# Nuevo Marco Conceptual de Sistemas de Autoingeniería y una Arquitectura para la Gestión de su Ciclo de Vida
#ResumenTesis
## Capitulo 1 - Introducción
Los sistemas de autoingenieria cuentan con caracteristicas como la autosanacion, autoreparacion, autoadaptacion, autoconfiguradion, etc. SES = Self-Engineering Systems
Los SES registran perdidas en su funcionamiento u operacion y responden de manera que puedan reestablecer su funcionamiento normal.
### Problema
Como cualquier sistema despues de su despligue sus requerimientos se ven afectados entonces se presenta la evolucion del sistema, al momento de plantear estos cambios tenemos dos opciones:
- Implementar el cambio, se modifica el sistema y continua operando
- Reemplazar el sistema con uno nuevo que cumpla con los nuevos requerimientos
La auto ingenieria se limita a tratar fallas del sistema en tiempo de ejecucion (definiciones comunes).
### Motivacion
Se basa en la necesidad de que los sistemas sean capaces de desarrollar ingenieria sin intervencion humana, desarrollar un nuevo sistema basado en nuevo requerimientos.
### Objetivos
Proponer un nuevo marco conceptual y arquitectura para los sistemas de autoingenierı́a para la gestión de su ciclo de vida.
### Hipotesis
A partir de un nuevo marco conceptual y una arquitectura de sistemas de autoingenierı́a, es posible desarrollar sistemas que den respuesta a cambios en los requerimientos que puedan implicar ir más allá de su propio ciclo de vida, sin intervencion humana.
### Estructura del documento
Sin nada mas que añadir
## Capitulo 2 - Marco Teorico
### Ingeniería de sistemas
Un sistema es una estructura con diversos elementos que interactuan para lograr resultados que de manera individual. Para desarrollar un sistema se llevan a cabo procesos metodicos para la aplicacion de los principios de la ingenieria con tal de resolver un problema mediante la conceptualizacion, el diseño, la implementacion, pruebas, desplietue y certificacion del funcionamiento del sistema.
#### Ingenieria de software
Hablar de software es habler de lo sprogramas y la documentacion asociada a un sistema computacional con un hardware que lo sporta y ejecuta. un sistema de software habla unicamente de lo que no es tangible, es decir las cuestiones fisicas, materiales o componentes.
El termino ingenieria de software sugio en 1968 cuando se afirmo que un enfoque individual resulta en un sistema complejo y costoso. por ello la necesidad emergente de desarrollar nuevas tecnicas y metodos para la gestion del desarrolllo de sistemas de software. Es necesario seguir una pauta, un procedimiento metodico y bien definido para desarrollar cualquier sistema de SW.
Es necesario lllevar a cabo las tareas de la ingenieria de requerimientos, diseño, codificacion (implementacion), pruebas y mantenimiento de lSW en cuestion.
Todas las etapas o fases son las siguientes:
Requerimientos, Diseño, Implementacion Pruebas y Mantenimiento
Existen multiples modelos para el desarrollo de software como el modelo en cascada.
![[Modelo_Cascada.png]]
#### Ingenieria de requerimientos
Un requerimiento es la sentencia en la cual se plasma una caracteristica, restriccion operacional, restriccion funcional o restriccion  de diseño del sistema, con el atributo de que cumplir la especificacion es necesaria para que el sistema sea aceptado.
Ahora bien, la primer estapa es la de requerimientos, esta sera nuestra piedra angular para todo lo que constituira el sistema, ya que en ella se define el problema que se va a atacar a traves de una solucion.
Una clasificación comúnmente utilizada para los tipos de requerimientos del sistema corresponden a los funcionales y los no funcionales. Siendo los funcionales aquellos que describen las prestaciones del sistema, expresado mediante servicios, tareas o funciones que el sistema debe de realizar, así como también las condiciones bajo las cuales ciertas entradas deben convertirse en ciertas salidas.
Los requerimientos funcionales también podrían especificar para ciertos tipos de sistemas
y condiciones lo que el sistema no debiera hacer. Por otro lado, los requerimientos no
funcionales corresponden a los aspectos relacionados a las propiedades del sistema,
su alcance y limitaciones bajo las cuales este tendrá que operar.
![[Ciclo de vida de un sistema de sw.png]]
### Ciclo de vida de un sistema
El ciclo va desde su planeacion hasta su desecho, para describir y establecer un estandar se creo el marco comun denominado Ciclo de Vida de Desarrollo de Software (SDLC en ingles), esto consiste en un proceso organizado con multiples etapas:
- Inicialización: en esta etapa se plantea la necesidad de desarrollar el sistema,
así como su propósito y sus requerimientos. Dichos requerimientos son evaluados mediante la negociación entre las partes interesadas y los desarrolladores para llegar a acuerdos mutuos.
- Adquisición/Desarrollo: en primer lugar, se procesa, almacena y transmite la
información necesaria para el desarrollo del sistema, según las especificaciones
establecidas. Posteriormente, el sistema se diseña, programa y desarrolla.
- Implementación: en esta fase se revisa en detalle el diseño del sistema propuesto
y se llevan a cabo pruebas exhaustivas al sistema antes de su implementación.
Una vez realizadas las pruebas de las funcionalidades del sistema para asegurar
su correcto funcionamiento, así como la validación del cumplimiento satisfactorio de los requerimientos, se implementa el sistema en cuestión en campo.
- Operación y mantenimiento:
en esta etapa el sistema se encuentra en funcionamiento brindando los servicios para los cuales fue diseñado. Cualquier ajuste o modificación necesaria en el software o hardware se implementa según sea necesario para optimizar su rendimiento, así como al atención a sus posibles cambios en requerimientos.
- Desecho: esta fase implica realizar la evolución o la transición del sistema. Así bien, si se decide dar por finalizado al sistema, este puede desecharse, migrar o reutilizarse.
### Operacion y mantenimiento de un sistema de software
Despues de las etapas previas al despliegue (Ingenieria de requerimientos, diseño de arquitectura, implementacion y pruebas) existe lo que es el mantenimiento, el sistema puede tener 4 tipos de mantenimiento:
- Correctivo: Corregir posibles fallos y atender errores durante el ffuncionamiento nomal del sistema
- Adaptativo: Corresponden a cambios para que el sistema se adapte a nuevos ambientes.
- Perfeccionador: Se basa en actualizar en sistema en base a nuevos requerimientos del usuario final.
- Preventivo: Se actualiza el sistema y la documentacion, para que sea sostenible y resiliente ante posibles fallos.
Existen modelos para la etapa de mantenimiento con objetivos unicos, por ejemplo.
- QuickFix: Identifica el problema e implementa la solucion de la manera mas rapida posible.
- Reutilizacion Total: Se hace un analisis de requerimientos del nuevo sistema buscando implementar y reutilizar la mayor parte del sistema actual.
### Evolucion de un sistema de software
Esta etapa corresponde a un estado despues del despliegue ya que en esta etapa de abordan los nuevos requerimientos y necesidades del sistema.
El ciclo de vida de un sistema no termina con su despliegue, sino que este sigue vigente hasta su mantenimiento y evolución, en donde se atienden los cambios que le puedan ser requeridos al sistema posterior a dicho despliegue.
#### Leyes de evolucion del software
#Revision #MasInfo
NOTA: Revisar cita 51 y 29
Son reglas las cuales establecen como derivar en nuevas versiones o entregas de software a sistemas ya existentes, las leyes son:
- Cambio constante: los sistemas deben de adaptarse cotinuamente si no se comienzan a volver isatisfactorios.
- Incremento de la complejidad: a medida que un sistema evoluciona se vuelve mas complejo a menos que se tomen medidas para lo contrario.
- Autoregulacion: el proceso de evolucion se autoregula con distribuciones y patrones estadisticos predecibles.
- conservacion organizacional: la tasa efectiva de evolucion corresponde a la estabilidad invariante a lo largo de la vida util del producto.
- Conservacion de familiaridad: a medida que pasa la evolucion, todo lo asociado al sistema debe de mantenerse en el dominio de su contenido, y comportamiento para lograr su evolucion satisfactoria.
- Crecimiento continuo: el contenido funcional del sistema debe de irse incrementando para satisfacer al usuario.
- Calidad decreciente: la calidad del sistema ira decreciendo a menos que se intervenga para que se adapte a los cambios del entorno.
- Retroalimentacion del sistema: los procesos de evolucion tienen en cuenta la retroalimentacion de usuarios y desarrolladores.
#### Gestion de cambio
El cambio en un sistema de software consiste en el proceso de introduccion de nuevos requerimientos, modificacion a los ya planteados o implementados, o el cambio de operacion del sistema.
Mientra surjan nuevos requerimientos la evolucion del sistema es inevitable, asi que existen maneras de gestionar estos requerimientos, se dividen en pasos o etapas:
- Analisis del uevo problema y especificaciones del cambio: Se evalua la propuesta, asi como el problema actual, se ve si es viable para la modificacion de requerimientos y la posterior implementacion.
- Analisis del cambio requerido: Se analiza para saber si se procede con el cambio de requerimientos.
- Implementacion del cambio: Se presentan los cambios realizados en la implementacion del sistema y la documentacion correspondiente.
### Definiciones de Metamorfosis
Es importante analizar la definición que se le ha atribuido al termino de metamorfosis cuyo significado viene del latin y griego, meta (mas alla, despues de), morph (forma, estructura) y osis (acciones, condiciones, estados), tiene una aplicacion mas biologica en donde se describe como el desarrollo de organismos a través de una serie de estados diferenciados entres si, los cuales están asociados a funciones especificas, la metamorfosis implica que la forma y estructura básicas de un organismo surgen como resultado de una secuencia de ajustes en el desarrollo.
### Adaptacion y Autoadaptacion
Se denomina adaptacion a la capacidad de un sistema de ajustar automaticamente su estructura o funcionalidad para satisfacer diversas necesidades.
La autoadaptacion consiste en la capacidad de un sistema de ajustar el comportamiento durante su ejecucion en respuesta a la percepcion del entorno como del propio sistema considerando su contexto, ambiente y actores que se involucran en el.
### Computo Autonomico
El computo autonomico tiene reaices bioinspiradas como lo que es el sistema nervioso autonomo humano que regula funciones automaticas como la respiracion, el control pupilar, el ritmo cardiaco, la presion arterial etc. Este campo fue explorado en los sistemas ACS (Sistemas de computo autonomico) y son capaces de adaptarse a diferentes situaciones segun necesidades previstas y para que los sistemas sean autonomicos deben de cumplir con lo siguiente:
- Conocimiento de si mismo
- Capacidad de configurarse y reconfigurarse en condiciones variables e impredecibles
- Busqueda de optimizacion en su funcionamiento
- Capacidad de recuperacion frente a eventos que puedan causar fallos
- Funcionalidad de autoproteccion
- Conocimiento del entorno y capacidad de actuar acorde al contexto
- No podra existir un ambiente hermetico
- Anticipar y gestionar de manera eficiente los recursos necesarios, sin mostrar su complejidad
#Revision #MasInfo 
NOTA: revisar cita 36
Tambien se menciona que debe de contar con cuatro propiedades basicas:
- Autoconfiguracion: El sistema mantiene una configuracion automatizada de sus componentes
- Autosanacion: El sistema es capaz de diagnosticar y reparar fallas que se pudiesen presentar tanto a nivelr software como en hardware (Verificar la segunda #BuscarPruebas).
- Auto-optimizacion: Se busca continuamente oportunidades para mejorar eficiencia y eficacia del sistema y sus componentes.
- Autoproteccion: El sistema es capaz de defenderse de ataques maliciosos.
## Capitulo 3 - Estado del Arte
En esta sección se presentan y analizan las definiciones previas en la literatura sobre
los sistemas de autoingenierıa.
### Conceptualización de sistemas de autoingenieria
En la literatura se han encontrado multiples definicion es de sistemas de autoingenieria:
- “Un sistema es de autoingenierıa cuando registra y responde a una pérdida de funcionalidad o capacidad operativa, y automaticamente toma medidas para regresar la funcionalidad” #Revision cita 32
- “Capacidad diseñada e integrada a un sistema para identificar de forma independiente cualquier perdida o posible pérdida de funcionalidad, y luego restaurar automáticamente la funcionalidad total o parcial para mantener su disponibilidad y mejorar la resiliencia del sistema.” #Revision cita 13
### Arquitecturas de referencia
#Revision cita 66 se propone un proceso de ingenieria agil con una arquitectura para los sistemas autogestionables basado en la ingenieria de software. Dicha arquitectura utiliza medidores o indicadores para interactuar con el sistema en ejecucion y recuperar datos para traducirlos en metricas para el ajuste del sistema o la adaptacion.
El modelo se sistema viable #Revision cita 7 se centra en que todas las organizaciones son sistemas de tal manera que comparten principios y caracteristicas que dictan como se adaptan y sobreviven en entorno cambiantes.
Dicho modelo propone de cinco subsistemas:
- Implementacion
- Coordinacion
- Control
- Inteligencia
- Politica
#Revision cita 47 plantea una vision de los sistemas de autogestion a nivel arquitectonico en donde sus componentes configuran automaticamente su interaccion para que sean compatibles con configuraciones arquitectonicas y objetivos del sistema. Para ello se define en tres capas:
- control de componentes
- gestion de cambios
- gestion de objetivos
#Revision cita 46 presenta la arquitectura MAPE-K (Monitoring, Analyzing, Planning, Execution y Knowledge) siendo la representacion conceptual de un sistema autonomico.
donde el componente monitor observa y recompila los datos del sistema, asi como del entorno. El componente de analisis estudia  los datos para la deteccion de situaciones que requieran una adaptacion. El componente de planeacion desarrolla estrategias de adaptacion para responder a los cambios. El componente de ejecucion realiza las estrategias planteadas. Y el componente de conocimiento almacena el estado del sistema asi como almacenar el conocimiento compartido por otros componentes.
![[Bucle de control MAPEK.png]]
### Modelado basado en agentes para ingenieria de software

### Comparacion de trabajos
## Capitulo 4 - Propuesta
### Metodologia
#### Revision de la literatura
#### Definicion y conceptualizacion
#### Analisis y validacion
### Propuesta marco conceptual y arquitectura: Sistemas de autoingenieria
#### Definicion conceptual y formal
#### Propuesta arquitectonica
#### Resumen conceptual
## Capitulo 5 - Experimentacion y Analisis de Resultados
### Experimentacion y analisis de resultados
#### Analisis del sistema: autoingenieria
#### Analisis de cambios en un sistema: autoadaptacion y metamorfosis
### Experimentacion
#### Caso de estudio: ciclo de vida de un sistema SES con aplicacion a un sistema ciberfisico de exploracion, coordinacion y rescate
#### Modelo sitema original
#### Experimento: autoadaptacion
#### Experimento: metamorfosis
#### Analisis de resultados
## Capitulo 6 - Conclusiones y trabajo futuro
### Conclusiones
### Objetivos logrados
### Trabajo futuro
