#CitaLatex 
@article{Qu2020GeneralCombinatorial,
  title = {The General Combinatorial Optimization Problem: Towards Automated Algorithm Design},
  volume = {15},
  ISSN = {1556-6048},
  url = {http://dx.doi.org/10.1109/MCI.2020.2976182},
  DOI = {10.1109/mci.2020.2976182},
  number = {2},
  journal = {IEEE Computational Intelligence Magazine},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Qu,  Rong and Kendall,  Graham and Pillay,  Nelishia},
  year = {2020},
  month = may,
  pages = {14–23}
}

Referencia del archivo original: `(Rong Qu) The General Combinatorial Optimization Problem Towards Automated Algorithm Design.pdf` [[(Rong Qu) The General Combinatorial Optimization Problem Towards Automated Algorithm Design.pdf]]

El documento seleccionado para el análisis es el _position paper_ **"The General Combinatorial Optimization Problem: Towards Automated Algorithm Design"** (El Problema General de Optimización Combinatoria: Hacia el Diseño Automatizado de Algoritmos), escrito por Rong Qu, Graham Kendall y Nelishia Pillay.

Este trabajo define un nuevo problema de optimización combinatoria, denominado **Problema General de Optimización Combinatoria (GCOP)**, cuyo objetivo es establecer un **nuevo estándar formal** para la definición y el diseño automatizado de algoritmos de búsqueda genéricos. GCOP modela el problema del diseño de algoritmos como un problema de optimización combinatoria (COP) en sí mismo.

### Resumen Completo del Documento

**1. Contexto y Problema (Necesidad de Estandarización):** Los Problemas de Optimización Combinatoria (COP) —que involucran la asignación de valores discretos a un conjunto finito de variables de decisión, sujeto a restricciones, para optimizar una función objetivo— se abordan típicamente mediante algoritmos diseñados manualmente, lo cual es laborioso y propenso a sesgos.

A pesar de los avances en la computación evolutiva y la optimización, aún no existen **estándares formales** que sustenten el diseño automatizado de algoritmos (AAD). Los autores buscan llenar este vacío estableciendo el GCOP.

**2. Taxonomía del Diseño Automatizado de Algoritmos (AAD):** El artículo define formalmente una taxonomía para distinguir entre tres líneas de investigación en AAD, que se diferencian por el espacio de decisión que exploran:

- **Configuración Automatizada de Algoritmos:** Configurar automáticamente los parámetros de un algoritmo objetivo predefinido (utiliza un enfoque _top-down_).
- **Selección Automatizada de Algoritmos:** Seleccionar automáticamente el mejor algoritmo de un portafolio dado para un conjunto de instancias de problema (utiliza un enfoque _top-down_).
- **Composición Automatizada de Algoritmos:** Generar algoritmos nuevos y genéricos mediante la composición flexible y automática de heurísticas o componentes algorítmicos (utiliza un enfoque _bottom-up_).

**3. Definición y Modelo del GCOP:** El GCOP es un COP donde las **variables de decisión** son un conjunto de **componentes algorítmicos paramétricos** ($a \in A$). La solución del GCOP ($c \in C$) es una **composición algorítmica** de estos componentes, que representa un nuevo algoritmo de búsqueda genérico.

- **Variables de Decisión (Dominio $A$):** Son componentes algorítmicos básicos ($a$), incluyendo operadores con heurísticas, ajustes de parámetros y criterios de aceptación. La fuente define el dominio básico $\text{A}_{1.0}$, que modulariza componentes básicos existentes en operadores ($\text{A}_{1.0}^o$) y criterios de aceptación ($\text{A}_{1.0}^a$).
- **Función Objetivo del GCOP ($F(c)$):** Mide el rendimiento de la composición algorítmica $c$ para resolver el problema de optimización subyacente $p$. Esto se relaciona con la calidad de la solución $s$ del problema $p$ a través de una función de mapeo $M$. $F(c)$ puede ser la evaluación directa de la solución $f(s)$ o medidas más sofisticadas, como recompensas o puntuaciones agregadas que reflejan el rendimiento a corto plazo de los componentes.
- **Diseño Genérico:** El GCOP busca composiciones óptimas $c$ que, a diferencia de la configuración o selección, **generan nuevos algoritmos genéricos** que son potencialmente muy diferentes de los algoritmos diseñados manualmente.

**4. Aplicación y Demostración (Estandarización de Algoritmos):** El GCOP se demuestra como un estándar que puede modelar una gran variedad de algoritmos de búsqueda y **selección de hiperheurísticas** existentes en un marco unificado.

- **Decomposición:** El principio central es descomponer los algoritmos en sus **componentes algorítmicos elementales** más básicos, que luego pueden ser compuestos y optimizados de manera más flexible.
- **Casos de Estudio:** El modelo GCOP, utilizando el dominio $\text{A}_{1.0}$ y algunos componentes específicos de problemas ($\text{A}_p$), se aplica para formalizar la definición de varias hiperheurísticas de selección para dos COPs ampliamente estudiados: el **Problema de Enrutamiento de Vehículos (VRP)** y los **Problemas de Asignación de Turnos de Enfermeras (NRP)**. Esto demuestra que la mayoría de las heurísticas de bajo nivel en estos dominios pueden ser definidas por el conjunto básico de componentes $A$.

**5. Direcciones Futuras:** El GCOP abre nuevas líneas de investigación desafiantes:

- **Generalidad y Reutilización:** Los algoritmos diseñados automáticamente por GCOP pueden evolucionar para resolver diferentes problemas $p$, abordando así los problemas de **generalidad** (resolución de COPs interdominio) y la poco explorada **reutilización** de algoritmos.
- **Evaluación Extendida:** La función objetivo $F$ de GCOP puede extenderse para incluir múltiples objetivos, como medir la **generalidad, la reutilización y el tiempo computacional**, además de la calidad de la solución.
- **Análisis Formal:** Se necesitan investigaciones teóricas avanzadas, incluido el **análisis del paisaje de búsqueda** de $C$ (el espacio de diseño de algoritmos), para proporcionar conocimientos sobre el diseño automatizado de algoritmos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de los autores sobre el valor del GCOP como un nuevo estándar y su potencial para impulsar el AAD se fundamentan en las siguientes ideas clave:

1. **El Diseño de Algoritmos de Búsqueda Debe Ser Modelado Formalmente como un Problema de Optimización Combinatoria (COP) en Sí Mismo:** La conclusión de establecer el GCOP se basa en la necesidad de un **estándar unificado y formal** para el AAD. Al definir los **componentes algorítmicos ($a$) como variables de decisión** de un nuevo COP, GCOP permite optimizar rigurosamente la composición algorítmica.
2. **La Decomposición Algorítmica en Componentes Elementales Básicos es la Clave para Generar Algoritmos Genéricos Nuevos y Flexibles:** La conclusión de que GCOP conduce a nuevos algoritmos se basa en el principio _bottom-up_ de la **composición automatizada**. Al trabajar con los componentes más básicos ($A_{1.0}$) en lugar de plantillas de algoritmos fijos, GCOP libera el espacio de búsqueda para **diseñar algoritmos nuevos y genéricos** que no son meras variantes de una familia existente, superando las limitaciones de la configuración y la selección.
3. **Un Modelo Unificado es Esencial para el Análisis Sistemático y la Promoción de la Generalidad y Reutilización del Conocimiento de Diseño:** La conclusión de que GCOP abrirá nuevas direcciones de investigación se fundamenta en su capacidad para modelar un gran número de algoritmos existentes dentro de un marco coherente. Esto facilita el **análisis sistemático** de los componentes básicos y sus sinergias, lo que puede conducir a **nuevos conocimientos transferibles** que aborden los desafíos de la **generalidad** y la **reutilización** de los algoritmos diseñados.

---

### Valor del Paper

El artículo **"The General Combinatorial Optimization Problem: Towards Automated Algorithm Design"** es un _position paper_ fundamental con un valor metodológico y conceptual crítico para la investigación en Optimización, Computación Evolutiva y AAD:

- **Estándar Unificador:** Es la **primera propuesta de un estándar formal** en la literatura que define un gran número de algoritmos de búsqueda dentro de un único modelo coherente (GCOP). Esto es esencial para el progreso de la AAD, ya que proporciona una base para la investigación sistemática.
- **Clarificación Taxonómica:** Proporciona una **taxonomía clara y formal** que distingue entre la configuración, la selección y la composición automatizada de algoritmos, resolviendo la ambigüedad en el uso de estos términos en la literatura.
- **Hoja de Ruta para la Investigación Abierta:** El GCOP define explícitamente el diseño de algoritmos como un **problema de optimización multiobjetivo** que puede extenderse para evaluar aspectos no explorados, como la generalidad, la robustez y la reutilización del código de diseño. Esto sienta las bases para futuras investigaciones avanzadas en el campo.

El GCOP es análogo a la creación de un **lenguaje de programación de bajo nivel y estándar para construir algoritmos metaheurísticos**. En lugar de que los científicos compitan comparando grandes programas escritos en diferentes lenguajes (algoritmos fijos), GCOP proporciona un conjunto básico de **instrucciones atómicas ($A_{1.0}$) y una gramática formal** que permite a las máquinas ensamblar automáticamente programas más complejos ($c$). Esto no solo estandariza la comunicación y la experimentación, sino que permite a la IA **descubrir lógica algorítmica completamente nueva** que va más allá de la intuición humana.
