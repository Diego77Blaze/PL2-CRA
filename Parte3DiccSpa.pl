determinante(det(art_1),f,sg,def,_) --> [la].
determinante(det(art_1),m,sg,def,_) --> [el].
determinante(det(art_1),m,pl,def,_) --> [los].
determinante(det(art_1),f,pl,def,_) --> [las].
determinante(det(art_2),m,sg,ind,_) --> [un].
determinante(det(art_2),f,sg,ind,_) --> [una].
determinante(det(art_3),m,pl,ind,_) --> [unos].
determinante(det(art_3),f,pl,ind,_) --> [unas].
determinante(det(pos),_,_,pos,_) --> [mi].

pronombre(pron(pron_1),prim,sg,_) --> [yo].
pronombre(pron(pron_1),prim,pl,m) --> [nosotros].
pronombre(pron(pron_1),prim,pl,f) --> [nosotras].
pronombre(pron(pron_2),seg,sg,_) --> [tu].
pronombre(pron(pron_2),seg,pl,m) --> [vosotros].
pronombre(pron(pron_2),seg,pl,f) --> [vosotras].
pronombre(pron(pron_3),terc,sg,m) --> [el].
pronombre(pron(pron_3),terc,sg,f) --> [ella].
pronombre(pron(pron_3),terc,pl,m) --> [ellos].
pronombre(pron(pron_3),terc,pl,f) --> [ellas].

nombre(n(n_1),f,sg,com,_) --> [piedra].
nombre(n(n_2),m,sg,com,_) --> [papel].
nombre(n(n_3),f,pl,com,_) --> [tijeras].
nombre(n(n_4),f,sg,com,_) --> [manzana].
nombre(n(n_5),m,sg,com,_) --> [hombre].
nombre(n(n_6),m,_,prop,_) --> [juan].
nombre(n(n_7),f,_,prop,_) --> [maria].
nombre(n(n_8),m,sg,com,_) --> [gato].
nombre(n(n_9),m,sg,com,_) --> [raton].
nombre(n(n_10),f,sg,com,_) --> [universidad].
nombre(n(n_11),m,sg,com,_) --> [alumno].
nombre(n(n_12),m,sg,com,_) --> [perro].
nombre(n(n_13),m,sg,com,_) --> [vecino].
nombre(n(n_14),m,sg,com,_) --> [canario].
nombre(n(n_15),m,sg,com,_) --> [cafe].
nombre(n(n_16),m,sg,com,_) --> [periodico].
nombre(n(n_17),m,_,prop,_) --> [oscar].
nombre(n(n_18),_,_,prop,_) --> [wilde].
nombre(n(n_19),m,sg,com,_) --> [fantasma].
nombre(n(n_20),f,sg,com,_) --> [mujer].
nombre(n(n_21),m,sg,com,_) --> [jardin].
nombre(n(n_22),_,_,com,_) --> [canterville].
nombre(n(n_23),f,pl,com,_) --> [manzanas].
nombre(n(n_24),m,pl,com,_) --> [ratones].

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
verbo(v(v_7),terc, sg,pas) --> [persiguio].
verbo(v(v_8),terc, sg,pres) --> [es].
verbo(v(v_9),prim, pl,pas) --> [vimos].
verbo(v(v_10),terc, sg,pres) --> [canta].
verbo(v(v_11),terc, sg,pres) --> [toma].
verbo(v(v_12),terc, sg,pres) --> [lee].
verbo(v(v_13),terc, sg,pas) --> [escribio].
verbo(v(v_14),terc, sg,pas) --> [cazo].
verbo(v(v_15),prim, sg,pas) --> [era].
verbo(v(v_15),terc, sg,pas) --> [era].

adjetivo(adj(adj_1), f, sg) --> [roja].
adjetivo(adj(adj_2), m, sg) --> [grande].
adjetivo(adj(adj_3), m, sg) --> [gris].
adjetivo(adj(adj_4), m, sg) --> [negro].
adjetivo(adj(adj_5), m, sg) --> [amarillo].
adjetivo(adj(adj_6), m, sg) --> [delgado].
adjetivo(adj(adj_7), f, sg) --> [alta].

adverbio(adv(adv_1)) --> [ayer].
adverbio(adv(adv_2)) --> [bien].
adverbio(adv(adv_3)) --> [hoy].
adverbio(adv(adv_4)) --> [alli].
adverbio(adv(adv_5)) --> [aqui].
adverbio(adv(adv_6)) --> [no].

preposicion(prep(prep_1)) --> [a].
preposicion(prep(prep_2)) --> [en].
preposicion(prep(prep_3)) --> [de].

nexo(nx(nx_1)) --> [que].

cuantificador(cuant(cuant_1)) --> [muy].

conjuncion(conj(conj_1)) --> [y].
conjuncion(conj(conj_2)) --> [o].
conjuncion(conj(conj_3)) --> [u].
conjuncion(conj(conj_4)) --> [pero].
conjuncion(conj(conj_5)) --> [aunque].