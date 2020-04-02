determinant(det(art),def) --> [the].
determinant(det(art),und) --> [a].
determinant(det(art),und) --> [an].
determinant(det(pos)) --> [my].

pronoun(pron(pron), terc, pl) --> [they].
pronoun(pron(pron),seg, sg) --> [you].

noun(n(n_1),sg,com) --> [rock].
noun(n(n_2),sg,com) --> [paper].
noun(n(n_3),pl,com) --> [scissors].
noun(n(n_4),sg,com) --> [apple].
noun(n(n_4),pl,com) --> [apples].
noun(n(n_5),sg,com) --> [man].
noun(n(n_6),sg,prop) --> [john].
noun(n(n_7),sg,prop) --> [mary].
noun(n(n_8),sg,com) --> [cat].
noun(n(n_9),sg,com) --> [mouse].
noun(n(n_10),sg,com) --> [university].
noun(n(n_11),sg,com) --> [student].
noun(n(n_12),sg,com) --> [dog].
noun(n(n_13),sg,com) --> [neighbour].
noun(n(n_14),sg,com) --> [canary].
noun(n(n_15),sg,com) --> [coffee].
noun(n(n_16),sg,com) --> [newspaper].
noun(n(n_17),sg,prop) --> [oscar].
noun(n(n_18),sg,prop) --> [wilde].
noun(n(n_19),sg,com) --> [ghost].

verb(v(v_1),terc,sg,pres) --> [cuts].
verb(v(v_1),_,_,pres) --> [cut].
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

adjective(adj(adj_1)) --> [red].
adjective(adj(adj_2)) --> [big].
adjective(adj(adj_3)) --> [grey].
adjective(adj(adj_4)) --> [black].
adjective(adj(adj_5)) --> [yellow].
adjective(adj(adj_6)) --> [thin].
adjective(adj(adj_7)) --> [tall].


preposition(prep(prep_2)) --> [at].

nexus(nx(nx_1)) --> [que].

adverb(adv(adv_1)) --> [yesterday].
adverb(adv(adv_2)) --> [well].

quantifier(cuant(cuant_1)) --> [very].

conjunction(conj(conj_1)) --> [and].
