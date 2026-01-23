por#CitaLatex 
@article{Porter2024SelfDesigning,
	author = {Porter, Barry and Faulkner Rainford, Penn and Rodrigues-Filho, Roberto},
	title = {Self-Designing Software},
	year = {2024},
	issue_date = {January 2025},
	publisher = {Association for Computing Machinery},
	address = {New York, NY, USA},
	volume = {68},
	number = {1},
	issn = {0001-0782},
	url = {https://doi-org.access.biblioteca.cinvestav.mx/10.1145/3678165},
	doi = {10.1145/3678165},
	abstract = {Exploring ways to include a software system as an active member of its own design team, able to reason about its own design and to synthesize better variants of its own building blocks as it encounters different deployment conditions.},
	journal = {Commun. ACM},
	month = dec,
	pages = {50–59},
	numpages = {10}
}
Basado en el documento: [[(Porter) Self-designing software.pdf]]


El documento presenta un enfoque en el que el software se convierte en un **miembro activo de su propio equipo de diseño**. El objetivo es que los sistemas de software puedan razonar sobre su propio diseño, aprender alternativas y sintetizar nuevos componentes para adaptarse en tiempo real a las condiciones cambiantes de su entorno.

Las ideas clave se pueden puntualizar de la siguiente manera:

### 1. El Concepto Central: Autodiseño en Tiempo de Ejecución

La visión principal es superar el proceso tradicional donde los ingenieros seleccionan componentes (algoritmos, estructuras de datos, etc.) basándose en su experiencia y luego los ajustan tras el despliegue. En su lugar, el software debe ser capaz de **elegir y refinar el mejor diseño para una tarea por sí mismo, de forma continua y en tiempo real**. Esto se logra permitiendo que el software razone sobre su propio diseño y se adapte autónomamente a su entorno.

### 2. El Enfoque Arquitectónico: Bloques de Construcción y Variación

El sistema se construye a partir de un gran conjunto de **pequeños bloques de construcción** (componentes de software de 100-200 líneas de código).

- **Interfaces y Variación**: Cada bloque implementa una interfaz específica (por ejemplo, una caché con funciones `put()` y `get()`). Estas interfaces son lo suficientemente abstractas como para permitir **múltiples implementaciones distintas** que utilizan diferentes algoritmos o sub-arquitecturas. Por ejemplo, para una misma interfaz de caché, puede haber variantes con distintas políticas de desalojo (LRU, LFU, etc.).
- **Composición Automatizada**: Esta variedad de implementaciones crea un enorme espacio combinatorio de posibles diseños del sistema, que se explora de forma totalmente automatizada sin necesidad de archivos de configuración manuales.

### 3. El Mecanismo Clave: "Hot-Swapping" con Garantías de Seguridad

La capacidad de autodiseñarse en tiempo de ejecución se basa en una tecnología fundamental: el **"hot-swapping" de código**, que consiste en intercambiar componentes de software en un sistema en vivo, de forma segura y generalizada.

- **Funcionamiento**: Es análogo a "cambiar el motor de un avión en pleno vuelo". El sistema carga la nueva implementación, transfiere el estado necesario desde la versión antigua y la descarga, todo de manera rápida y sin que el usuario perciba interrupciones.
- **El Riesgo y la Solución**: Hacer esto en lenguajes de programación convencionales es muy arriesgado, ya que puede crear "estados híbridos" no verificados que llevan a comportamientos indefinidos. Para solucionar esto, los autores diseñaron un nuevo lenguaje de programación llamado **Dana**, cuya principal característica es que **garantiza por diseño la seguridad del hot-swapping**.

### 4. El Proceso de "Meta-Ingeniería": Cómo se Guía el Autodiseño

El rol del ingeniero evoluciona hacia el de un **"meta-ingeniero"**. En lugar de diseñar el sistema final, el meta-ingeniero guía el proceso de autodiseño siguiendo unos pasos definidos:

1. **Construir con Bloques**: Se construye el sistema a partir de bloques pequeños y con interfaces bien definidas, aprovechando bibliotecas que ya ofrecen variación de implementación.
2. **Definir la Función Objetivo**: Se establece qué se quiere optimizar (por ejemplo, rendimiento, consumo de energía, calidad de la experiencia del usuario) y se instrumenta el sistema con "sondas" para medir estas métricas.
3. **Caracterizar el Entorno**: Se utilizan otras sondas para capturar características del entorno (por ejemplo, el tipo de peticiones que recibe un servidor web). Esto crea una "memoria de trabajo" que permite al sistema correlacionar el contexto con el diseño óptimo.

### 5. Aprendizaje y Optimización Continua

El sistema aprende cuál es el mejor diseño para cada contexto de forma continua y online, directamente en el entorno de producción, para poder lidiar con la incertidumbre del mundo real.

- **Descubrimiento de Composiciones**: Unos programas especiales llamados **"meta-composers"** examinan los bloques y descubren automáticamente todas las posibles composiciones (diseños) del sistema, asignando a cada una una etiqueta única.
- **Aprendizaje por Refuerzo**: Un algoritmo de optimización (como el aprendizaje por refuerzo) trata cada composición etiquetada como una "acción" y explora cuál de ellas ofrece la mejor "recompensa" (según la función objetivo) para un contexto dado.

### 6. Síntesis de Nuevos Componentes con Mejora Genética (GI)

Crear manualmente nuevas variantes de implementación que sean útiles puede ser un desafío. Para automatizarlo, el paper propone el uso de la **Mejora Genética (Genetic Improvement - GI)**.

- **Proceso**: Se toman trazas de llamadas a funciones del sistema en vivo y se usan para guiar un proceso evolutivo offline. Este proceso parte de un código existente y lo somete a mutaciones y cruces durante generaciones para "evolucionar" nuevas variantes que funcionen mejor para esas trazas.
- **Análisis Filogenético**: Para guiar esta búsqueda evolutiva, utilizan el análisis filogenético para identificar no solo el individuo con el mejor rendimiento, sino también los individuos más **"evolucionables"**: aquellos que, aunque no sean los mejores, han demostrado ser buenos puntos de partida para generar futuras mejoras.

### 7. Desafíos Abiertos

El documento reconoce varios desafíos importantes que siguen siendo áreas de investigación activas:

- **Incertidumbre real**: Los algoritmos de aprendizaje a menudo requieren una parametrización cuidadosa, lo que va en contra del objetivo de manejar entornos totalmente desconocidos e inciertos.
- **Clasificación del entorno**: Crear buenos clasificadores para detectar los contextos relevantes del entorno es todavía un proceso manual y específico de cada dominio.
- **Gestión del espacio de búsqueda**: La combinación de muchos bloques con múltiples variantes puede crear espacios de búsqueda de diseños enormemente grandes, lo que puede ralentizar el aprendizaje.