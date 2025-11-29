#CitaLatex 
@inproceedings{Mei2015ATSSoftware,
  title = {ATS Software Framework Design Pattern and Application},
  url = {http://dx.doi.org/10.1109/IMCCC.2015.37},
  DOI = {10.1109/imccc.2015.37},
  booktitle = {2015 Fifth International Conference on Instrumentation and Measurement,  Computer,  Communication and Control (IMCCC)},
  publisher = {IEEE},
  author = {Mei,  Yuan and Lingjie,  Fan},
  year = {2015},
  month = sep,
  pages = {141–146}
}

Referencia del archivo original: `(Yuan Mei) ATS Software Framework Design Pattern and Application.pdf` [[(Yuan Mei) ATS Software Framework Design Pattern and Application.pdf]]

El documento seleccionado para el análisis es el artículo **"ATS Software Framework Design Pattern and Application"** (Patrón de Diseño y Aplicación de un Marco de _Software_ ATS), cuyos autores son Yuan Mei y Fan Lingjie.

Este trabajo presenta un **patrón de diseño general** para desarrollar un marco de _software_ para **Sistemas de Prueba Automáticos (ATS)** que sea independiente del _hardware_. El objetivo es abordar la creciente complejidad y el gran tamaño del _software_ ATS, lo que hace que los métodos de desarrollo tradicionales resulten ineficientes y difíciles de mantener, extender y reutilizar.

### Resumen Completo del Documento

**1. Contexto y Problema:** Un ATS es un sistema que completa tareas de medición complejas bajo instrucciones de control de programa. Aunque el _hardware_ es la base del ATS, el _software_ es el alma, y su importancia ha crecido tanto que existe la idea de "el _hardware_ será reemplazado por el _software_". Con la estandarización del _hardware_, el _software_ ATS se ha vuelto más grande y complejo. Los métodos de desarrollo tradicionales (como los orientados a procesos) ya no son aplicables económicamente, y conducen a largas repeticiones de trabajo, deuda técnica y dificultades en el mantenimiento y la reutilización. El concepto de **marco de _software_ (_software framework_)** es la forma más efectiva de reutilizar el diseño de un sistema o parte de él, combinando la reutilización del diseño y la reutilización del código.

**2. Patrón de Desarrollo Propuesto para ATS (ATS Software Framework Design Pattern):** El _paper_ propone un patrón de desarrollo que se basa en la experiencia existente en ATS, combinado con teorías de marcos de _software_ y métodos de ingeniería de _software_. El objetivo es permitir a los desarrolladores construir rápidamente marcos de _software_ de dominio.

El patrón de desarrollo sigue una secuencia de pasos clave:

- **Análisis del Sistema y Modelos Comunes:** Primero, se debe analizar el sistema para obtener los **módulos de función comunes**. El principio más importante aquí es **empaquetar la parte cambiante** para aumentar la independencia entre los módulos y mejorar la reusabilidad.
- **Modelado e Implementación de Funciones:** Los modelos de función se describen utilizando el **Lenguaje de Modelado Unificado (UML)**. UML proporciona soporte para la modelización y visualización en todas las etapas. Durante el diseño de módulos, se debe prestar atención al **acoplamiento flexible** (_loose coupling_), la modificabilidad y la escalabilidad. Al implementar los módulos funcionales, se utilizan **bibliotecas de clases** y **componentes definidos por el usuario**.
    - **Bibliotecas de Clases:** Se desarrollan siguiendo el principio de **una clase, una función** y estructuras jerárquicas claras, a menudo utilizando una **arquitectura de 3 capas (3-tier architecture)** (capa de Presentación, Lógica de Negocio y Acceso a Datos) como referencia para reducir el acoplamiento.
    - **Componentes:** Los problemas comunes deben resumirse en **Patrones de Diseño** relevantes para acumular y reutilizar la experiencia. A diferencia de la reutilización solo conceptual de las bibliotecas de clases, la tecnología de componentes permite la **reutilización de todo el módulo de programación de función específica**. Los componentes se desarrollan en formas simples y visuales (ej. un controlador de visualización de ondas) y se **incrustan en la plataforma de desarrollo** (ej. Visual Studio 2010) como controladores de usuario.
- **Diseño del Marco Jerárquico:** La estructura del marco de _software_ y sus módulos se organizan con referencia al patrón **MVC (Model View Controller)** para reducir el acoplamiento y aumentar la mantenibilidad y extensibilidad.
- **Prueba y Mejora Continua:** El marco debe ser probado y modificado constantemente, ya sea activamente (buscando defectos) o **pasivamente (desarrollando aplicaciones específicas bajo el marco y obteniendo _feedback_)**. El principio de **composición** se prefiere sobre la herencia para reducir la complejidad.

**3. Aplicación y Resultados (Sistema de Prueba CAN):** El patrón se aplicó en el desarrollo de un marco de _software_ para un **Sistema de Prueba CAN (Controller Area Network) multicanal**.

- **Reutilización y Adaptación:** La aplicación permitió reutilizar modelos existentes (ej., controlador de gestión de datos, comunicación) y la rápida integración de modelos nuevos (ej., modelo de obtención de ondas, análisis de protocolos). Los componentes desarrollados, como el controlador de visualización de ondas, se incrustaron en Visual Studio 2010 y se reutilizaron visualmente mediante el método de arrastrar.
- **Impacto en la Eficiencia:** La comparación del tiempo de trabajo (días de trabajo) entre el desarrollo con y sin el marco (basado en proyectos anteriores similares) mostró una **distinta ventaja y una reducción obvia del ciclo de desarrollo y el costo** al trabajar bajo el marco propuesto. El desarrollo bajo el marco fue más rápido.
- **Mejora Continua:** El desarrollo de la aplicación específica de CAN proporcionó retroalimentación esencial para mejorar y expandir el marco, asegurando que los componentes se volvieran más ricos para futuros desarrollos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la eficacia del patrón de diseño de marco de _software_ para ATS se fundamentan en las siguientes ideas clave:

1. **La Reutilización Efectiva de ATS Requiere la Combinación de Reutilización del Diseño y Reutilización del Código a Través de un Marco Estructurado:** La conclusión de que el marco mejora la eficiencia se basa en que el **marco de _software_ proporciona reutilización del sistema completo**, desde el diseño hasta la implementación, no solo reutilización de código simple como las bibliotecas de clases. Esto se logra mediante la adopción de una **estructura jerárquica** (ej., MVC) que garantiza la **modificabilidad y la escalabilidad**.
2. **La Transformación de la Reutilización Conceptual en Reutilización Visual y Práctica Acelera Significativamente el Desarrollo:** La conclusión sobre la rápida reducción del ciclo de desarrollo se basa en la adopción de la **tecnología de componentes** y la **incrustación de estos componentes** (módulos funcionales completos, como el controlador de visualización de ondas) **directamente en la plataforma de desarrollo** (ej., Visual Studio 2010). Esto permite la reutilización de forma visual y de arrastrar, lo que es más eficiente que la reutilización solo abstracta.
3. **La Acumulación Continua de Experiencia Mediante Patrones de Diseño y Retroalimentación Garantiza la Mejora de la Calidad del Código:** La conclusión sobre la alta calidad y solidez del _software_ se fundamenta en la exigencia de **resumir los problemas comunes en Patrones de Diseño**. Además, la **retroalimentación** obtenida al desarrollar aplicaciones específicas bajo el marco es crucial para **modificar, acumular y expandir** constantemente el marco, haciéndolo más robusto para futuros usos.

---

### Valor del Paper

El artículo **"ATS Software Framework Design Pattern and Application"** tiene un valor práctico y metodológico significativo, particularmente en el dominio de los Sistemas de Prueba Automáticos:

- **Solución Específica para el Dominio (ATS):** El _paper_ aborda la necesidad de un patrón de desarrollo específico para el _software_ ATS, que, a diferencia del _software_ de propósito general, tiene problemas particulares que dificultan la aplicación de técnicas de marcos genéricos.
- **Integración de Buenas Prácticas de Ingeniería:** Proporciona una metodología sistemática que integra varias prácticas de ingeniería de _software_ probadas (UML para modelado, 3-tier architecture, MVC para estructura, y Patrones de Diseño) en un patrón coherente para el desarrollo de ATS.
- **Validación Cuantitativa y Práctica:** Demuestra la efectividad del patrón mediante una aplicación real (Sistema de Prueba CAN multicanal) y presenta una **comparación de la carga de trabajo** que verifica la reducción significativa en el tiempo y el costo de desarrollo.
- **Enfoque en la Reutilización Extensiva:** El énfasis en la reutilización de diseño, modelos, componentes y código—y la instrucción de incrustar componentes para la reutilización visual—hace que este marco sea altamente relevante y práctico para la producción industrial.

El valor de este _paper_ es que no solo propone un plano conceptual (el marco), sino que también proporciona las **instrucciones de montaje** para ese dominio específico (ATS), con pasos detallados sobre cómo construir y usar los componentes (ej. incrustándolos en Visual Studio). Esto transforma el desarrollo de _software_ ATS de una tarea artesanal repetitiva a un **proceso industrializado y modular**, garantizando que cada nuevo sistema de prueba herede la calidad y la eficiencia del trabajo previo.
