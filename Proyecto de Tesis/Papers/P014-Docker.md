#CitaLatex 
@article{andersonDockerSoftwareEngineering2015,
			title = {Docker [{{Software}} Engineering]},
			author = {Anderson, Charles},
			date = {2015-05-01},
			journaltitle = {IEEE Software, Software, IEEE, IEEE Softw.},
			volume = {32},
			number = {3},
			pages = {102},
			publisher = {IEEE},
			issn = {07407459},
			doi = {10.1109/MS.2015.62},
			url = {https://research.ebsco.com/linkprocessor/plink?id=c5eda358-b8f3-31f0-aedb-1f8a9bcc07a3},
			abstract = {In episode 217 of Software Engineering Radio, host Charles Anderson talks with James Turnbull, a software developer and security specialist who's vice president of services at Docker. Lightweight Docker containers are rapidly becoming a tool for deploying microservice-based architectures.},
			keywords = {Computing and Processing,Docker,Docker containers,Interviews,James Turnbull,microservices,SE Radio,Software development,Software engineering,Software Engineering Radio,Virtual machining}
		}
Lectura basada en: [[(Charles Anderson) Docker.pdf]]


### Resumen del Paper: Entrevista sobre Docker

Este documento es una transcripción de una entrevista con James Turnbull, vicepresidente de servicios en Docker, y se centra en explicar qué es Docker, los problemas que resuelve y las tecnologías subyacentes que lo hacen posible.

---

### 1. ¿Qué es Docker?

Docker es una **tecnología de virtualización por contenedores**, descrita como una "máquina virtual [VM] muy ligera". Su propósito no es solo crear contenedores, sino también ofrecer un **flujo de trabajo para desarrolladores** que facilita la creación, el empaquetado y la distribución de aplicaciones dentro de esos contenedores, asegurando que funcionen de manera consistente en diferentes entornos.

### 2. El Problema que Resuelve

Docker aborda dos problemas fundamentales en el desarrollo y despliegue de software:

- **La ineficiencia de las máquinas virtuales (VMs) tradicionales:** Las VMs son pesadas porque cada una incluye una copia completa de un sistema operativo sobre un hipervisor, lo cual consume recursos (entre un 10-15% de la capacidad del host) y reduce la velocidad y el rendimiento. Docker busca ofrecer un **recurso de cómputo más ligero y ágil**.
- **El problema del "funciona en mi máquina":** Un obstáculo clásico en DevOps es que una aplicación desarrollada en el entorno de un programador falla al ser desplegada en producción porque los entornos no son idénticos. Docker soluciona esto creando **contenedores portátiles** que encapsulan la aplicación y sus dependencias, garantizando que lo que se construye y prueba en desarrollo sea exactamente lo mismo que se ejecuta en producción.

### 3. Conceptos y Tecnologías Clave

Docker se basa en varias tecnologías del kernel de Linux para lograr su eficiencia y aislamiento.

- **Rendimiento y Eficiencia:**
    
    - **Rapidez:** Los contenedores de Docker se inician en una fracción de segundo, a diferencia de los minutos que puede tardar una VM.
    - **Alta Densidad:** Al no tener un hipervisor, los contenedores se ejecutan directamente sobre el sistema operativo del host, lo que permite ejecutar muchos más contenedores en una misma máquina física o virtual. Una investigación de IBM sugiere que un contenedor es, en promedio, **26 veces más rápido que una VM** por transacción.
- **Sistema de Archivos: Imágenes, Capas y _Copy-on-Write_**:
    
    - Los contenedores se construyen a partir de **imágenes**, que son como plantillas de solo lectura que contienen las librerías, binarios y el código de la aplicación.
    - Docker utiliza un sistema de archivos en capas (_union file system_) con una tecnología llamada _**copy-on-write**_. Cuando se realiza un cambio (ej. instalar un paquete o añadir código), en lugar de modificar la imagen base, Docker crea una nueva capa encima que solo contiene esa diferencia.
    - **Ejemplo:** Si tienes una imagen base y le añades el código de tu aplicación (que pesa 10 KB), solo se crea una nueva capa de 10 KB. El resto de las capas se reutilizan y se cachean, lo que hace que la reconstrucción de imágenes sea extremadamente rápida y ligera. Este sistema de capas es comparable a los _commits_ en un sistema de control de versiones como Git.
- **Aislamiento: _Namespaces_ y _Control Groups (cgroups)_**:
    
    - _**Namespaces**_: Es una característica del kernel de Linux que aísla los recursos de un proceso. Al crear un contenedor, Docker le asigna sus propios _namespaces_ para procesos, redes, etc., creando una "caja" aislada. Un proceso dentro de un contenedor **no puede ver los procesos que se ejecutan fuera de él**.
    - ***Control Groups (cgroups)***: Esta tecnología permite **gestionar y limitar los recursos** que un contenedor puede utilizar. Por ejemplo, se puede restringir un contenedor a usar solo 128 MB de RAM o limitar su acceso a la red, ofreciendo un control granular similar al que se tiene sobre una VM.
- **Redes (Networking):**
    
    - Cada contenedor tiene su propia interfaz de red virtual y puede ejecutar servicios en puertos estándar (ej. múltiples servidores web en el puerto 80) sin conflictos internos.
    - Por defecto, los puertos no están expuestos al exterior. Para hacerlos accesibles, se mapean los puertos internos del contenedor a puertos en la máquina anfitriona. Docker puede asignar un puerto aleatorio o se puede especificar uno, aunque un puerto del host solo puede mapearse a un contenedor a la vez.
    - Este modelo es muy flexible y escalable, y a menudo se combina con balanceadores de carga (como HAProxy) o herramientas de descubrimiento de servicios (como ZooKeeper o Consul) para gestionar aplicaciones complejas distribuidas en múltiples contenedores.

### 4. Casos de Uso Principales

- **Integración y Despliegue Continuo (CI/CD):** Los desarrolladores pueden replicar entornos de producción complejos en sus portátiles usando contenedores. En sistemas de CI como Jenkins, reemplazar VMs por contenedores reduce drásticamente los tiempos de construcción y prueba (de minutos a segundos), generando un **ahorro de costos significativo**.
- **Alta Capacidad y Escalabilidad:** Al eliminar la sobrecarga del hipervisor, las empresas pueden aprovechar mejor su hardware, ejecutando un número masivo de contenedores (_hyperscale_) en un solo host.

### 5. Visión a Futuro: Docker en Múltiples Hosts

El documento menciona un prototipo llamado **`libswarm`**, diseñado para que los contenedores en diferentes hosts de Docker puedan comunicarse directamente entre sí. Esto abriría la puerta a la construcción de aplicaciones distribuidas complejas con **escalabilidad, autoescalado y redundancia** de forma nativa.

### Conclusión: Ideas Clave para Evaluación

- **Portabilidad y Consistencia:** La idea central es la **portabilidad del entorno de ejecución**. Docker empaqueta la aplicación con sus dependencias, asegurando que funcione igual en cualquier lugar.
- **Eficiencia de Recursos:** Es significativamente **más ligero y rápido que las VMs tradicionales**, lo que permite una mayor densidad de aplicaciones y un uso más eficiente del hardware.
- **Aislamiento basado en el Kernel:** Utiliza tecnologías nativas de Linux (_namespaces_ y _cgroups_) para proporcionar aislamiento sin la sobrecarga de un sistema operativo completo para cada aplicación.
- **Facilitador de DevOps:** Docker es una herramienta clave para las prácticas de DevOps, ya que unifica los entornos de desarrollo y producción y automatiza el flujo de despliegue.
- **Arquitectura en Capas:** Su sistema de archivos _copy-on-write_ es fundamental para su agilidad, permitiendo construir y distribuir imágenes de forma rápida y eficiente.