Supongamos que quiero desarrollar un sistema de autoingenieria el cual debe de autogestionarse como en ingenieria de software, mi propuesta es la siguiente:
Una arquitectura que se divide en el sistema que se ejecuta y un modulo de refactorizarion/metamorfosis de software, este ultimo evalua las caracteristicas que tiene el sistema actual y las compara con nuevas especificaciones entrantes, este hace las modificaciones necesarias, especifica requerimientos (modulo supuestamente hecho) y entramos a mi area, modulo de diseño de arquitectura, ¿como se podria hacer?

Sistema reactivo a los inputs del modulo superior "Modulo de Requerimientos"
En la arquitectura no visualizo este proceso de manera monolitica, mas bien seria un conjunto de tres partes: Sistema como tal (lo que se tiene que modificar o refactorizar y evaluar), el modulo ayudado con algun tipo de LLM para evaluar los requerimientos y diseñar la nueva arquitectura, el ouput debe de ser exageradamente refinado para llegar al modulo de implementacion.
Un tercer modulo de actualizacion o reentrenamiento del LLM, o en el peor de los casos que sea manual pero pierde caracteristicas autonomicas.
De manera que este ultimo tambien verifique el hardware, no es posible ejecutar todo en una papa.
FALTA MUCHA INFORMACION AL RESPECTO
