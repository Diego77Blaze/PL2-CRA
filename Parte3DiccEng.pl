determinant(det(art_1),_,_,def) --> [the].
determinant(det(art_2),_,sg,und) --> [a].
determinant(det(art_2),_,sg,und) --> [an].
determinant(det(art_3),_,sg,und) --> [].
determinant(det(pos),_,sg,pos) --> [my].
determinant(det(pos),_,_,_) --> [].

pronoun(pron(pron_1),prim,sg,_) --> [i].
pronoun(pron(pron_1),prim,pl,_) --> [we].
pronoun(pron(pron_2),seg,_,_) --> [you].
pronoun(pron(pron_3),terc,sg,m) --> [he].
pronoun(pron(pron_3),terc,sg,f) --> [she].
pronoun(pron(pron_3),terc,pl,_) --> [they].

noun(n(n_1),_,sg,com) --> [rock].
noun(n(n_2),_,sg,com) --> [paper].
noun(n(n_3),_,pl,com) --> [scissors].
noun(n(n_4),_,sg,com) --> [apple].
noun(n(n_5),m,sg,com) --> [man].
noun(n(n_6),m,_,prop) --> [john].
noun(n(n_7),f,_,prop) --> [mary].
noun(n(n_8),_,sg,com) --> [cat].
noun(n(n_9),_,sg,com) --> [mouse].
noun(n(n_10),_,sg,com) --> [university].
noun(n(n_11),_,sg,com) --> [student].
noun(n(n_12),_,sg,com) --> [dog].
noun(n(n_13),_,sg,com) --> [neighbour].
noun(n(n_14),_,sg,com) --> [canary].
noun(n(n_15),_,sg,com) --> [coffee].
noun(n(n_16),_,sg,com) --> [newspaper].
noun(n(n_17),m,sg,prop) --> [oscar].
noun(n(n_18),_,_,prop) --> [wilde].
noun(n(n_19),_,_,com) --> [ghost].
noun(n(n_20),f,sg,com) --> [woman].
noun(n(n_21),m,sg,com) --> [garden].
noun(n(n_22),_,_,com) --> [canterville].
noun(n(n_23),_,pl,com) --> [apples].
noun(n(n_24),_,sg,com) --> [mice].

verb(v(v_1),terc,sg,pres) --> [cuts].
verb(v(v_1),_,_,_) --> [cut].
verb(v(v_2),terc,sg,pres) --> [wraps].
verb(v(v_2),_,_,pres) --> [wrap].
verb(v(v_3),terc,sg,pres) --> [breaks].
verb(v(v_3),_,_,pres) --> [break].
verb(v(v_4),terc,sg,pres) --> [eats].
verb(v(v_4),_, _,pres) --> [eat].
verb(v(v_5),terc,sg,pres) --> [loves].
verb(v(v_6),terc,sg,pres) --> [studies].
verb(v(v_7),_,_,pas) --> [chased].
verb(v(v_8),terc,sg,pres) --> [is].
verb(v(v_9),_,_,pas) --> [saw].
verb(v(v_10),terc,sg,pres) --> [sings].
verb(v(v_11),terc,sg,pres) --> [has].
verb(v(v_12),terc,sg,pres) --> [reads].
verb(v(v_13),_,_,pas) --> [wrote].
verb(v(v_14),_,_,pas) --> [caught].
verb(v(v_15),prim,sg,pas) --> [was].
verb(v(v_15),terc,sg,pas) --> [was].
verb(v(v_15),seg,_,pas) --> [were].
verb(v(v_15),_,_,pas) --> [were].

adjective(adj(adj_1),_,_) --> [red].
adjective(adj(adj_2),_,_) --> [big].
adjective(adj(adj_3),_,_) --> [gray].
adjective(adj(adj_4),_,_) --> [black].
adjective(adj(adj_5),_,_) --> [yellow].
adjective(adj(adj_6),_,_) --> [thin].
adjective(adj(adj_7),_,_) --> [tall].

preposition(prep(prep_1)) --> [].
preposition(prep(prep_2)) --> [at].
preposition(prep(prep_3)) --> [].

nexus(nx(nx_1)) --> [that].

adverb(adv(adv_1)) --> [yesterday].
adverb(adv(adv_2)) --> [well].
adverb(adv(adv_3)) --> [today].
adverb(adv(adv_4)) --> [there].
adverb(adv(adv_5)) --> [here].
adverb(adv(adv_6)) --> [no].

quantifier(cuant(cuant_1)) --> [very].

conjunction(conj(conj_1)) --> [and].
conjunction(conj(conj_2)) --> [or].
conjunction(conj(conj_3)) --> [or].
conjunction(conj(conj_4)) --> [but].
conjunction(conj(conj_5)) --> [although].