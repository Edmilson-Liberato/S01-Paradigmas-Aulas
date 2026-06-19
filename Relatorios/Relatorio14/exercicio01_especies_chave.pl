come(sucuri, agua).
come(sucuri, terra).

animal(sucuri).

alimento(terra).
alimento(agua).

nicho(sucuri, pantano).

especie_chave(Animal) :-
    (come(Animal, agua) ; come(Animal, terra)),
    (nicho(Animal, rios) ;
     nicho(Animal, pantano) ;
     nicho(Animal, profundezas)).
