#CitaLatex 
@inproceedings{adriaensen2016towards,
  title={Towards a White Box Approach to Automated Algorithm Design.},
  author={Adriaensen, Steven and Now{\'e}, Ann},
  booktitle={IJCAI},
  pages={554--560},
  year={2016}
}


Referencia del archivo original: `(Steven Adriaensen) Towards a White Box Approach to Automated Algorithm Design.pdf` [[(Steven Adriaensen) Towards a White Box Approach to Automated Algorithm Design.pdf]]

El documento seleccionado para el análisis es el artículo **"Towards a White Box Approach to Automated Algorithm Design"** (Hacia un Enfoque de Caja Blanca para el Diseño Automatizado de Algoritmos), escrito por Steven Adriaensen y Ann Nowé.

Este trabajo propone un nuevo paradigma de **diseño automatizado de algoritmos (ADP)** que supera las limitaciones de los métodos tradicionales de configuración de algoritmos de "caja negra" (_black box_), al reformular el ADP como un **Proceso de Decisión de Markov (MDP)**.

### Resumen Completo del Documento

**1. Contexto y Problema (Limitaciones del Diseño Tradicional y de Caja Negra):** Tradicionalmente, el diseño de algoritmos para problemas del mundo real se realiza de forma **manual, _ad hoc_, y mediante prueba y error**, lo que lo convierte en un proceso tedioso, costoso y que a menudo produce resultados mediocres.

El paradigma **Programación por Optimización (Programming by Optimization, o PbO)** se propuso como una alternativa, donde las elecciones algorítmicas se dejan abiertas, creando un gran espacio de diseño, y se utilizan métodos de configuración de algoritmos (como ParamILS o iRace) para generar automáticamente la mejor instancia algorítmica para un caso de uso específico.

Sin embargo, los configuradores contemporáneos (optimizadores de caja negra) tienen una debilidad crítica: tratan el rendimiento del algoritmo como una **"caja negra"**. En este modelo, una función de costo simplemente mapea una configuración y una entrada a un valor de costo. Estos optimizadores no explotan el hecho de que el mapeo es una consecuencia de la ejecución del algoritmo, es decir, que las decisiones de diseño afectan la trayectoria de ejecución de una entrada de una manera particular que luego se relaciona con el costo de ejecución.

**2. Solución Propuesta: El Enfoque de Caja Blanca (White Box Approach):** Los autores proponen un enfoque alternativo de **caja blanca**. Este enfoque reformula el ADP como un **Proceso de Decisión Secuencial** modelado como un **Proceso de Decisión de Markov (MDP)**.

- **Formalización como MDP:** El ADP de caja blanca se formaliza como el MDP $\text{MDP}_{\text{adp}}$.
    - **Estados (S):** Los estados son descripciones instantáneas de la Máquina de Turing extendida que incluyen el punto de elección (design choice) que se acaba de alcanzar y el contenido de la cinta (contexto).
    - **Acciones (A):** Las acciones corresponden a las alternativas de decisión definidas para cada punto de elección.
    - **Recompensa (R):** La función de recompensa $\rho$ representa la contribución de una transición específica al rendimiento general del algoritmo.
- **Contexto y Política:** La combinación del contenido de la cinta y la posición de la cabeza se denomina **contexto** en el que debe tomarse la decisión de diseño. Una solución a este MDP es una **política $\pi$**.

**3. Beneficios del Enfoque de Caja Blanca:**

El nuevo enfoque de caja blanca introduce dos beneficios principales al exponer la estructura interna de la ejecución del algoritmo:

1. **Acelerar la Meta-optimización (_Speed up Meta-optimization_):**
    
    - La evaluación de caja blanca proporciona una lista de tuplas $(s_i, a_i, r_i)$ (estado, acción, recompensa) durante la ejecución.
    - Esta información detallada (de caja blanca) se puede **generalizar a través de diferentes diseños y entradas**, mejorando la eficiencia de los datos. Los datos pueden compartirse a través de configuraciones siempre que tomen la misma decisión en los estados encontrados hasta ese momento.
    - Esto permite una **muestra más informada**, lo que acelera el proceso de optimización. Por ejemplo, el agente PURS (Propósito de Prueba de Concepto) busca activamente caminos de ejecución no explorados, encontrando rápidamente la solución óptima en el primer _benchmark_.
2. **Diseños Mejores y Adaptativos (_Better/Adaptive Designs_):**
    
    - Mientras que el ADP de caja negra solo considera **configuraciones estáticas**, la formulación de caja blanca considera **diseños adaptativos** dependientes del **contexto de ejecución** (Contexto $\times \Phi \rightarrow A$) como candidatos a solución.
    - El ADP de caja blanca **engloba el problema de selección de algoritmos**. Permite cambiar las decisiones de diseño dinámicamente, incluso si la entrada es la misma.
    - El hallazgo de la política óptima $\pi^*$ garantiza el **rendimiento óptimo en cualquier entrada y distribución $D$**, evitando problemas de sobreajuste (_overfitting_).

**4. Implementación y Evaluación (Prueba de Concepto):** Los autores implementaron un optimizador de caja blanca (**WB**) en una biblioteca de Java para una variante "ajena al contexto" (_context-oblivious_) del ADP ($\text{COADP}_{\text{adp}}$).

- **Benchmark 1 (Acelerar la Optimización):** Demostró que el optimizador de caja blanca (WB-PURS) encontró la solución óptima en $\approx 100$ evaluaciones, significativamente más rápido que el optimizador de caja negra (BB-URS) que requirió $\approx 1$ millón de evaluaciones. Esto se debe a la capacidad de la caja blanca para **generalizar información entre configuraciones similares**.
- **Benchmark 2 (Diseños Adaptativos):** Demostró que WB-URS encontró la **política dinámica óptima**, que acumuló una recompensa de 5, mientras que BB-URS (que solo considera configuraciones estáticas) solo pudo alcanzar una recompensa esperada de 1.

**5. Conclusión:** El marco formal del MDP para el ADP de caja blanca subsume problemas como la selección de algoritmos, la parametrización y la adaptación dinámica. Esto permite aprovechar las soluciones propuestas a lo largo de seis décadas de investigación de MDP (como el **Aprendizaje por Refuerzo, o RL**) para automatizar el diseño de algoritmos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el valor del enfoque de caja blanca y la necesidad de este nuevo marco se fundamentan en las siguientes ideas clave:

1. **El Diseño de Algoritmos es Intrínsecamente un Proceso de Decisión Secuencial, no una Simple Mapeo de Caja Negra:** La conclusión principal del trabajo (reformular el ADP como MDP) se basa en el argumento de que el enfoque de caja negra pierde información crucial porque no modela las **relaciones intrínsecas** entre las decisiones de diseño y su contribución al rendimiento del algoritmo. La **formalización como MDP** permite capturar esta naturaleza secuencial.
2. **La Exposición de las Trayectorias de Ejecución Permite la Generalización del Conocimiento a Través de Configuraciones e Inputs:** La conclusión de que el enfoque de caja blanca acelera la meta-optimización se fundamenta en que, al obtener tuplas $(s_i, a_i, r_i)$ en tiempo de ejecución, el conocimiento puede ser **reutilizado y compartido** entre diferentes ejecuciones. Esto permite una **muestra más informada** (ej. PURS) y reduce el error de estimación (sobreconfianza, u _overconfidence_) inherente a los optimizadores de caja negra.
3. **El Rendimiento Óptimo Requiere Diseños Adaptativos y Dependientes del Contexto, que no Pueden Ser Hallados por Optimizadores Estáticos:** La conclusión de que el enfoque de caja blanca genera mejores diseños se basa en el hallazgo de que la política $\pi^*$ óptima es una **configuración dependiente del contexto de ejecución**. Dado que el ADP de caja blanca considera este **superconjunto de diseños adaptativos**, es capaz de resolver el problema de selección de algoritmos de manera dinámica (_on-the-fly_), algo que los configuradores estáticos de caja negra no pueden lograr.

---

### Valor del Paper

El artículo **"Towards a White Box Approach to Automated Algorithm Design"** es de **alto valor teórico y fundacional** para el futuro del diseño automatizado de algoritmos:

- **Marco Teórico Unificado y Formal:** Proporciona el primer marco general y formal (la extensión de la Máquina de Turing y la formulación $\text{MDP}_{\text{adp}}$) que subsume los problemas de selección, parametrización y adaptación dinámica de algoritmos. Esto sienta las bases para un **enfoque más unificado** en el campo.
- **Superación de las Limitaciones de Caja Negra:** Al pasar de configuraciones estáticas (_black box_) a **políticas dependientes del contexto de ejecución (_white box_)**, el trabajo aborda las principales debilidades de los enfoques existentes de PbO, como el riesgo de sobreajuste y la incapacidad para gestionar decisiones dinámicas.
- **Viabilidad Demostrada:** Aunque la implementación completa es un desafío futuro, la **Prueba de Concepto** con los micro-_benchmarks_ demuestra empíricamente los beneficios prometidos, tanto en la velocidad de optimización (reducción masiva de evaluaciones con PURS) como en la calidad del diseño (encontrando la política dinámica óptima que los métodos estáticos no pueden).

El enfoque de caja negra tradicional era como intentar optimizar un motor ajustando solo la configuración externa (la cantidad de gasolina y el tiempo de encendido), sin mirar lo que sucede en los cilindros. El enfoque de **Caja Blanca basado en MDP** es como instalar sensores en cada parte de la máquina para **medir exactamente la recompensa y el estado después de cada decisión interna**. Esto no solo permite optimizar el motor de manera más rápida y precisa, sino que también permite diseñar un motor que **cambia activamente sus componentes internos** (adaptación dinámica) en función del contexto exacto de la ejecución (por ejemplo, ajustando la mezcla de combustible en tiempo real según la humedad y la temperatura detectadas en el momento preciso de la combustión).
