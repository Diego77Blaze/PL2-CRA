:-consult('DiccEng').
%English
%Sentence grammar
sentence(o(GN,GV)) --> nom_p(GN,P,N,suj), verbal_p(GV,P,N).
sentence(o(GV)) --> verbal_p(GV,_,_).
sentence(o(GN,GV,C,O)) --> nom_p(GN,P,N,suj), verbal_p(GV,P,N), conjunction(C), sentence(O).
sentence(o(GV,C,O)) --> verbal_p(GV,_,_), conjunction(C), sentence(O).

%Grammar nominal syntagma
nom_p(gn(GNB),P,N,Comp) --> nom_p_basic(GNB,P,N,Comp).
nom_p(gn(GNB,Nx,O),P,N,Comp) --> nom_p_basic(GNB,P,N,Comp), nexus(Nx), sentence(O).
nom_p(gn(GNB,C,GNB2),terc,pl,Comp) --> nom_p_basic(GNB,_,_,Comp), conjunction(C), nom_p_basic(GNB2,_,_,Comp).

%Grammar basic nominal syntagma
nom_p_basic(gnb(Prop),P,N,_) --> pronoun(Prop,P,N,_).
nom_p_basic(gnb(Nom,Nom2),_,N,_) --> noun(Nom,_,N,_,_,_), noun(Nom2,_,_,_,_,_).
nom_p_basic(gnb(det(art_1),Nom),P,N,suj) --> determinant(det(art_1),G,N,def,V), noun(Nom,G,N,_,V,P).
nom_p_basic(gnb(det(art_1),n(n_10)),P,N,suj) --> determinant(det(art_1),G,N,und,V), noun(n(n_10),G,N,_,V,P),!.
nom_p_basic(gnb(Nom),P,N,_) --> noun(Nom,_,N,_,_,P),!.
nom_p_basic(gnb(D,Nom),P,N,_) --> determinant(D,G,N,_,V), noun(Nom,G,N,_,V,P),!.
nom_p_basic(gnb(det(art_1),Nom,A),P,N,_) --> determinant(det(art_1),G,N,_,V), adj_p(A,G,N,V), noun(Nom,G,N,_,_,P),!.
nom_p_basic(gnb(D,Nom,A),P,N,_) --> determinant(D,G,N,_,V), adj_p(A,G,N,V), noun(Nom,G,N,_,_,P).

%Grammar simple nominal syntagma
nom_p_simple(gns(n(n_7)),_) --> noun(n(n_7),_,_,prop,_,_),!.
nom_p_simple(gns(det(art_1),n(n_10)),nsuj) --> determinant(det(art_1),_,_,und,_), noun(n(n_10),_,_,_,_,_).
nom_p_simple(gns(Nom),_) --> noun(Nom,_,_,com,_,_).
nom_p_simple(gns(Det,Nom),suj) --> determinant(Det,G,N,_,_), noun(Nom,G,N,_,_,_).

%Grammar prepositional syntagma
prep_p(gp(Prep,det(art_1),n(n_10)),P,N,nsuj) --> preposition(Prep), determinant(det(art_1),_,_,und,_), noun(n(n_10),_,N,_,_,P),!.
prep_p(gp(Prep,Nom),P,N,_) --> preposition(Prep), noun(Nom,_,N,_,_,P).
prep_p(gp(Prep,D,Nom),P,N,_) --> preposition(Prep), determinant(D,G,N,_,_), noun(Nom,G,N,_,_,P).

%Grammar verbal syntagma
verbal_p(gv(V),P,N) --> verb(V,P,N,_).
verbal_p(gv(vb(v_4),det(art_4),Nom),P,N) --> verb(vb(v_4),P,N,_), determinant(det(art_4),G,pl,und,_), noun(Nom,G,pl,com,_,_),!.
verbal_p(gv(vb(v_5),n(n_7)),terc,sg) --> verb(vb(v_5),terc,sg,_), nom_p_simple(n(n_7),nsuj),!.
verbal_p(gv(vb(v_5),Nom),P,N) --> verb(vb(v_5),P,N,_), noun(Nom,_,_,prop,_,_).
verbal_p(gv(vb(v_5),det(art_1),n(n_10)),P,N) --> verb(vb(v_5),P,N,_), determinant(det(art_1),_,_,und,_), noun(n(n_10),_,_,prop,_,_),!.
verbal_p(gv(vb(v_5),Nom, GC),P,N) --> verb(vb(v_5),P,N,_), noun(Nom,_,_,prop,_,_), pred_complements(GC,N).
verbal_p(gv(vb(v_5),det(art_1),n(n_10), GC),P,N) --> verb(vb(v_5),P,N,_), determinant(det(art_1),_,_,und,_), noun(n(n_10),_,_,prop,_,_), pred_complements(GC,N),!.
verbal_p(gv(vb(v_5),SN),P,N) --> verb(vb(v_5),P,N,_), nom_p_simple(SN, nsuj),!.
verbal_p(gv(V,GC),P,N) --> verb(V,P,N,_), pred_complements(GC,N).

%Grammar predicate complements
pred_complements(gcp(GNB),_) --> nom_p_basic(GNB,_,_,nsuj).
pred_complements(gcp(GADJB),N) --> adj_p(GADJB,_,N,_).
pred_complements(gcp(GNB,A),N) --> nom_p(GNB,_,N,nsuj), adv_p(A).
pred_complements(gcp(A),_) --> adv_p(A).
pred_complements(gcp(GADBJ,A),N) --> adj_p(GADBJ,_,N,_), adv_p(A).

%Grammar basic adjetival syntagma
adj_p_basic(gadjb(A),G,N,V) --> adjective(A,G,N,V).
adj_p_basic(gadjb(A,C),G,N,_) -->quantifier(C), adjective(A,G,N,_).
adj_p_basic(gadjb(P),N,_) --> prep_p(P,N).

%Grammar adjetival syntagma
adj_p(gadj(GADJB),G,N,V) --> adj_p_basic(GADJB,G,N,V).
adj_p(gadj(GADJB,C,GADJB2),G,N,V) --> adj_p_basic(GADJB,G,N,V), conjunction(C), adj_p_basic(GADJB2,G,N,V).
adj_p(gadj(GADJB,Nx,O),G,N,V) --> adj_p_basic(GADJB,G,N,V), nexus(Nx), sentence(O).

%Grammar adverbial syntagma
adv_p(gca(A)) --> adverb(A).
adv_p(gca(C,A)) --> quantifier(C), adverb(A).
adv_p(gca(P)) --> prep_p(P,_,_,nsuj).
adv_p(gca(C)) --> quantifier(C).