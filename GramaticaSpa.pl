:-consult('DiccSpa').
%Español
%Gramática oración
oracion(o(GN,GV)) --> g_nominal(GN,P,N), g_verbal(GV,P,N).
oracion(o(GV)) --> g_verbal(GV,_,_).
oracion(o(GN,GV,C,O)) --> g_nominal(GN,P,N), g_verbal(GV,P,N), conjuncion(C), oracion(O).
oracion(o(GV,C,O)) --> g_verbal(GV,_,_), conjuncion(C), oracion(O).

%Gramática sintagma nominal
g_nominal(gn(GNB),P,N) --> g_nominal_basico(GNB,P,N).
g_nominal(gn(GNB,Nx,O),P,N) --> g_nominal_basico(GNB,P,N), nexo(Nx), oracion(O).
g_nominal(gn(GNB,C,GNB2),terc,pl) --> g_nominal_basico(GNB,_,N), conjuncion(C), g_nominal_basico(GNB2,_,N).

%Gramática sintagma nominal básico
g_nominal_basico(gnb(Prop),P, N) --> pronombre(Prop,P,N,_).
g_nominal_basico(gnb(Nom,Nom2),P,N) --> nombre(Nom,_,N,_,_,P), nombre(Nom2,_,_,_,_,_).
g_nominal_basico(gnb(Nom),P,N) --> nombre(Nom,_,N,_,_,P),!.
g_nominal_basico(gnb(D,Nom),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,com,_,P).
g_nominal_basico(gnb(D,Nom,A),P,N) --> determinante(D,G,N,_,_), nombre(Nom,G,N,com,_,P), g_adjetival(A,G,N).

%Gramática sintagma nominal simple
g_nominal_simple(gns(Nom)) --> nombre(Nom,_,_,com,_,_).
g_nominal_simple(gns(Det,Nom)) --> determinante(Det,G,N,_,_), nombre(Nom,G,N,com,_,_).

%Gramática sintagma preposicional
g_preposicional(gp(Prep,Nom),P,N,T) --> preposicion(Prep), nombre(Nom,_,N,_,T,P).
g_preposicional(gp(Prep,D,Nom),P,N,T) --> preposicion(Prep), determinante(D,G,N,_,_), nombre(Nom,G,N,_,T,P).

%Gramática sintagma verbal
g_verbal(gv(V),P,N) --> verbo(V,P,N,_,_).
g_verbal(gv(vb(v_4),det(art_4),Nom),P,N) --> verbo(vb(v_4),P,N,_,_),  determinante(det(art_4),G,pl,und,_), nombre(Nom,G,pl,com,_,_),!.
g_verbal(gv(vb(v_4),Nom),P,N) --> verbo(vb(v_4),P,N,_,_), g_nominal_simple(Nom).
g_verbal(gv(vb(v_5),Nom),terc,sg) --> verbo(vb(v_5),terc,sg,_,ca), nombre(Nom,_,_,prop,_,_),!.
g_verbal(gv(vb(v_5),SN),P,N) --> verbo(vb(v_5),P,N,_,sa),g_nominal_simple(SN),!.
g_verbal(gv(vb(v_5),Nom,GC),P,N) --> verbo(vb(v_5),P,N,_,sa), nombre(Nom,_,_,com,_,_), g_complementos_predicado(GC,N),!.
g_verbal(gv(V,GC),P,N) --> verbo(V,P,N,_,_), g_complementos_predicado(GC,N).

%Gramática complementos del predicado
g_complementos_predicado(gcp(GNB),_) --> g_nominal_basico(GNB,_,_). % Complemento directo
g_complementos_predicado(gcp(GADJB),N) --> g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,GADJB),N) --> g_nominal(GNB,_,N), g_adjetival(GADJB,_,N).
g_complementos_predicado(gcp(GNB,A),N) --> g_nominal(GNB,_,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(A),_) --> g_complemento_adverbial(A).
g_complementos_predicado(gcp(GNB,GADBJ,A),N) --> g_nominal(GNB,_,N), g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).
g_complementos_predicado(gcp(GADBJ,A),N) --> g_adjetival(GADBJ,_,N), g_complemento_adverbial(A).

%Gramática sintagma adjetival básico
g_adjetival_basico(gadjb(A),G,N) --> adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(A,C),G,N) -->cuantificador(C), adjetivo(A,G,N,_).
g_adjetival_basico(gadjb(P),N) --> g_preposicional(P,N,_).

%Gramática sintagma adjetival
g_adjetival(gadj(GADJB),G,N) --> g_adjetival_basico(GADJB,G,N).
g_adjetival(gadj(GADJB,C,GADJB2),G,N) --> g_adjetival_basico(GADJB,G,N), conjuncion(C), g_adjetival_basico(GADJB2,G,N).
g_adjetival(gadj(GADJB,Nx,O),G,N) --> g_adjetival_basico(GADJB,G,N), nexo(Nx), oracion(O).

%Gramática sintagma adverbial
g_complemento_adverbial(gca(A)) --> adverbio(A).
g_complemento_adverbial(gca(C,A)) --> cuantificador(C), adverbio(A).
g_complemento_adverbial(gca(Prep)) --> g_preposicional(Prep,_,_,plac).
g_complemento_adverbial(gca(C)) --> cuantificador(C).
