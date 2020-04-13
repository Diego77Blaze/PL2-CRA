%determinante
determinante(det(art_1),f,sg,def,_) --> [la].
determinante(det(art_1),m,sg,def,_) --> [el].
determinante(det(art_1),m,pl,def,_) --> [los].
determinante(det(art_1),f,pl,def,_) --> [las].
determinante(det(art_2),m,sg,ind,_) --> [un].
determinante(det(art_2),f,sg,ind,_) --> [una].
determinante(det(art_3),m,pl,ind,_) --> [unos].
determinante(det(art_3),f,pl,ind,_) --> [unas].
determinante(det(art_4),_,pl,und,_) --> [].
determinante(det(pos),_,sg,pos,_) --> [mi].
%pronombre
pronombre(pron(pron_1),prim,sg,_) --> [yo].
pronombre(pron(pron_2),seg,sg,_) --> [tu].
pronombre(pron(pron_3),terc,sg,m) --> [el].
pronombre(pron(pron_4),terc,sg,f) --> [ella].
pronombre(pron(pron_5),prim,pl,m) --> [nosotros].
pronombre(pron(pron_5),prim,pl,f) --> [nosotras].
pronombre(pron(pron_6),seg,pl,m) --> [vosotros].
pronombre(pron(pron_6),seg,pl,f) --> [vosotras].
pronombre(pron(pron_7),terc,pl,m) --> [ellos].
pronombre(pron(pron_7),terc,pl,f) --> [ellas].
%nombre
nombre(n(n_1),f,sg,com,obj,terc) --> [piedra].
nombre(n(n_2),m,sg,com,obj,terc) --> [papel].
nombre(n(n_3),f,pl,com,obj,terc) --> [tijeras].
nombre(n(n_4),f,sg,com,obj,terc) --> [manzana].
nombre(n(n_5),m,sg,com,obj,terc) --> [hombre].
nombre(n(n_6),m,sg,prop,_,terc) --> [juan].
nombre(n(n_7),f,sg,prop,_,terc) --> [maria].
nombre(n(n_8),m,sg,com,obj,terc) --> [gato].
nombre(n(n_9),m,sg,com,obj,terc) --> [raton].
nombre(n(n_10),f,sg,com,plac,terc) --> [universidad].
nombre(n(n_11),m,sg,com,obj,terc) --> [alumno].
nombre(n(n_12),m,sg,com,obj,terc) --> [perro].
nombre(n(n_13),m,sg,com,obj,terc) --> [vecino].
nombre(n(n_14),m,sg,com,obj,terc) --> [canario].
nombre(n(n_15),m,sg,com,obj,terc) --> [cafe].
nombre(n(n_16),m,sg,com,obj,terc) --> [periodico].
nombre(n(n_17),m,_,prop,obj,terc) --> [oscar].
nombre(n(n_18),_,_,prop,obj,terc) --> [wilde].
nombre(n(n_20),f,sg,com,obj,terc) --> [mujer].
nombre(n(n_21),m,sg,com,plac,terc) --> [jardin].
nombre(n(n_22),m,sg,com,obj,terc) --> [fantasma,de,canterville].
nombre(n(n_23),f,pl,com,obj,terc) --> [manzanas].
nombre(n(n_24),m,pl,com,obj,terc) --> [ratones].
%verbo
verbo(vb(v_1),terc,sg,pres,_) --> [corta].
verbo(vb(v_1),terc,pl,pres,_) --> [cortan].
verbo(vb(v_2),terc,sg,pres,_) --> [envuelve].
verbo(vb(v_2),terc,pl,pres,_) --> [envuelven].
verbo(vb(v_3),terc,sg,pres,_) --> [rompe].
verbo(vb(v_3),terc,pl,pres,_) --> [rompen].
verbo(vb(v_4),seg,sg,pres,_) --> [comes].
verbo(vb(v_4),terc,sg,pres,_) --> [come].
verbo(vb(v_4),terc,pl,pres,_) --> [comen].
verbo(vb(v_5),terc,sg,pres,sa) --> [ama].
verbo(vb(v_5),terc,sg,pres,ca) --> [ama,a].
verbo(vb(v_6),terc,sg,pres,_) --> [estudia].
verbo(vb(v_7),terc,sg,pas,_) --> [persiguio].
verbo(vb(v_8),terc,sg,pres,_) --> [es].
verbo(vb(v_9),prim,pl,pas,_) --> [vimos].
verbo(vb(v_10),terc,sg,pres,_) --> [canta].
verbo(vb(v_11),terc,sg,pres,_) --> [toma].
verbo(vb(v_12),terc,sg,pres,_) --> [lee].
verbo(vb(v_13),terc,sg,pas,_) --> [escribio].
verbo(vb(v_14),terc,sg,pas,_) --> [cazo].
verbo(vb(v_15),prim,sg,pas,_) --> [era].
verbo(vb(v_15),terc,sg,pas,_) --> [era].
%adjetivo
adjetivo(adj(adj_1), f, sg, _) --> [roja].
adjetivo(adj(adj_2), m, sg, _) --> [grande].
adjetivo(adj(adj_3), m, sg, _) --> [gris].
adjetivo(adj(adj_4), m, sg, _) --> [negro].
adjetivo(adj(adj_5), m, sg, _) --> [amarillo].
adjetivo(adj(adj_6), m, sg, _) --> [delgado].
adjetivo(adj(adj_7), f, sg, _) --> [alta].
%adverbio
adverbio(adv(adv_1)) --> [ayer].
adverbio(adv(adv_2)) --> [bien].
adverbio(adv(adv_3)) --> [hoy].
adverbio(adv(adv_4)) --> [alli].
adverbio(adv(adv_5)) --> [aqui].
adverbio(adv(adv_6)) --> [no].
%preposicion
preposicion(prep(prep_1)) --> [en].
preposicion(prep(prep_2)) --> [de].
%nexo
nexo(nx(nx_1)) --> [que].
%cuantificador
cuantificador(cuant(cuant_1)) --> [muy].
%conjuncion
conjuncion(conj(conj_1)) --> [y].
conjuncion(conj(conj_2)) --> [o].
conjuncion(conj(conj_3)) --> [u].
conjuncion(conj(conj_4)) --> [pero].
conjuncion(conj(conj_5)) --> [aunque].