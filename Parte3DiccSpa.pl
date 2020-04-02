determinante(det(art),f,sg, def) --> [la].
determinante(det(art),m,sg, def) --> [el].
determinante(det(art),m,pl,def) --> [los].
determinante(det(art),f,pl,def) --> [las].
determinante(det(art),m,sg,und) --> [un].
determinante(det(art),f,sg,und) --> [una].
determinante(det(art),m,pl,und) --> [unos].
determinante(det(art),f,pl,und) --> [unas].
determinante(det(pos),s) --> [mi].%no se si vale así


pronombre(pron(pron), m, terc, pl, pers) --> [ellos].%no hace falta genero?
pronombre(pron(pron), m, seg, sg, pers) --> [tu].


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
nombre(n(n_19),m,sg,com) --> [fantasma].%problema con esto


verbo(v(v_1),terc,sg) --> [corta].
verbo(v(v_1),terc,pl) --> [cortan].
verbo(v(v_2),terc,sg) --> [envuelve].
verbo(v(v_2),terc,pl) --> [envuelven].
verbo(v(v_3),terc,sg) --> [rompe].
verbo(v(v_3),terc,pl) --> [rompen].
verbo(v(v_4),seg, sg) --> [comes].
verbo(v(v_4),terc, sg) --> [come].
verbo(v(v_4),terc, pl) --> [comen].
verbo(v(v_5),terc, sg) --> [ama].
verbo(v(v_6),terc, sg) --> [estudia].
verbo(v(v_7),terc, sg) --> [persiguio].%insertar tiempo?
verbo(v(v_8),terc, sg) --> [es].
verbo(v(v_9),prim, pl) --> [vimos].
verbo(v(v_10),terc, sg) --> [canta].
verbo(v(v_11),terc, sg) --> [toma].
verbo(v(v_12),terc, sg) --> [lee].
verbo(v(v_13),terc, sg) --> [escribio].%insertar tiempo?

adjetivo(adj(adj_1), f, sg) --> [roja].
adjetivo(adj(adj_2), m, sg) --> [grande].
adjetivo(adj(adj_3), m, sg) --> [gris].
adjetivo(adj(adj_4), m, sg) --> [negro].
adjetivo(adj(adj_5), m, sg) --> [amarillo].
adjetivo(adj(adj_6), m, sg) --> [delgado].
adjetivo(adj(adj_7), f, sg) --> [alta].

preposicion(prep(prep_1)) --> [a].
preposicion(prep(prep_2)) --> [en].
preposicion(prep(prep_3)) --> [de].

nexo(nx(nx_1)) --> [que].

adverbio(adv(adv_1)) --> [ayer].%añadir tiempo lugar?
adverbio(adv(adv_2)) --> [bien].

cuantificador(cuant(cuant_1)) --> [muy].

conjuncion(conj(conj_1)) --> [y].

