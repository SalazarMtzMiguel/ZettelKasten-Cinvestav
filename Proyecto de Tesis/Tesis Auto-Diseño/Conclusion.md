
### Propuesta de Conclusión

**Falta de consolidación y diversidad de enfoques** El auto-diseño de sistemas, ya sea concebido como un proceso total o parcial, no se encuentra consolidado bajo un único marco teórico en la literatura actual. Por el contrario, se aborda desde una multiplicidad de perspectivas que intentan darle solución mediante diversas técnicas. Entre estos enfoques destacan las arquitecturas bio-inspiradas, el uso de funciones metaheurísticas (como algoritmos genéticos y optimización por enjambre), y más recientemente, la integración de sistemas multi-agente e Inteligencia Artificial Generativa basada en Modelos de Lenguaje Grande (LLMs).

**Naturaleza conceptual y barreras de implementación (Entrenamiento de IA)** A pesar de la riqueza de estos enfoques, una gran parte de las propuestas permanecen en un nivel conceptual y carecen de casos de estudio rigurosos que demuestren su viabilidad a gran escala o en entornos industriales. Llevar el auto-diseño a la implementación real resulta sumamente complicado, principalmente por los retos inherentes al entrenamiento de la Inteligencia Artificial. Los modelos de aprendizaje profundo y LLMs dependen de conjuntos de datos masivos, imparciales y de alta calidad que, en el ámbito de la ingeniería de software, aún son limitados, sintéticos o poco representativos del mundo real. Además, la naturaleza de "caja negra" de muchas de estas tecnologías dificulta la interpretabilidad y la confianza en las decisiones arquitectónicas que la IA toma por sí sola,.

**El reto de validar cualitativamente el diseño de software** Otro obstáculo crítico para la implementación del auto-diseño es la complejidad de validar algo tan cualitativo y multifacético como el diseño de software. En la ingeniería de software, un mismo problema puede ser resuelto desde múltiples posturas válidas. Las métricas de evaluación tradicionales a menudo no logran capturar principios de ingeniería complejos, el nivel de innovación o la viabilidad práctica de los diseños generados de forma autónoma. Asimismo, la falta de estándares industriales para lenguajes de especificación formal complica aún más la verificación y validación matemática de que el diseño generado cumple estrictamente con los requisitos de seguridad y funcionamiento esperados.

**El camino a seguir** Por todo lo anterior, es evidente que el auto-diseño debe seguir evolucionando para transitar de propuestas teóricas a herramientas más útiles, puntuales y reales en términos de implementación. Para lograr este objetivo, las investigaciones futuras deberán enfocarse en superar la brecha entre la teoría y la práctica, mejorando la escalabilidad de los modelos, garantizando la interpretabilidad de las decisiones de diseño, y fomentando una colaboración estrecha entre la IA y los ingenieros humanos dentro de los flujos de trabajo existentes,, permitiendo así que el auto-diseño se convierta en una realidad tangible.




Para mejorar tu sección de **Trabajo Futuro (Future Work)** y hacer que su impacto sea mucho más evidente y profesional, he reestructurado el texto utilizando un entorno de lista (`description` en LaTeX) que resalta visualmente cada línea de investigación. Además, he traducido e integrado tu párrafo final ("El camino a seguir") al inglés académico para que sirva como un cierre contundente y cohesivo para toda la sección y el artículo.

Aquí tienes la propuesta mejorada lista para copiar y pegar en tu documento LaTeX:

```
\subsection{Future Work}
Analysis of the current literature indicates that while automated software design has made significant theoretical strides, several critical research directions must be addressed to consolidate the field and enable its industrial adoption:

\begin{description}
    \item[Explainability and Trust (Explainable AutoDes):] As the reliance on black-box models---such as Large Language Models (LLMs) and complex evolutionary algorithms---increases, it is imperative to develop mechanisms that render automated design decisions transparent and interpretable. Fostering explainability is essential for building engineers' trust and facilitating the responsible integration of AI-generated architectures \cite{AhmedArtificialIntelligence}.

    \item[Integrated Formal Verification:] Future research must focus on hybridizing the creative generation capabilities of Generative AI (e.g., multi-agent architects) with rigorous static analysis and formal verification tools, such as Model Checking. This integration is vital to ensure that autonomously generated architectures are safe, secure, and strictly ``correct-by-construction'' before their runtime deployment \cite{Mohammadat2023AModelof,Chondamrongkul2022ArchitecturalRefactoring,Arcaini2019APattern-Oriented}.

    \item[Opportunistic Learning and Empirical Validation:] There is a critical need to explore how self-designing systems can leverage distributed, opportunistic knowledge sources to continually learn and evolve in open environments \cite{Reichhuber2020Opportunistic}. Furthermore, the theoretical frameworks identified in this review must be corroborated by large-scale empirical validations using real-world industrial repositories to rigorously assess their scalability and long-term viability.
\end{description}

\vspace{0.3cm}
\noindent\textbf{The Path Forward: Bridging the Theory-Practice Gap.} \\
Based on the aforementioned challenges, it is evident that automated software design must continue to evolve, transitioning from conceptual and theoretical proposals to highly practical, precise, and implementable tools. To achieve this objective, future research must focus on overcoming the gap between theory and practice. This entails improving the scalability of current models, guaranteeing the interpretability of automated design decisions, and fostering a seamless collaboration between Artificial Intelligence and human engineers within existing workflows. By establishing this synergistic human-AI partnership, automated self-design can transcend its current limitations and become a tangible reality in the software industry.
```

### ¿Qué mejoras se aplicaron?

1. **Estructura visual (`\begin{description}`):** Al poner los tres puntos clave en una lista descriptiva, el lector (y los revisores) pueden identificar inmediatamente cuáles son los tres grandes vacíos de investigación que tu SLR descubrió.
2. **Inglés Académico:** Se refinó el vocabulario (ej. se añadió _"transparent and interpretable"_ y _"corroborated by large-scale empirical validations"_) para darle mayor peso científico.
3. **Integración de "El camino a seguir":** Tu párrafo en español fue traducido como ***"The Path Forward: Bridging the Theory-Practice Gap"*__. Se adaptó perfectamente para que funcione como el párrafo de cierre de todo el documento, amarrando la idea de que la IA no viene a reemplazar al ingeniero humano, sino a colaborar con él (_"synergistic human-AI partnership"_), un concepto muy fuerte y actual en la literatura de Ingeniería de Software.