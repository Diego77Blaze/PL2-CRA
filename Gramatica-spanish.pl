oracion --> g_verbal.
oracion --> g_nominal, g_verbal.
oracion --> oracion, conjuncion, oracion. % _ y _

g_nominal_basico --> nombre.
g_nominal_basico --> preposicion, nombre.
g_nominal_basico --> determinante, nombre.
g_nominal_basico --> preposicion, determinante, nombre.
g_nominal_basico --> determinante, nombre, g_adjetival.
g_nominal_basico --> nombre, adjetivo.

g_nominal --> g_nominal_basico, conjuncion, g_nominal_basico. %el coche verde y el coche azul
g_nominal --> g_nominal_basico, nexo, oracion. % el perro que compro ...
g_nominal --> g_nominal_basico.

g_verbal --> verbo.
g_verbal --> verbo, g_complementos_predicado.

g_complementos_predicado --> g_nominal. % Complemento directo
g_complementos_predicado --> g_adjetival.
g_complementos_predicado --> g_nominal, g_adjetival.
g_complementos_predicado --> g_nominal, g_complementos.
g_complementos_predicado --> g_complementos.
g_complementos_predicado --> g_nominal, g_adjetival, g_complementos.
%g_complementos_predicado --> g_adjetival, g_nominal.
g_complementos_predicado --> g_adjetival, g_complementos.
%g_complementos_predicado --> g_complementos, g_nominal.
%g_complementos_predicado --> g_complementos, g_adjetival.
%g_complementos_predicado --> g_nominal, g_complementos, g_adjetival.
%g_complementos_predicado --> g_complementos, g_nominal, g_adjetival.
%g_complementos_predicado --> g_complementos, g_adjetival, g_nominal.
%g_complementos_predicado --> g_adjetival, g_complementos, g_nominal.
%g_complementos_predicado --> g_adjetival, g_nominal, g_complementos.

g_adjetival_basico --> adjetivo. %Atributo o Complemento Predicativo
g_adjetival_basico --> cuantificador, adjetivo.

g_adjetival --> g_adjetival_basico.
g_adjetival --> g_adjetival_basico, conjuncion, g_adjetival_basico.
g_adjetival --> g_adjetival_basico, nexo, oracion.

g_complemento_adverbial --> adverbio.
g_complemento_adverbial --> cuantificador, adverbio.
g_complemento_adverbial --> cuantificador.

%g_complementos --> adverbio.
%g_complementos --> cuantificador, adverbio.
%g_complementos --> g_nominal. % Ejemplo --> El lunes
%g_complementos --> preposicion, determinante, nombre.
%g_complementos --> preposicion, nombre.
%g_complementos --> cuantificador.
%g_complementos --> cuantificador, adjetivo.
g_complementos --> g_complemento_adverbial.
g_complementos --> g_complemento_adverbial, conjuncion, g_complemento_adverbial.
g_complementos --> g_complemento_adverbial, g_complemento_adverbial.
g_complementos --> g_complemento_adverbial, nexo, oracion.
%cclugar --> preposicion, determinante, nombre.