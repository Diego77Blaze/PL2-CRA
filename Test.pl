:-consult(draw).
:-consult('Parte3').

writeln:- write('\n').
fallo:- write("Error. Revise que la oracion sea correcta."), writeln.
%Analisis en Español
analisisEspanol1:-  oracion(X, [el, hombre, come, una, manzana], []), write(X), writeln.
analisisEspanol1:-  fallo.
analisisEspanol2:-  oracion(X, [ellos, comen, manzanas], []), write(X), writeln.
analisisEspanol2:-  fallo.
analisisEspanol3:-  oracion(X, [tu, comes, una, manzana, roja], []), write(X), writeln.
analisisEspanol3:-  fallo.
analisisEspanol4:-  oracion(X, [juan, ama, a, maria], []), write(X), writeln.
analisisEspanol4:-  fallo.
analisisEspanol5:-  oracion(X, [el, gato, grande, come, un, raton, gris], []), write(X), writeln.
analisisEspanol5:-  fallo.
analisisEspanol6:-  oracion(X, [juan, estudia, en, la, universidad], []), write(X), writeln.
analisisEspanol6:-  fallo.
analisisEspanol7:-  oracion(X, [el, alumno, ama, la, universidad], []), write(X), writeln.
analisisEspanol7:-  fallo.
analisisEspanol8:-  oracion(X, [el, perro, persiguio, un, gato, negro, en, el, jardin], []), write(X), writeln.
analisisEspanol8:-  fallo.
analisisEspanol9:-  oracion(X, [la, universidad, es, grande], []), write(X), writeln.
analisisEspanol9:-  fallo.
analisisEspanol10:- oracion(X, [el, hombre, que, vimos, ayer, es, mi, vecino], []), write(X), writeln.
analisisEspanol10:- fallo.
analisisEspanol11:- oracion(X, [el, canario, amarillo, canta, muy, bien], []), write(X), writeln.
analisisEspanol11:- fallo.
analisisEspanol12:- oracion(X, [juan, toma, un, cafe, y, lee, el, periodico], []), write(X), writeln.
analisisEspanol12:- fallo.
analisisEspanol13:- oracion(X, [juan, es, delgado, y, maria, es, alta], []), write(X), writeln.
analisisEspanol13:- fallo.
analisisEspanol14:- oracion(X, [oscar, wilde, escribio, el, fantasma, de, canterville], []), write(X), writeln.
analisisEspanol14:- fallo.

analisisEspanol:-
        write('Analisis en Espanol\n'),
        write("1.-  "),
        analisisEspanol1,
        write("2.-  "),
        analisisEspanol2,
        write("3.-  "),
        analisisEspanol3,
        write("4.-  "),
        analisisEspanol4,
        write("5.-  "),
        analisisEspanol5,
        write("6.-  "),
        analisisEspanol6,
        write("7.-  "),
        analisisEspanol7,
        write("8.-  "),
        analisisEspanol8,
        write("9.-  "),
        analisisEspanol9,
        write("10.- "),
        analisisEspanol10,
        write("11.- "),
        analisisEspanol11,
        write("12.- "),
        analisisEspanol12,
        write("13.- "),
        analisisEspanol13,
        write("14.- "),
        analisisEspanol14,!.
%Analisis en Ingles
analisisIngles1:-  sentence(X, [the, man, eats, an, apple], []), write(X), writeln.
analisisIngles1:-  fallo.
analisisIngles2:-  sentence(X, [they, eat, some, apples], []), write(X), writeln.
analisisIngles2:-  fallo.
analisisIngles3:-  sentence(X, [you, eat, a, red, apple], []), write(X), writeln.
analisisIngles3:-  fallo.
analisisIngles4:-  sentence(X, [john, loves, mary], []), write(X), writeln.
analisisIngles4:-  fallo.
analisisIngles5:-  sentence(X, [the, big, cat, eats, a, gray, mouse], []), write(X), writeln.
analisisIngles5:-  fallo.
analisisIngles6:-  sentence(X, [john, studies, at, university], []), write(X), writeln.
analisisIngles6:-  fallo.
analisisIngles7:-  sentence(X, [the, student, loves, university], []), write(X), writeln.
analisisIngles7:-  fallo.
analisisIngles8:-  sentence(X, [the, dog, chased, a, black, cat, at, the, garden], []), write(X), writeln.
analisisIngles8:-  fallo.
analisisIngles9:-  sentence(X, [the, university, is, big], []), write(X), writeln.
analisisIngles9:-  fallo.
analisisIngles10:- sentence(X, [the, man, that, we, saw, yesterday, is, my, neighbour], []), write(X), writeln.
analisisIngles10:- fallo.
analisisIngles11:- sentence(X, [the, yellow, canary, sings, very, well], []), write(X), writeln.
analisisIngles11:- fallo.
analisisIngles12:- sentence(X, [john, has, a, coffee, and, reads, the, newspaper], []), write(X), writeln.
analisisIngles12:- fallo.
analisisIngles13:- sentence(X, [john, is, thin, and, mary, is, tall], []), write(X), writeln.
analisisIngles13:- fallo.
analisisIngles14:- sentence(X, [oscar, wilde, wrote, the, canterville, ghost], []), write(X), writeln.
analisisIngles14:- fallo.

analisisIngles:- 
        write('test para el analisis en ingles\n'),
        write("1.-  "),
        analisisIngles1,
        write("2.-  "),
        analisisIngles2,
        write("3.-  "),
        analisisIngles3,
        write("4.-  "),
        analisisIngles4,
        write("5.-  "),
        analisisIngles5,
        write("6.-  "),
        analisisIngles6,
        write("7.-  "),
        analisisIngles7,
        write("8.-  "),
        analisisIngles8,
        write("9.-  "),
        analisisIngles9,
        write("10.- "),
        analisisIngles10,
        write("11.- "),
        analisisIngles11,
        write("12.- "),
        analisisIngles12,
        write("13.- "),
        analisisIngles13,
        write("14.- "),
        analisisIngles14,!.
%Traducción Español-Inglés
traducirEspanolIngles1:-  oracion(X, [el, hombre, come, una, manzana], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles1:-  fallo.
traducirEspanolIngles2:-  oracion(X, [ellos, comen, manzanas], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles2:-  fallo.
traducirEspanolIngles3:-  oracion(X, [tu, comes, una, manzana, roja], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles3:-  fallo.
traducirEspanolIngles4:-  oracion(X, [juan, ama, a, maria], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles4:-  fallo.
traducirEspanolIngles5:-  oracion(X, [el, gato, grande, come, un, raton, gris], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles5:-  fallo.
traducirEspanolIngles6:-  oracion(X, [juan, estudia, en, la, universidad], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles6:-  fallo.
traducirEspanolIngles7:-  oracion(X, [el, alumno, ama, la, universidad], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles7:-  fallo.
traducirEspanolIngles8:-  oracion(X, [el, perro, persiguio, un, gato, negro, en, el, jardin], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles8:-  fallo.
traducirEspanolIngles9:-  oracion(X, [la, universidad, es, grande], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles9:-  fallo.
traducirEspanolIngles10:- oracion(X, [el, hombre, que, vimos, ayer, es, mi, vecino], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles10:- fallo.
traducirEspanolIngles11:- oracion(X, [el, canario, amarillo, canta, muy, bien], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles11:- fallo.
traducirEspanolIngles12:- oracion(X, [juan, toma, un, cafe, y, lee, el, periodico], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles12:- fallo.
traducirEspanolIngles13:- oracion(X, [juan, es, delgado, y, maria, es, alta], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles13:- fallo.
traducirEspanolIngles14:- oracion(X, [oscar, wilde, escribio, el, fantasma, de, canterville], []), sentence(X,Ingles,[]), write(Ingles), writeln.
traducirEspanolIngles14:- fallo.
%Traducción Inglés-Español
traduccionEspanolIngles:- 
        write('Traduccion de español a ingles\n'),
        write("1.-  "),
        traducirEspanolIngles1,
        write("2.-  "),
        traducirEspanolIngles2,
        write("3.-  "),
        traducirEspanolIngles3,
        write("4.-  "),
        traducirEspanolIngles4,
        write("5.-  "),
        traducirEspanolIngles5,
        write("6.-  "),
        traducirEspanolIngles6,
        write("7.-  "),
        traducirEspanolIngles7,
        write("8.-  "),
        traducirEspanolIngles8,
        write("9.-  "),
        traducirEspanolIngles9,
        write("10.- "),
        traducirEspanolIngles10,
        write("11.- "),
        traducirEspanolIngles11,
        write("12.- "),
        traducirEspanolIngles12,
        write("13.- "),
        traducirEspanolIngles13,
        write("14.- "),
        traducirEspanolIngles14,!.

traducirInglesEspanol1:-  sentence(X, [the, man, eats, an, apple], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol1:-  fallo.
traducirInglesEspanol2:-  sentence(X, [they, eat, some, apples], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol2:-  fallo.
traducirInglesEspanol3:-  sentence(X, [you, eat, a, red, apple], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol3:-  fallo.
traducirInglesEspanol4:-  sentence(X, [john, loves, mary], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol4:-  fallo.
traducirInglesEspanol5:-  sentence(X, [the, big, cat, eats, a, gray, mouse], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol5:-  fallo.
traducirInglesEspanol6:-  sentence(X, [john, studies, at, university], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol6:-  fallo.
traducirInglesEspanol7:-  sentence(X, [the, student, loves, university], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol7:-  fallo.
traducirInglesEspanol8:-  sentence(X, [the, dog, chased, a, black, cat, at, the, garden], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol8:-  fallo.
traducirInglesEspanol9:-  sentence(X, [the, university, is, big], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol9:-  fallo.
traducirInglesEspanol10:- sentence(X, [the, man, that, we, saw, yesterday, is, my, neighbour], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol10:- fallo.
traducirInglesEspanol11:- sentence(X, [the, yellow, canary, sings, very, well], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol11:- fallo.
traducirInglesEspanol12:- sentence(X, [john, has, a, coffee, and, reads, the, newspaper], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol12:- fallo.
traducirInglesEspanol13:- sentence(X, [john, is, thin, and, mary, is, tall], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol13:- fallo.
traducirInglesEspanol14:- sentence(X, [oscar, wilde, wrote, the, canterville, ghost], []), oracion(X,Espanol,[]), write(Espanol), writeln.
traducirInglesEspanol14:- fallo.

traduccionInglesEspanol:- 
        write('Traduccion de ingles a español\n'),        
        write("1.-  "),
        traducirInglesEspanol1,
        write("2.-  "),
        traducirInglesEspanol2,
        write("3.-  "),
        traducirInglesEspanol3,
        write("4.-  "),
        traducirInglesEspanol4,
        write("5.-  "),
        traducirInglesEspanol5,
        write("6.-  "),
        traducirInglesEspanol6,
        write("7.-  "),
        traducirInglesEspanol7,
        write("8.-  "),
        traducirInglesEspanol8,
        write("9.-  "),
        traducirInglesEspanol9,
        write("10.- "),
        traducirInglesEspanol10,
        write("11.- "),
        traducirInglesEspanol11,
        write("12.- "),
        traducirInglesEspanol12,
        write("13.- "),
        traducirInglesEspanol13,
        write("14.- "),
        traducirInglesEspanol14,!.
