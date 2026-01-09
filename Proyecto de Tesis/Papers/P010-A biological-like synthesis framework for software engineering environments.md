#CitaLatex 
@article{Sophatsathit2024ABiological,
	author = {Peraphon Sophatsathit},
	title = {A biological-like synthesis framework for software engineering environments},
	journal = {International Journal of Computers and Applications},
	volume = {46},
	number = {4},
	pages = {208--217},
	year = {2024},
	publisher = {Taylor \& Francis},
	doi = {10.1080/1206212X.2023.2301183},
	URL = { 
	https://doi.org/10.1080/1206212X.2023.2301183
	},
	eprint = { 
	https://doi.org/10.1080/1206212X.2023.2301183
	}
}
Lectura basada en: [[(Peraphon Sophatsathit) A biological-like synthesis framework for software engineering environments.pdf]]


El documento propone un nuevo marco de diseño de software llamado **BASS (Biological-like Architecture for Software Systems)**, cuya idea central es imitar la simplicidad de las formas de vida unicelulares para construir sistemas de software más eficientes, sencillos y cercanos al hardware.

Las ideas clave se pueden resumir en los siguientes puntos:

### 1. La Inspiración Central: Simplicidad Biológica

A diferencia de los sistemas de software tradicionales que son complejos y están diseñados para funcionar indefinidamente, BASS se inspira en la naturaleza, específicamente en las **células o formas de vida unicelulares**. El objetivo es abandonar la complejidad teórica y crear componentes de software que sean:

- **Simples y autónomos**, como una célula que vive, funciona y muere por sí misma.
- **Estructurados linealmente** y con un **tamaño fijo** para que su acceso y gestión sean rápidos y directos, facilitando su implementación a nivel de hardware.

### 2. El Componente BASS: Autónomo y de Vida Corta

En esta arquitectura, el bloque de construcción fundamental es el **componente**, que tiene las siguientes características:

- **Es autosuficiente**: Cada componente contiene sus propios atributos y las operaciones (métodos) que necesita para ejecutarse, sin depender de soporte externo.
- **Tiene una estructura fija y simple**: Se organiza como un bloque de tamaño fijo en una disposición lineal (similar a un array), lo que permite un acceso muy rápido. Su estructura interna se inspira en la jerarquía celular: nucleótidos, codones, cromosomas.
- **Se basa en tipos fundamentales**: Todos los componentes, por muy complejos que sean, deben estar compuestos por un conjunto de **tipos básicos** (análogos a los nucleótidos A, T, C, G del ADN), lo que garantiza una base común y simple para todo el sistema.

### 3. El Ciclo de Vida de Tres Etapas (Gobernado por TTL)

El comportamiento más distintivo de los componentes BASS es su ciclo de vida, que es finito y está estrictamente regulado:

- Cada componente atraviesa un **ciclo de vida de tres etapas: creación, sostenimiento (ejecución) y cese (eliminación)**.
- Este ciclo está gobernado por un límite de tiempo predefinido llamado **Time-To-Live (TTL)**. Un componente solo existe durante su TTL.
- Cuando el TTL de un componente expira, no se guarda su estado ni se realiza un costoso "context switch". En su lugar, se crea un componente nuevo que lo sustituye inmediatamente en su misma posición, un proceso llamado **reemplazo "in situ"**. Este mecanismo es muy eficiente, similar a cómo las células viejas de la piel son reemplazadas por nuevas.

### 4. Simplicidad como Principio Rector

El marco BASS prioriza la simplicidad por encima de todo (**"la naturaleza es simple, BASS también debería serlo"**).

- **Rechaza la complejidad innecesaria**: Deliberadamente evita incorporar paradigmas complejos como la computación con ADN o la computación cuántica, ya que su objetivo es mantener un diseño que pueda mapearse de forma sencilla y directa al hardware a nivel de compuertas lógicas.
- **No requiere un entorno pesado**: A diferencia del paradigma orientado a objetos, BASS no necesita compiladores, librerías complejas o IDEs, ya que los componentes son autónomos y se autogestionan.

### 5. Beneficios y Aplicación Práctica

El resultado de este enfoque es un entorno de software con ventajas significativas:

- **Eficiencia en el acceso y gestión**: La estructura lineal y de tamaño fijo permite un acceso y recuperación de datos muy rápidos, ideales para implementarse en hardware.
- **Sin recolección de basura (Garbage Collection)**: Como todos los componentes tienen un TTL y se eliminan al expirar, no hay necesidad de procesos de limpieza de memoria, lo que reduce la sobrecarga del sistema.
- **Conservación de energía y recursos**: Los recursos se utilizan solo cuando son necesarios y se liberan rápidamente, lo que conduce a un ahorro sustancial de energía.
- **Viabilidad demostrada**: Una simulación del modelo, aplicada a la gestión de memoria, demostró que el esquema es viable y puede **reducir los costos operativos en comparación con algoritmos tradicionales** como LRU (Least Recently Used).

![[Pasted image 20260109113719.png]]
![[Pasted image 20260109113910.png]]
![[Pasted image 20260109115011.png]]
![[Pasted image 20260109115415.png]]
![[Pasted image 20260109115718.png]]
