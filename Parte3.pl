:-consult('Parte3DiccSpa').
:-consult('Parte3DiccEng').
%English
sentence(o(GN,GV)) --> nom_p(GN,P,N), verbal_p(GV,P,N).
sentence(o(GV)) --> verbal_p(GV,_,_).
sentence(o(O,C,O2)) --> sentence(O), conjunction(C), sentence(O2).

nom_p(gn(GNB),P,N) --> nom_p_basic(GNB,P,N).
nom_p(gn(GNB,Nx,O),P,N) --> nom_p_basic(GNB,P,N), nexus(Nx), sentence(O).
nom_p(gn(GNB,C,GNB2),terc,pl) --> nom_p_basic(GNB,_,_), conjunction(C), nom_p_basic(GNB2,_,_).

nom_p_basic(gnb(Prop),P,N) --> pronoun(Prop,P,N,_).
nom_p_basic(gnb(Nom,Nom2),_,N) --> noun(Nom,_,N,_,_,_), noun(Nom2,_,_,_,_,_).
nom_p_basic(gnb(Nom),P,N) --> noun(Nom,_,N,_,_,P).
nom_p_basic(gnb(D,Nom),P,N) --> determinant(D,G,N,_,V), noun(Nom,G,N,_,V,P).
nom_p_basic(gnb(Prep),P,N) --> prep_p(Prep,P,N).
nom_p_basic(gnb(D,Nom,A),P,N) --> determinant(D,G,N,_,V), adj_p(A,G,N,V), noun(Nom,G,N,_,_,P).

prep_p(gp(Prep,Nom),P,N) --> preposition(Prep), noun(Nom,_,N,_,_,P).
prep_p(gp(Prep,D,Nom),P,N) --> preposition(Prep), determinant(D,G,N,_,_), noun(Nom,G,N,_,_,P).

verbal_p(gv(V),P,N) --> verb(V,P,N,_).
verbal_p(gv(V,GC),P,N) --> verb(V,P,N,_), pred_complements(GC,N).

pred_complements(gcp(GNB),_) --> nom_p_basic(GNB,_,_).
pred_complements(gcp(GADJB),N) --> adj_p(GADJB,_,N,_).
%pred_complements(gcp(GNB,GADJB),N) --> adj_p(GADJB,_,N,_),nom_p(GNB,N).
pred_complements(gcp(GNB,A),N) --> nom_p(GNB,_,N), adv_p(A).
pred_complements(gcp(A),_) --> adv_p(A).
%pred_complements(gcp(GNB,GADBJ,A),N) --> adj_p(GADBJ,_,N,_), nom_p(GNB,_,N), adv_p(A).
pred_complements(gcp(GADBJ,A),N) --> adj_p(GADBJ,_,N,_), adv_p(A).

adj_p_basic(gadjb(A),G,N,V) --> adjective(A,G,N,V).
adj_p_basic(gadjb(A,C),G,N,_) -->quantifier(C), adjective(A,G,N,_).
adj_p_basic(gadjb(P),N,_) --> prep_p(P,N).

adj_p(gadj(GADJB),G,N,V) --> adj_p_basic(GADJB,G,N,V).
adj_p(gadj(GADJB,C,GADJB2),G,N,V) --> adj_p_basic(GADJB,G,N,V), conjunction(C), adj_p_basic(GADJB2,G,N,V).
adj_p(gadj(GADJB,Nx,O),G,N,V) --> adj_p_basic(GADJB,G,N,V), nexus(Nx), sentence(O).

adv_p(gca(A)) --> adverb(A).
adv_p(gca(C,A)) --> quantifier(C), adverb(A).
adv_p(gca(P)) --> prep_p(P,_,_).
adv_p(gca(C)) --> quantifier(C).


%Español
oracion(o(GN,GV)) --> g_nominal(GN,P,N), g_verbal(GV,P,N).
oracion(o(GV)) --> g_verbal(GV,_,_).
oracion(o(O,C,O2)) --> oracion(O), conjuncion(C), oracion(O2).

g_nominal(gn(GNB),P,N) --> g_nominal_basico(GNB,P,N).
g_nominal(gn(GNB,Nx,O),P,N) --> g_nominal_basico(GNB,P,N), nexo(Nx), oracion(O).
g_nominal(gn(GNB,C,GNB2),terc,pl) --> g_nominal_basico(GNB,_,N), conjuncion(C), g_nominal_basico(GNB2,_,N).

g_nominal_basico(gnb(Prop),P, N) --> pronombre(Prop,P,N,_).
g_nominal_basico(gnb(Nom,Nom2),P,N) --> nombre(Nom,_,N,_,_,P), nombre(Nom2,_,_,_,_,_).
g_nominal_basico(gnb(Nom),P,N) --> nombre(Nom,_,N,_,_,P).
g_nominal_basico(gnb(D,Nom),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,P).
g_nominal_basico(gnb(Prep),P,N) --> g_preposicional(Prep,P,N).
g_nominal_basico(gnb(D,Nom,A),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,P), g_adjetival(A,G,N).

g_preposicional(gp(Prep,Nom),P,N) --> preposicion(Prep), nombre(Nom,_,N,_,_,P).
g_preposicional(gp(Prep,D,Nom),P,N) --> preposicion(Prep), determinante(D,G,N,_,P), nombre(Nom,G,N,_,_,_).

g_verbal(gv(V),P,N) --> verbo(V,P,N,_).
g_verbal(gv(V,GC),P,N) --> verbo(V,P,N,_), g_complementos_predicado(GC,N).

g_complementos_predicado(gcp(GNB),_) --> g_nominal_basico(GNB,_,_). % Complemento directo
g_complementos_predicado(gcp(GADJB),N) --> g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,GADJB),N) --> g_nominal(GNB,_,N), g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,A),N) --> g_nominal(GNB,_,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(A),_) --> g_complemento_adverbial(A).
g_complementos_predicado(gcp(GNB,GADBJ,A),N) --> g_nominal(GNB,_,N), g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(GADBJ,A),N) --> g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).

g_adjetival_basico(gadjb(A),G,N) --> adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(A,C),G,N) -->cuantificador(C), adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(P),N) --> g_preposicional(P,N).

g_adjetival(gadj(GADJB),G,N) --> g_adjetival_basico(GADJB,G,N).
g_adjetival(gadj(GADJB,C,GADJB2),G,N) --> g_adjetival_basico(GADJB,G,N), conjuncion(C), g_adjetival_basico(GADJB2,G,N).
g_adjetival(gadj(GADJB,Nx,O),G,N) --> g_adjetival_basico(GADJB,G,N), nexo(Nx), oracion(O).

g_complemento_adverbial(gca(A)) --> adverbio(A).
g_complemento_adverbial(gca(C,A)) --> cuantificador(C), adverbio(A).
g_complemento_adverbial(gca(Prep)) --> g_preposicional(Prep,_,_).
g_complemento_adverbial(gca(C)) --> cuantificador(C).
