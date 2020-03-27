
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
g_verbal(gv(V, GN)) --> verbo(V), g_nominal(GN).


g_adjetival_basico(gadjb(A)) --> adjetivo(A). 
g_adjetival_basico(gadjb(A, C)) --> adjetivo(A), cuantificador(C). 

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
n(manzana).
n(maria).
n(juan).
n(gato).
n(raton).
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
