

%Español
oracion(o(GN,GV)) --> g_nominal(GN,N), g_verbal(GV,N).
oracion(o(GV)) --> g_verbal(GV,N).
oracion(o(O,C,O2)) --> oracion(O), conjuncion(C), oracion(O2).

g_nominal(gn(GNB),N) --> g_nominal_basico(GNB).
g_nominal(gn(GNB,Nx,O),N) --> g_nominal_basico(GNB,N), nexo(Nx), oracion(O).
g_nominal(gn(GNB,C,GNB2)) --> g_nominal_basico(GNB,N), conjuncion(C), g_nominal_basico(GNB2,N).


g_nominal_basico(gnb(Nom),N) --> nombre(Nom,G,N,T).
g_nominal_basico(gnb(D,Nom),N) --> determinante(D,G,N), nombre(Nom,G,N,T).
g_nominal_basico(gnb(P,Nom),N) --> preposicion(P), nombre(Nom,G,N,T).
g_nominal_basico(gnb(P,D,Nom),N) --> preposicion(P), determinante(D,G,N), nombre(Nom,G,N,T).
g_nominal_basico(gnb(D,Nom,A),N) --> determinante(D,G,N), nombre(Nom,G,N,T), g_adjetival(A,G,N).

g_verbal(gv(V),N) --> verbo(V,P,N,T).
g_verbal(gv(V, GC),N) --> verbo(V,P,N,T), g_complementos_predicado(GC,N).

g_complementos_predicado(gcp(GNB),_) --> g_nominal_basico(GNB,N). % Complemento directo
g_complementos_predicado(gcp(GADJB),N) --> g_adjetival(GADJB,G,N).
g_complementos_predicado(gcp(GNB, GADJB),N) --> g_nominal(GNB,N), g_adjetival(GADJB,G,N).
g_complementos_predicado(gcp(GNB, A),N) --> g_nominal(GNB,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(A),_) --> g_complemento_adverbial(A).
g_complementos_predicado(gcp(GNB, GADBJ, A),N) --> g_nominal(GNB,N), g_adjetival(GADBJ,G,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(GADBJ, A),N) --> g_adjetival(GADBJ,G,N), g_complemento_adverbial(A).

g_adjetival_basico(gadjb(A),G,N) --> adjetivo(A,G,N).
g_adjetival_basico(gadjb(A,C),G,N) -->cuantificador(C), adjetivo(A,G,N).

g_adjetival(gadj(GADJB),G,N) --> g_adjetival_basico(GADJB,G,N).
g_adjetival(gadj(GADJB,C,GADJB2),G,N) --> g_adjetival_basico(GADJB,G,N), conjuncion(C), g_adjetival_basico(GADJB2,G,N).
g_adjetival(gadj(GADJB,Nx,O)G,N) --> g_adjetival_basico(GADJB,G,N), nexo(Nx), oracion(O).

g_complemento_adverbial(gca(A)) --> adverbio(A).
g_complemento_adverbial(gca(C,A)) --> cuantificador(C), adverbio(A).
g_complemento_adverbial(gca(C)) --> cuantificador(C).

%determinante(det(X),N) --> [X],{det(X)}.
determinante(det(art), m, sg, def) --> [el].
determinante(det(art), f, sg, def) --> [la].
determinante(det(art), f, sg, und) --> [una].
determinante(det(art), m, sg, und) --> [un].

%nombre(n(X)) --> [X],{n(X)}.
nombre(n(n_1),f,sg,com) --> [piedra].
nombre(n(n_2),m,sg,com) --> [papel].
nombre(n(n_3),f,pl,com) --> [tijeras].
nombre(n(n_4),f,sg,com) --> [manzana].
nombre(n(n_4),f,pl,com) --> [manzanas].
nombre(n(n_5),m,sg,com) --> [hombre].
nombre(n(n_6),m,sg,prop) --> [juan].
nombre(n(n_7),f,sg,prop) --> [maria].
nombre(n(n_8),m,sg,com) --> [gato].
nombre(n(n_9),m,sg,com) --> [raton].
nombre(n(n_10),f,sg,com) --> [universidad].
nombre(n(n_11),m,sg,com) --> [alumno].
nombre(n(n_12),m,sg,com) --> [perro].
nombre(n(n_13),m,sg,com) --> [vecino].
nombre(n(n_14),m,sg,com) --> [canario].
nombre(n(n_15),m,sg,com) --> [cafe].
nombre(n(n_16),m,sg,com) --> [periodico].
nombre(n(n_17),m,sg,prop) --> [oscar].
nombre(n(n_18),m,sg,prop) --> [wilde].
nombre(n(n_19),m,sg,com) --> [fantasma].

%verbo(v(X)) --> [X],{v(X)}.
verbo(v(v_1),terc,sg,pres) --> [corta].
verbo(v(v_1),terc,pl,pres) --> [cortan].
verbo(v(v_2),terc,sg,pres) --> [envuelve].
verbo(v(v_2),terc,pl,pres) --> [envuelven].
verbo(v(v_3),terc,sg,pres) --> [rompe].
verbo(v(v_3),terc,pl,pres) --> [rompen].
verbo(v(v_4),seg, sg,pres) --> [comes].
verbo(v(v_4),terc, sg,pres) --> [come].
verbo(v(v_4),terc, pl,pres) --> [comen].
verbo(v(v_5),terc, sg,pres) --> [ama].
verbo(v(v_6),terc, sg,pres) --> [estudia].
verbo(v(v_7),terc, sg,pas) --> [persiguio].%insertar tiempo?
verbo(v(v_8),terc, sg,pres) --> [es].
verbo(v(v_9),prim, pl,pas) --> [vimos].
verbo(v(v_10),terc, sg,pres) --> [canta].
verbo(v(v_11),terc, sg,pres) --> [toma].
verbo(v(v_12),terc, sg,pres) --> [lee].
verbo(v(v_13),terc, sg,pas) --> [escribio].
verbo(v(v_14),terc, sg,pas) --> [cazo].
verbo(v(v_15),terc, sg,pas) --> [era].

%adjetivo(adj(X)) --> [X],{adj(X)}.
adjetivo(adj(adj_1), f, sg) --> [roja].
adjetivo(adj(adj_2), m, sg) --> [grande].
adjetivo(adj(adj_3), m, sg) --> [gris].
adjetivo(adj(adj_4), m, sg) --> [negro].
adjetivo(adj(adj_5), m, sg) --> [amarillo].
adjetivo(adj(adj_6), m, sg) --> [delgado].
adjetivo(adj(adj_7), f, sg) --> [alta].

%adverbio(adv(X)) --> [X],{adv(X)}.
adverbio(adv(adv_1)) --> [ayer].
adverbio(adv(adv_2)) --> [bien].
adverbio(adv(adv_3)) --> [hoy].
adverbio(adv(adv_4)) --> [alli].
adverbio(adv(adv_5)) --> [aqui].
adverbio(adv(adv_6)) --> [no].

%preposicion(prep(X)) --> [X],{prep(X)}.
preposicion(prep(prep_1)) --> [a].
preposicion(prep(prep_2)) --> [en].
preposicion(prep(prep_3)) --> [de].

%nexo(nx(X)) --> [X],{nx(X)}.
nexo(nx(nx_1)) --> [que].

%cuantificador(cuant(X)) --> [X],{cuant(X)}.
cuantificador(cuant(cuant_1)) --> [muy].

%conjuncion(conj(X)) --> [X],{conj(X)}.
conjuncion(conj(conj_1)) --> [y].
conjuncion(conj(conj_2)) --> [o].
conjuncion(conj(conj_3)) --> [u].
conjuncion(conj(conj_4)) --> [pero].
conjuncion(conj(conj_5)) --> [aunque].
