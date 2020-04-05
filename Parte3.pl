:-consult('Parte3DiccSpa').
:-consult('Parte3DiccEng').
%English
sentence(o(GN,GV)) --> nom_p(GN,N), verbal_p(GV,N).
sentence(o(GV)) --> verbal_p(GV,_).
sentence(o(O,C,O2)) --> sentence(O), conjunction(C), sentence(O2).

nom_p(gn(GNB),N) --> nom_p_basic(GNB,N).
nom_p(gn(GNB,Nx,O),N) --> nom_p_basic(GNB,N), nexus(Nx), sentence(O).
nom_p(gn(GNB,C,GNB2),N) --> nom_p_basic(GNB,N), conjunction(C), nom_p_basic(GNB2,N).

nom_p_basic(gnb(Prop),N) --> pronoun(Prop,_,N,_).
nom_p_basic(gnb(Nom,Nom2),N) --> noun(Nom,_,N,_,_,_), noun(Nom2,_,_,_,_,_).
nom_p_basic(gnb(Nom),N) --> noun(Nom,_,N,_,_,_).
nom_p_basic(gnb(D,Nom),N) --> determinant(D,G,N,_,V), noun(Nom,G,N,_,V,_).
nom_p_basic(gnb(P),N) --> prep_p(P,N).
nom_p_basic(gnb(D,Nom,A),N) --> determinant(D,G,N,_,V), adj_p(A,G,N,V), noun(Nom,G,N,_,_,_).

prep_p(gp(P,Nom),N) --> preposition(P), noun(Nom,_,N,_,_,_).
prep_p(gp(P,D,Nom),N) --> preposition(P), determinant(D,G,N,_,_), noun(Nom,G,N,_,_,_).

verbal_p(gv(V),N) --> verb(V,_,N,_).
verbal_p(gv(V,GC),N) --> verb(V,_,N,_), pred_complements(GC,N).

pred_complements(gcp(GNB),_) --> nom_p_basic(GNB,_). 
pred_complements(gcp(GADJB),N) --> adj_p(GADJB,_,N,_).
%pred_complements(gcp(GNB,GADJB),N) --> adj_p(GADJB,_,N,_),nom_p(GNB,N).
pred_complements(gcp(GNB,A),N) --> nom_p(GNB,N), adv_p(A).
pred_complements(gcp(A),_) --> adv_p(A).
pred_complements(gcp(GNB,GADBJ,A),N) --> adj_p(GADBJ,_,N,_), nom_p(GNB,N), adv_p(A).
pred_complements(gcp(GADBJ,A),N) --> adj_p(GADBJ,_,N,_), adv_p(A).

adj_p_basic(gadjb(A),G,N,V) --> adjective(A,G,N,V).
adj_p_basic(gadjb(A,C),G,N,_) -->quantifier(C), adjective(A,G,N,_).
adj_p_basic(gadjb(P),N,_) --> prep_p(P,N).

adj_p(gadj(GADJB),G,N,V) --> adj_p_basic(GADJB,G,N,V).
adj_p(gadj(GADJB,C,GADJB2),G,N,V) --> adj_p_basic(GADJB,G,N,V), conjunction(C), adj_p_basic(GADJB2,G,N,V).
adj_p(gadj(GADJB,Nx,O),G,N,V) --> adj_p_basic(GADJB,G,N,V), nexus(Nx), sentence(O).

adv_p(gca(A)) --> adverb(A).
adv_p(gca(C,A)) --> quantifier(C), adverb(A).
adv_p(gca(P)) --> prep_p(P,_).
adv_p(gca(C)) --> quantifier(C).


%Espa�ol
oracion(o(GN,GV)) --> g_nominal(GN,N), g_verbal(GV,N).
oracion(o(GV)) --> g_verbal(GV,_).
oracion(o(O,C,O2)) --> oracion(O), conjuncion(C), oracion(O2).

g_nominal(gn(GNB),N) --> g_nominal_basico(GNB,N).
g_nominal(gn(GNB,Nx,O),N) --> g_nominal_basico(GNB,N), nexo(Nx), oracion(O).
g_nominal(gn(GNB,C,GNB2),N) --> g_nominal_basico(GNB,N), conjuncion(C), g_nominal_basico(GNB2,N).

g_nominal_basico(gnb(Prop),N) --> pronombre(Prop,_,N,_).
g_nominal_basico(gnb(Nom,Nom2),N) --> nombre(Nom,_,N,_,_,_), nombre(Nom2,_,_,_,_,_).
g_nominal_basico(gnb(Nom),N) --> nombre(Nom,_,N,_,_,_).
g_nominal_basico(gnb(D,Nom),N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,_).
g_nominal_basico(gnb(P),N) --> g_preposicional(P,N).
g_nominal_basico(gnb(D,Nom,A),N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,_), g_adjetival(A,G,N).

g_preposicional(gp(P,Nom),N) --> preposicion(P), nombre(Nom,_,N,_,_,_).
g_preposicional(gp(P,D,Nom),N) --> preposicion(P), determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,_).

g_verbal(gv(V),N) --> verbo(V,_,N,_).
g_verbal(gv(V,GC),N) --> verbo(V,_,N,_), g_complementos_predicado(GC,N).

g_complementos_predicado(gcp(GNB),_) --> g_nominal_basico(GNB,_). % Complemento directo
g_complementos_predicado(gcp(GADJB),N) --> g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,GADJB),N) --> g_nominal(GNB,N), g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,A),N) --> g_nominal(GNB,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(A),_) --> g_complemento_adverbial(A).
g_complementos_predicado(gcp(GNB,GADBJ,A),N) --> g_nominal(GNB,N), g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(GADBJ,A),N) --> g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).

g_adjetival_basico(gadjb(A),G,N) --> adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(A,C),G,N) -->cuantificador(C), adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(P),N) --> g_preposicional(P,N).

g_adjetival(gadj(GADJB),G,N) --> g_adjetival_basico(GADJB,G,N).
g_adjetival(gadj(GADJB,C,GADJB2),G,N) --> g_adjetival_basico(GADJB,G,N), conjuncion(C), g_adjetival_basico(GADJB2,G,N).
g_adjetival(gadj(GADJB,Nx,O),G,N) --> g_adjetival_basico(GADJB,G,N), nexo(Nx), oracion(O).

g_complemento_adverbial(gca(A)) --> adverbio(A).
g_complemento_adverbial(gca(C,A)) --> cuantificador(C), adverbio(A).
g_complemento_adverbial(gca(P)) --> g_preposicional(P,_).
g_complemento_adverbial(gca(C)) --> cuantificador(C).
