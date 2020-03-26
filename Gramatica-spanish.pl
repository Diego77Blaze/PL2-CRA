%oracion --> oracion, adverbio, oracion.

oracion --> oracion, conjuncion, oracion. % _ y _
oracion --> g_nominal, g_verbal.
oracion --> g_verbal.

g_nominal --> nombre.
g_nominal --> preposicion, nombre.
g_nominal --> determinante, nombre.
g_nominal --> preposicion, determinante, nombre.
g_nominal --> determinante, nombre, g_adjetival.
g_nominal --> nombre, adjetivo.
g_nominal --> g_nominal, conjuncion, g_nominal. %el coche verde y el coche azul
g_nominal --> g_nominal, nexo, oracion. % el perro que compro ...

g_verbal --> verbo.
g_verbal --> verbo, g_nominal. % Complemento directo
g_verbal --> verbo, g_adjetival.
g_verbal --> verbo, g_nominal, g_adjetival.
g_verbal --> verbo, g_nominal, g_complementos.
g_verbal --> verbo, g_complementos.
g_verbal --> verbo, g_nominal, g_adjetival, g_complementos.
g_verbal --> verbo, g_adjetival, g_nominal.
g_verbal --> verbo, g_adjetival, g_complementos.
g_verbal --> verbo, g_complementos, g_nominal.
g_verbal --> verbo, g_complementos, g_adjetival.
g_verbal --> verbo, g_nominal, g_complementos, g_adjetival.
g_verbal --> verbo, g_complementos, g_nominal, g_adjetival.
g_verbal --> verbo, g_complementos, g_adjetival, g_nominal.
g_verbal --> verbo, g_adjetival, g_complementos, g_nominal.
g_verbal --> verbo, g_adjetival, g_nominal, g_complementos.

g_adjetival --> cuantificador, adjetivo.
g_adjetival --> adjetivo. %Atributo o Complemento Predicativo
g_adjetival --> g_adjetival, conjuncion, g_adjetival.
g_adjetival --> adjetivo, g_adjetival.
g_adjetival --> g_adjetival, nexo, oracion.

g_complementos --> adverbio.
g_complementos --> cuantificador, adverbio.
g_complementos --> g_nominal. % Ejemplo --> El lunes
g_complementos --> preposicion, determinante, nombre.
g_complementos --> preposicion, nombre.
g_complementos --> cuantificador.
g_complementos --> cuantificador, adjetivo.
g_complementos --> g_complementos, conjuncion, g_complementos.
g_complementos --> g_complementos, g_complementos.
g_complementos --> g_complementos, nexo, oracion.
%cclugar --> preposicion, determinante, nombre.