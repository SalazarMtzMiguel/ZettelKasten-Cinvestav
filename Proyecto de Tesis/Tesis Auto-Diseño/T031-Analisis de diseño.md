## TL;DR

Las métricas de diseño más usadas miden acoplamiento, cohesión y complejidad; las reglas recomiendan minimizar acoplamientos y distribuir responsabilidad; existen estándares IEEE/ISO aplicables; el diseño abarca niveles arquitectónico, de módulos y detallado, con patrones y trade‑offs.

---

## Métricas de diseño comunes

En la literatura revisada las métricas se usan para cuantificar acoplamiento, cohesión, complejidad y distribución de responsabilidades, y sirven tanto para evaluación temprana como para detección de defectos. Estas métricas se aplican en suites bien conocidas, en modelos de calidad basados en atributos y en reglas métricas automatizables.

|Métrica o familia|Qué mide brevemente|Fuente|
|---|---|---|
|CK suite (WMC, CBO, LCOM, RFC, etc.)|Complejidad de clase, acoplamiento entre clases, cohesión y responsividad de métodos <br><br>1|1|
|MOOD|Atributos OO globales como herencia, acoplamiento y polimorfismo <br><br>2|2|
|QMOOD|Conjunto compuesto que relaciona métricas estructurales con atributos de calidad (reusabilidad, flexibilidad, etc.) <br><br>2|2|
|Métricas tempranas de ciclo de vida|Medidas de diseño usadas para predecir calidad y guiar controles tempranos del diseño <br><br>3|3|
|Reglas métricas / detection strategies|Combinación de métricas en reglas para localizar olores de diseño (p. ej., God Class) <br><br>4|4|

- Uso práctico: las métricas se integran en procesos de revisión y herramientas para análisis de arquitectura y evolución, y pueden alimentar modelos de optimización de arquitectura 
    
    5
    
     
    
    6
    
    .

---

## Reglas y principios de diseño

Las obras revisadas enfatizan principios ligados a las métricas (reducción de acoplamiento, aumento de cohesión, control de complejidad) y el uso juicioso de patrones; también proponen reglas basadas en métricas para detectar fallos de diseño. Estas guías operativas permiten traducir heurísticas de buen diseño en reglas automáticas que localizan clases o métodos problemáticos.

- Minimizar acoplamiento: reducir dependencias entre clases o módulos para mejorar mantenibilidad y evolución 
    
    1
    
     
    
    2
    
    .
- Maximizar cohesión: favorecer que una clase o módulo agrupe responsabilidades relacionadas para mejorar claridad y prueba 
    
    1
    
     
    
    2
    
    .
- Controlar complejidad: medir y limitar la complejidad por clase o método para disminuir defectos y facilitar entendimiento 
    
    1
    
     
    
    3
    
    .
- Distribuir inteligencia: evitar concentración excesiva de responsabilidad (p. ej., God Class) usando reglas métricas para su detección 
    
    4
    
    .
- Uso crítico de patrones: los patrones resuelven problemas concretos pero implican trade‑offs en calidad; su empleo debe evaluarse según atributos y umbrales relevantes 
    
    7
    
    .
- Detección basada en reglas: formular estrategias que combinen métricas para detectar olores y violaciones de principios (reglas métricas o "designer metrics") 
    
    4
    
     
    
    8
    
    .

Insufficient evidence sobre la presencia o discusión explícita del conjunto SOLID en la colección suministrada.

---

## Estándares industriales relevantes

El corpus documenta normas y guías históricas y modernas que influyen en procesos de calidad, métricas y documentación del diseño de software. Varios estándares se citan como marcos para definir métricas y prácticas de aseguramiento de calidad.

- IEEE 1061 como marco para construir un sistema de métricas y guías de calidad (framework para métricas definidas por el usuario) 
    
    8
    
    .
- ISO 9001 y estándares de calidad para software y sistemas mencionados en revisiones amplias de prácticas y estándares industriales 
    
    9
    
    .
- Normas y guías sectoriales (estándares de defensa, guías industriales y documentos nacionales) que cubren procesos, documentación, control de configuración y certificación de software crítico 
    
    9
    
    .
- Aplicación práctica: los estándares se usan para estructurar procesos de revisión, documentación de módulos, gestión de configuración y auditorías relacionadas con la calidad del diseño 
    
    9
    
     
    
    8
    
    .

---

## Tipos de diseño de software

El material distingue niveles de diseño que van desde la arquitectura global hasta el diseño detallado de módulos, y discute cómo métricas y patrones se aplican en cada nivel. La elección arquitectónica (p. ej., monolito vs microservicios) afecta métricas y atributos de calidad y debe evaluarse con modelos basados en métricas.

- Diseño arquitectónico: definición de la estructura global, estilos arquitectónicos y partición en subsistemas; se evalúa con métricas arquitectónicas y patrones para gestionar evolución y calidad 
    
    5
    
     
    
    6
    
    .
- Diseño de alto nivel o de sistema: asignación de responsabilidades a subsistemas, interfaces y decisiones de separación de preocupaciones; se estudia mediante modelos de calidad que integran múltiples métricas 
    
    6
    
     
    
    5
    
    .
- Diseño de módulo o detallado: especificación de clases, métodos y datos, documentación de módulos y estándares de codificación aplicables; soporte por normas de diseño y por métricas de clase (CK, MOOD, QMOOD) 
    
    9
    
     
    
    1
    
     
    
    2
    
    .
- Patrones y anti‑patrones: patrones como soluciones reutilizables influyen en la estructura y métricas; los anti‑patrones se localizan mediante estrategias métricas para guiar refactorización 
    
    7
    
     
    
    4
    
     
    
    10
    
    .
- Evaluación y evolución: la medición continua permite comparar alternativas arquitectónicas y optimizar según atributos (acoplamiento, testabilidad, seguridad, etc.) durante la evolución del sistema 
    
    6
    
     
    
    5
    
    .

References

[1]

S. R. Chidamber and C. F. Kemerer, “A metrics suite for object oriented design,” Sept. 2011, [Online]. Available: https://ieeexplore.ieee.org/abstract/document/295895/

[2]

D. Arora, P. Khanna, A. Tripathi, S. Sharma, and S. Shukla, “Software Quality Estimation through Object Oriented Design Metrics,” Jan. 2011.

[3]

M. Shepperd, “Early life-cycle metrics and software quality models.,” _Information & Software Technology_, vol. 32, no. 4, pp. 311–316, May 1990, doi: 10.1016/0950-5849(90)90065-Y.

[4]

R. Marinescu, “Detection strategies: metrics-based rules for detecting design flaws,” pp. 350–359, Sept. 2004, doi: 10.1109/ICSM.2004.1357820.

[5]

J. Gustafsson, J. Paakki, L. Nenonen, and A. I. Verkamo, “Architecture-centric software evolution by software metrics and design patterns,” pp. 108–115, Mar. 2002, doi: 10.1109/CSMR.2002.995795.

[6]

M. Milić and D. Makajić-Nikolić, “Development of a Quality-Based Model for Software Architecture Optimization: A Case Study of Monolith and Microservice Architectures,” _Symmetry_, vol. 14, no. 9, pp. 1824–1824, Sept. 2022, doi: 10.3390/sym14091824.

[7]

A. Ampatzoglou, G. Frantzeskou, and I. Stamelos, “A methodology to assess the impact of design patterns on software quality,” _Information & Software Technology_, vol. 54, no. 4, pp. 331–346, Apr. 2012, doi: 10.1016/J.INFSOF.2011.10.006.

[8]

D. A. Workman and R. Crutchfield, “Quality guidelines = designer metrics,” pp. 29–40, Nov. 1994, doi: 10.1145/197694.197703.

[9]

D. J. Smith and K. B. Wood, “Engineering Quality Software: A Review of Current Practices, Standards and Guidelines including New Methods and Development Tools,” Oct. 1989.

[10]

M. Al-Obeidallah, “Automated Detection of Software Design Patterns: A Systematic and Comparative Survey”, [Online]. Available: https://ieeexplore.ieee.org/abstract/document/11480114/