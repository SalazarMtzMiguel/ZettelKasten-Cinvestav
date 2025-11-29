#CitaLatex 
@inproceedings{Chang2021,
  title = {Invited: Hardware/Software Co-Synthesis and Co-Optimization for Autonomous Systems},
  url = {http://dx.doi.org/10.1109/DAC18074.2021.9586147},
  DOI = {10.1109/dac18074.2021.9586147},
  booktitle = {2021 58th ACM/IEEE Design Automation Conference (DAC)},
  publisher = {IEEE},
  author = {Chang,  Wanli and Zhao,  Shuai and Burton,  Simon and Wang,  Haitong and Chen,  Ting and Chen,  Nan and Audsley,  Neil},
  year = {2021},
  month = dec,
  pages = {1319–1322}
}

Referencia del archivo original: `(Wanli Chang) Invited Hardware Software Co-Synthesis and Co-Optimization for Autonomous Systems.pdf` [[(Wanli Chang) Invited Hardware Software Co-Synthesis and Co-Optimization for Autonomous Systems.pdf]]

El documento seleccionado es el artículo invitado **"Hardware/Software Co-Synthesis and Co-Optimization for Autonomous Systems"** (Co-Síntesis y Co-Optimización de Hardware/Software para Sistemas Autónomos), cuyos autores son Wanli Chang, Shuai Zhao, Simon Burton, Haitong Wang, Ting Chen, Nan Chen, y Neil Audsley.

Este trabajo aborda la insuficiencia de los métodos de diseño tradicionales, que consideran el _hardware_ y el _software_ de manera separada, para cumplir con los requisitos estrictos (temporales, de seguridad y de eficiencia de costos) de los modernos sistemas autónomos.

### Resumen Completo del Documento

**1. Problema y Limitaciones del Diseño Tradicional:** Los sistemas autónomos modernos integran funcionalidades cada vez más complicadas en la misma plataforma multinúcleo. Su diseño requiere métodos de nivel de _hardware_ (ej. gestión de caché y memoria) y de nivel de _software_ (ej. asignación de prioridad y distribución de tareas).

El enfoque tradicional, que separa el diseño de _hardware_ (H) y _software_ (S), ya no es suficiente. La eficacia de un diseño de _hardware_ (ej. una arquitectura de memoria con mayor ancho de banda) puede depender de estrategias de asignación de tareas a nivel de _software_. Del mismo modo, los algoritmos de _software_ (ej. algoritmos de prioridades basados en holgura) a menudo ignoran la contención subyacente del _hardware_ (ej. memoria y bus), lo que socava su efectividad. Cuando los métodos H/S se aplican por separado, el rendimiento general puede ser significativamente inferior a lo esperado debido a posibles colisiones. Por lo tanto, los métodos tradicionales no pueden ofrecer sistemas confiables y de alto rendimiento que cumplan con los crecientes requisitos de latencia, previsibilidad de tiempo y eficiencia de costos.

**2. Solución Propuesta: Marco de Co-Síntesis y Co-Optimización H/S (ODR):** El _paper_ propone una solución de diseño novedosa que **co-sintetiza y co-optimiza** las soluciones de diseño de _software_ y _hardware_ para lograr el máximo rendimiento del sistema.

- **Interconexiones H/S:** El primer paso es analizar las interconexiones entre el _software_ y el _hardware_. Estas interconexiones se representan como un **modelo de correlación multidimensional** que captura los efectos resultantes en el rendimiento del sistema (ej. latencia, consumo de energía y costo del _hardware_) cuando se aplica una combinación específica de soluciones H/S.
    - **Desafío Clave:** Es difícil construir interconexiones H/S flexibles para soportar el análisis de múltiples métodos candidatos H/S. Se sugiere aplicar **análisis estático** (ej. Análisis de Tiempo de Respuesta o RTA) o **métodos de aprendizaje basados en datos** (_data-driven learning methods_) para predecir el rendimiento en casos de sistemas complejos donde el análisis estático es difícil (ej. fallos de caché en caché compartida).
    - **Correlaciones entre Interconexiones:** También es fundamental analizar las correlaciones bidireccionales entre las interconexiones individuales (ej., cómo una política de reemplazo de caché afecta la demanda de acceso a memoria y la contención del bus).
- **Marco de Co-Optimización:** El marco propuesto utiliza las interconexiones H/S y las especificaciones del sistema para guiar la optimización.
    - **Proceso de Co-Síntesis:** Inicialmente, el marco realiza un **Análisis de Compatibilidad** para inicializar un conjunto de combinaciones de diseño compatibles a partir de los métodos candidatos de _hardware_ y _software_. Esto implica verificar si una combinación satisface los objetivos de optimización y si los diseños son compatibles (de lo contrario, se devuelve un gran valor de penalización).
    - **Proceso de Co-Optimización:** Posteriormente, se realiza un procedimiento de optimización (ej., usando un **Algoritmo Genético o GA**). Las interconexiones H/S sirven como **función de aptitud (_fitness function_)** para medir el rendimiento (ej. latencia, costo) de las soluciones sintetizadas. Este proceso itera para mejorar las soluciones.
    - **Resultado Final:** Una vez finalizada la optimización, se obtiene una **aproximación del Frente de Pareto**, que contiene un conjunto de co-diseños H/S no dominados que son óptimos para uno o más objetivos.

**3. Desafíos y Trabajo Futuro:** Se identifican desafíos clave, como la dificultad de establecer interconexiones flexibles, la complejidad de analizar las correlaciones bidireccionales entre interconexiones y la necesidad de **escalabilidad** para incluir nuevos componentes de diseño. Se sugiere aplicar algoritmos evolutivos para automatizar el proceso de derivación de análisis estáticos y la automatización completa de la recopilación y análisis de datos para los modelos basados en aprendizaje. Los autores concluirán implementando y evaluando la eficacia de este marco contra los enfoques de diseño tradicionales en trabajos futuros.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de co-diseño y la utilidad del marco ODR se fundamentan en las siguientes ideas clave:

1. **Existe una Interconexión Crítica y Subestimada entre las Elecciones de Diseño H/S, cuya Separación Conduce a un Rendimiento Subóptimo:** La conclusión de que los métodos tradicionales son insuficientes se basa en el reconocimiento de que las decisiones de _software_ (ej. asignación de tareas, prioridad) y las decisiones de _hardware_ (ej. gestión de caché, número de núcleos) **afectan conjuntamente la ejecución del sistema**. Por ejemplo, aumentar los núcleos (_hardware_) sin algoritmos de asignación de tareas eficientes (_software_) intensifica la contención de recursos compartidos. El valor de este trabajo es proponer un modelo de **Interconexiones H/S** para capturar estos efectos de interacción multidimensionales.
2. **La Optimización de Sistemas Autónomos de Múltiples Objetivos Requiere un Proceso Sintetizado que Aborde Primero la Compatibilidad y Luego la Aptitud:** La conclusión de que el marco ODR ofrece soluciones de alta calidad se basa en el proceso de dos fases: **Co-Síntesis** y **Co-Optimización**. La **Co-Síntesis** (Análisis de Compatibilidad) garantiza que solo se prueben combinaciones de H/S compatibles, eliminando soluciones inviables _antes_ de la optimización. La **Co-Optimización** utiliza un algoritmo heurístico (ej. GA) donde las **Interconexiones H/S sirven como función de aptitud** para guiar la búsqueda hacia el Frente de Pareto de soluciones óptimas.
3. **La Complejidad de los Sistemas Modernos Exige que el Análisis de Interconexiones H/S Combine Métodos Estáticos Formales con Modelos de Aprendizaje Basados en Datos:** La conclusión sobre la construcción de interconexiones se fundamenta en la dualidad del desafío. Para escenarios manejables, se debe aplicar **análisis estático formal** (ej. RTA). Sin embargo, la dificultad de analizar estáticamente la complejidad de los sistemas autónomos (ej. fallos de caché compartida) hace que los **métodos de aprendizaje basados en datos** (que se centran en el comportamiento de alto nivel) sean atractivos para la predicción del rendimiento, garantizando la aplicabilidad del marco a sistemas complejos.

---

### Valor del Paper

El artículo **"Hardware/Software Co-Synthesis and Co-Optimization for Autonomous Systems"** es de un valor significativo para la Ingeniería de Sistemas Embebidos y Sistemas Autónomos:

- **Aborda una Limitación Fundamental:** El _paper_ identifica y propone una solución al principal impedimento del diseño de sistemas complejos: la **separación H/S**. Al proponer un enfoque de co-síntesis, sienta las bases para sistemas que pueden cumplir con requisitos estrictos de rendimiento y previsibilidad temporal.
- **Marco de Optimización Riguroso:** Presenta un **marco conceptual formal** (ODR) que define cómo utilizar la optimización multi-objetivo (ej. GA) para navegar por el vasto espacio de diseño de combinaciones H/S, lo que permite la producción sistemática de soluciones de alta calidad que maximizan el rendimiento.
- **Integración de Metodologías:** Proporciona una hoja de ruta para integrar **métodos de análisis formal** (RTA) y **técnicas de IA/Aprendizaje** (métodos basados en datos) dentro de un único modelo de interconexión para hacer frente a la escalabilidad y la complejidad del análisis de sistemas modernos.

El marco ODR es esencialmente la **supervisión de un "matrimonio"** entre el _hardware_ y el _software_. En lugar de que el _software_ construya una casa sin saber qué herramientas (hardware) tiene disponibles y viceversa, este marco asegura que las decisiones del _hardware_ (los materiales de construcción) y del _software_ (los planos y la logística) se tomen de forma conjunta, garantizando que el sistema resultante sea el más eficiente, predecible y rentable posible.
