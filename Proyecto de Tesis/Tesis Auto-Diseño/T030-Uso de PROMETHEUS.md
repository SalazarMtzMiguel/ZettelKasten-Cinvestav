La metodología **Prometheus** es un proceso detallado de "principio a fin" diseñado específicamente para que estudiantes e ingenieros sin experiencia previa puedan diseñar y construir sistemas de agentes inteligentes fácilmente,. Para tu tesis, debes seguir un proceso iterativo a través de sus **tres fases principales** (es decir, irás revisando y mejorando cada fase conforme avanzas).

A continuación, se detalla la metodología paso a paso:

**Fase 1: Especificación del Sistema (¿Qué debe hacer el sistema?)** En esta etapa debes definir la funcionalidad básica del sistema y su relación con el entorno.

- **Identifica las Percepciones y Acciones:** Las percepciones son los datos crudos que ingresan desde el exterior, mientras que las acciones son los mecanismos con los que el sistema afecta o modifica su entorno.
- **Define los Eventos:** A diferencia de la información cruda, los eventos son ocurrencias verdaderamente significativas a las que tus agentes tendrán que reaccionar obligatoriamente.
- **Establece Metas y Funcionalidades:** Define qué es lo que el sistema debe lograr en términos generales y luego divídelo en "funcionalidades" mucho más pequeñas y específicas (por ejemplo, "monitorear stock" o "bienvenida al usuario"),.
- **Redacta Escenarios:** Escribe secuencias de pasos detallados (similares a casos de uso) que describan ejemplos concretos del sistema en pleno funcionamiento,.

**Fase 2: Diseño Arquitectónico (¿Qué agentes existirán y cómo se comunican?)** Usando lo que hiciste en la Fase 1, ahora vas a decidir qué agentes conformarán tu sistema.

- **Agrupa las Funcionalidades para crear Agentes:** Junta las funcionalidades que usen la misma información o que estén muy relacionadas lógicamente para formar a un agente,. Debes mantener separadas las funcionalidades que no tengan relación, por seguridad o si corren en hardware distinto. Una gran regla para saber si lo hiciste bien: si puedes ponerle un nombre descriptivo simple al agente sin usar la palabra "y", tu agrupación es correcta.
- **Haz Descriptores de Agentes:** Para cada agente, anota en un documento detalles como: cuántos existirán, cuándo nacen y mueren en el sistema, qué datos manejan, a qué eventos reaccionan y qué metas persiguen,.
- **Dibuja el Diagrama General del Sistema:** Este es el gráfico más importante de todo tu diseño,. Es un mapa que muestra a los agentes, los almacenes de datos compartidos y cómo fluye la comunicación entre ellos,.
- **Diseña los Protocolos de Interacción:** Utiliza diagramas para definir exactamente qué mensajes se enviarán los agentes entre sí y todas las secuencias de respuesta que son válidas,,.

**Fase 3: Diseño Detallado (¿Cómo piensa cada agente por dentro?)** Esta última etapa se enfoca en las "tripas" de cada agente y está pensada para que programes a tus agentes en base a planes o rutinas de comportamiento,.

- **Define las Capacidades (Capabilities):** Divide el cerebro de tu agente en submódulos de habilidades. Un agente puede estar compuesto por varias capacidades interconectadas.
- **Dibuja el Diagrama General del Agente:** Crea un gráfico interno para el agente que muestre cómo fluyen los eventos y las tareas de una capacidad a otra.
- **Crea Planes y Eventos Internos:** En el nivel más profundo de tu diseño, debes documentar los "Planes". Un plan es la rutina que el agente ejecutará cuando detecte un evento; debes detallar qué lo activa, los pasos a seguir, y los datos que va a leer o escribir,.
- **Haz un Diccionario de Datos:** Mantén un registro que estandarice los nombres de todas las variables y bases de datos desde el principio para evitar confusiones en el código.

Si documentas cada una de estas fases utilizando plantillas y diagramas, tendrás los **artefactos de diseño** necesarios para el marco teórico y metodológico de tu tesis,. La experiencia académica demuestra que estudiantes universitarios logran diseñar e implementar sistemas de agentes exitosos en un solo semestre guiándose estrictamente por estos pasos.