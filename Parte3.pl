:-consult('Parte3DiccSpa').
:-consult('Parte3DiccEng').
%English
sentence(o(GN,GV)) --> nom_p(GN,P,N), verbal_p(GV,P,N).
sentence(o(GV)) --> verbal_p(GV,_,_).
sentence(o(O,C,O2)) --> sentence(O), conjunction(C), sentence(O2).

nom_p(sn(GNB),P,N) --> nom_p_basic(GNB,P,N).
nom_p(sn(GNB,Nx,O),P,N) --> nom_p_basic(GNB,P,N), nexus(Nx), sentence(O).
nom_p(sn(GNB,C,GNB2),terc,pl) --> nom_p_basic(GNB,_,_), conjunction(C), nom_p_basic(GNB2,_,_).

nom_p_basic(snb(Prop),P,N) --> pronoun(Prop,P,N,_).
nom_p_basic(snb(Nom,Nom2),_,N) --> noun(Nom,_,N,_,_,_), noun(Nom2,_,_,_,_,_).
nom_p_basic(snb(Nom),P,N) --> noun(Nom,_,N,_,_,P).
nom_p_basic(snb(D,Nom),P,N) --> determinant(D,G,N,_,V), noun(Nom,G,N,_,V,P).
nom_p_basic(snb(Prep),P,N) --> prep_p(Prep,P,N).
nom_p_basic(snb(D,Nom,A),P,N) --> determinant(D,G,N,_,V), adj_p(A,G,N,V), noun(Nom,G,N,_,_,P).

prep_p(sp(Prep,Nom),P,N) --> preposition(Prep), noun(Nom,_,N,_,_,P).
prep_p(sp(Prep,D,Nom),P,N) --> preposition(Prep), determinant(D,G,N,_,_), noun(Nom,G,N,_,_,P).

verbal_p(sv(V),P,N) --> verb(V,P,N,_).
verbal_p(sv(V,GC),P,N) --> verb(V,P,N,_), pred_complements(GC,N).

pred_complements(scp(GNB),_) --> nom_p_basic(GNB,_,_).
pred_complements(scp(GADJB),N) --> adj_p(GADJB,_,N,_).
%pred_complements(scp(GNB,GADJB),N) --> adj_p(GADJB,_,N,_),nom_p(GNB,N).
pred_complements(scp(GNB,A),N) --> nom_p(GNB,_,N), adv_p(A).
pred_complements(scp(A),_) --> adv_p(A).
%pred_complements(scp(GNB,GADBJ,A),N) --> adj_p(GADBJ,_,N,_), nom_p(GNB,_,N), adv_p(A).
pred_complements(scp(GADBJ,A),N) --> adj_p(GADBJ,_,N,_), adv_p(A).

adj_p_basic(sadjb(A),G,N,V) --> adjective(A,G,N,V).
adj_p_basic(sadjb(A,C),G,N,_) -->quantifier(C), adjective(A,G,N,_).
adj_p_basic(sadjb(P),N,_) --> prep_p(P,N).

adj_p(sadj(GADJB),G,N,V) --> adj_p_basic(GADJB,G,N,V).
adj_p(sadj(GADJB,C,GADJB2),G,N,V) --> adj_p_basic(GADJB,G,N,V), conjunction(C), adj_p_basic(GADJB2,G,N,V).
adj_p(sadj(GADJB,Nx,O),G,N,V) --> adj_p_basic(GADJB,G,N,V), nexus(Nx), sentence(O).

adv_p(sca(A)) --> adverb(A).
adv_p(sca(C,A)) --> quantifier(C), adverb(A).
adv_p(sca(P)) --> prep_p(P,_,_).
adv_p(sca(C)) --> quantifier(C).


%Español
oracion(o(GN,GV)) --> s_nominal(GN,P,N), s_verbal(GV,P,N).
oracion(o(GV)) --> s_verbal(GV,_,_).
oracion(o(O,C,O2)) --> oracion(O), conjuncion(C), oracion(O2).

s_nominal(sn(GNB),P,N) --> s_nominal_basico(GNB,P,N).
s_nominal(sn(GNB,Nx,O),P,N) --> s_nominal_basico(GNB,P,N), nexo(Nx), oracion(O).
s_nominal(sn(GNB,C,GNB2),terc,pl) --> s_nominal_basico(GNB,_,N), conjuncion(C), s_nominal_basico(GNB2,_,N).

s_nominal_basico(snb(Prop),P, N) --> pronombre(Prop,P,N,_).
s_nominal_basico(snb(Nom,Nom2),P,N) --> nombre(Nom,_,N,_,_,P), nombre(Nom2,_,_,_,_,_).
s_nominal_basico(snb(Nom),P,N) --> nombre(Nom,_,N,_,_,P).
s_nominal_basico(snb(D,Nom),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,P).
s_nominal_basico(snb(Prep),P,N) --> s_preposicional(Prep,P,N).
s_nominal_basico(snb(D,Nom,A),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,_,_,P), s_adjetival(A,G,N).

s_preposicional(sp(Prep,Nom),P,N) --> preposicion(Prep), nombre(Nom,_,N,_,_,P).
s_preposicional(sp(Prep,D,Nom),P,N) --> preposicion(Prep), determinante(D,G,N,_,P), nombre(Nom,G,N,_,_,_).

s_verbal(sv(V),P,N) --> verbo(V,P,N,_).
s_verbal(sv(V,GC),P,N) --> verbo(V,P,N,_), s_complementos_predicado(GC,N).

s_complementos_predicado(scp(GNB),_) --> s_nominal_basico(GNB,_,_). % Complemento directo
s_complementos_predicado(scp(GADJB),N) --> s_adjetival(GADJB,_,N).
s_complementos_predicado(scp(GNB,GADJB),N) --> s_nominal(GNB,_,N), s_adjetival(GADJB,_,N).
s_complementos_predicado(scp(GNB,A),N) --> s_nominal(GNB,_,N), s_complemento_adverbial(A).
s_complementos_predicado(scp(A),_) --> s_complemento_adverbial(A).
s_complementos_predicado(scp(GNB,GADBJ,A),N) --> s_nominal(GNB,_,N), s_adjetival(GADBJ,_,N), s_complemento_adverbial(A).
s_complementos_predicado(scp(GADBJ,A),N) --> s_adjetival(GADBJ,_,N), s_complemento_adverbial(A).

s_adjetival_basico(sadjb(A),G,N) --> adjetivo(A,G,N,_).
s_adjetival_basico(sadjb(A,C),G,N) -->cuantificador(C), adjetivo(A,G,N,_).
s_adjetival_basico(sadjb(P),N) --> s_preposicional(P,N).

s_adjetival(sadj(GADJB),G,N) --> s_adjetival_basico(GADJB,G,N).
s_adjetival(sadj(GADJB,C,GADJB2),G,N) --> s_adjetival_basico(GADJB,G,N), conjuncion(C), s_adjetival_basico(GADJB2,G,N).
s_adjetival(sadj(GADJB,Nx,O),G,N) --> s_adjetival_basico(GADJB,G,N), nexo(Nx), oracion(O).

s_complemento_adverbial(sca(A)) --> adverbio(A).
s_complemento_adverbial(sca(C,A)) --> cuantificador(C), adverbio(A).
s_complemento_adverbial(sca(Prep)) --> s_preposicional(Prep,_,_).
s_complemento_adverbial(sca(C)) --> cuantificador(C).


