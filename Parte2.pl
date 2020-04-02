
oracion(o(GN,GV)) --> g_nominal(GN), g_verbal(GV).
oracion(o(GV)) --> g_verbal(GV).
oracion(o(O,C,O2)) --> oracion(O), conjuncion(C), oracion(O2).


g_nominal(gn(GNB)) --> g_nominal_basico(GNB).
g_nominal(gn(GNB,N,O)) --> g_nominal_basico(GNB), nexo(N), oracion(O).
g_nominal(gn(GNB,C,GNB2)) --> g_nominal_basico(GNB), conjuncion(C), g_nominal_basico(GNB2).


g_nominal_basico(gnb(N)) --> nombre(N).
g_nominal_basico(gnb(D,N)) --> determinante(D), nombre(N).
g_nominal_basico(gnb(P,N)) --> preposicion(P), nombre(N).
g_nominal_basico(gnb(P,D,N)) --> preposicion(P), determinante(D), nombre(N).
g_nominal_basico(gnb(D,N,A)) --> determinante(D), nombre(N), g_adjetival(A).



g_verbal(gv(V)) --> verbo(V).
g_verbal(gv(V, GC)) --> verbo(V), g_complementos_predicado(GC).

g_complementos_predicado(gcp(GNB)) --> g_nominal_basico(GNB). % Complemento directo
g_complementos_predicado(gcp(GADJB)) --> g_adjetival(GADJB).
g_complementos_predicado(gcp(GNB, GADJB)) --> g_nominal(GNB), g_adjetival(GADJB).
g_complementos_predicado(gcp(GNB, A)) --> g_nominal(GNB), g_complemento_adverbial(A).
g_complementos_predicado(gcp(A)) --> g_complemento_adverbial(A).
g_complementos_predicado(gcp(GNB, GADBJ, A)) --> g_nominal(GNB), g_adjetival(GADBJ), g_complemento_adverbial(A).
g_complementos_predicado(gcp(GADBJ, A)) --> g_adjetival(GADBJ), g_complemento_adverbial(A).


g_adjetival_basico(gadjb(A)) --> adjetivo(A). 
g_adjetival_basico(gadjb(A, C)) -->cuantificador(C), adjetivo(A).

g_adjetival(gadj(GADJB)) --> g_adjetival_basico(GADJB).
g_adjetival(gadj(GADJB,C,GADJB2)) --> g_adjetival_basico(GADJB), conjuncion(C), g_adjetival_basico(GADJB2).
g_adjetival(gadj(GADJB,N,O)) --> g_adjetival_basico(GADJB), nexo(N), oracion(O).


g_complemento_adverbial(gca(A)) --> adverbio(A). 
g_complemento_adverbial(gca(C,A)) --> cuantificador(C), adverbio(A). 
g_complemento_adverbial(gca(C)) --> cuantificador(C). 


determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(una).
det(un).

nombre(n(X)) --> [X],{n(X)}.
n(hombre).
n(mujer).
n(alumno).
n(manzana).
n(manzanas).
n(maria).
n(juan).
n(gato).
n(raton).
n(ratones).
n(universidad).
n(ratones).

verbo(v(X)) --> [X],{v(X)}.
v(come).
v(ama).
v(estudia).
v(cazo).
v(era).
v(es).

adjetivo(adj(X)) --> [X],{adj(X)}.
adj(grande).
adj(gris).
adj(roja).


adverbio(adv(X)) --> [X],{adv(X)}.
adv(ayer).
adv(hoy).
adv(alli).
adv(aqui).
adv(no).


preposicion(prep(X)) --> [X],{prep(X)}.
prep(a).
prep(en).

nexo(nx(X)) --> [X],{nx(X)}.
nx(que).

cuantificador(cuant(X)) --> [X],{cuant(X)}.
cuant(muy).


conjuncion(conj(X)) --> [X],{conj(X)}.
conj(y).
conj(o).
conj(u).
conj(pero).
conj(aunque).
