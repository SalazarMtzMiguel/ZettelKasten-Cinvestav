#CitaLatex 
@article{brooks2021overview,
  title = {An overview of self-engineering systems},
  author = {Brooks, Sam and Roy, Rajkumar},
  journal = {Journal of Engineering Design},
  year = {2021},
  doi = {10.1080/09544828.2021.1914323},
  publisher = {Taylor \& Francis}
}
Basado en el paper [[(Brooks and Roy) An Overview of Self Engineering Systems.pdf]]

# Auto ingenieria segun Brooks y Roy

Las fallas en sistemas de alto valor, criticos o inaccesibles es un area de interes de investigacion.

Para hacer avances en servicios de mantenimiento predictivo y continuo para poder preservar las funciones de un sistema a presar de su degradacion y daño.

Esta revision se sentra primeramente en sistemas fisicos de auto-ingenieria.

## Introduccion

Una mision clave para los ingenieros es prolongar la vida de sus productos o sistemas y mejorar su resiliencia.
La busqueda actual en MRO (maintenance, repair and overhaul), requiere monitoreo condicional, mantenimiento predictivo y preventivo que requiere intervencion humana.
Para mantener guturos sistemas algo mas ambicioso el diseño de un sistemas auto-ingeniado es requerico cuando puede mantener sus funciones clave, a pesar de su degradacion, uso, daño o fallas en su ciclo de vida.
Aqui se defines un sistema de autoingenieria como:
la habilidad de diseñar y construir un sistema que independientemente identifica cualquier perdida de funcionalidad o potencial y automaticamente restaurar la funcionalidad parcial o completamente para mantener su disponibilidad y mejorar la resiliencia del sistema.
Caracteristicas clave:
1. Tener la habilidad de restaurar percial o completamente una funcion o capacidad perdida.
2. Debe de estar en el sistema no ser añadido despues.
3. Apunta a evadir o reducir el mantenimiento, prolongar y/o incrementar la resiliencia y robustez.
4. No debe haber intervencion humana, en cualquier proceso la respuesta y comportamiento debera ser automatico.

(1) **Monitoreo** – Observar todo lo disponible ayuda a reducir la probabilidad de no detectar una degradación o una falla, pero los sistemas rápidamente se vuelven costosos y complejos. ¿Qué subsistemas, parámetros o componentes se deberían monitorear?

(2) **Activador** – ¿En qué momento se debería activar el SE (Ingeniería de Sistemas)? ¿Existe un límite de degradación establecido o debería ser cuando una función se ha perdido por completo?

(3) **Respuesta** – ¿Las respuestas del SE dependen de factores como los recursos disponibles, el tiempo, la gravedad del daño y las condiciones ambientales? ¿Cómo se tienen en cuenta estos factores en el sistema?

(4) **Respuesta** – ¿Las respuestas del SE se repiten o están diseñadas para ser una respuesta de un solo uso?

(5) **Verificación** – ¿Cómo se verifica la efectividad (cantidad de función recuperada) de la respuesta del SE? ¿Se debería utilizar el sistema de monitoreo inicial o un sistema independiente con diferentes parámetros de medición?

## Metodologia

El self- es decir el auto se puso en lugar de autonomo y automatico puesto que arrojaban resultados similares.

## Control de Auto-Ingenieria

El administrador autonomico en computo autonomico tiene un ciclo de control similar, MAPE.
![[Figura 1 Brooks.png]]



Hasta aqui lo dejare puesto que muchas caracteristicas van mas a lo fisico que a lo que seria en el enfoque de la auto-ingenieria de software.