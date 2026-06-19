come(sucuri, agua).
come(sucuri, terra).
come(girassol, sol).
come(girassol, terra).
come(cacto, sol).
come(cacto, terra).
come(suculenta, sol).
come(suculenta, terra).

animal(sucuri).

alimento(terra).
alimento(agua).

nicho(sucuri, pantano).
nicho(sucuri, rios).

local_comum(sucuri, margens).


especie_chave(Animal) :-
    (come(Animal, agua) ; come(Animal, terra)),
    (nicho(Animal, rios) ;
     nicho(Animal, pantano) ;
     nicho(Animal, profundezas)).

especie_dominante(Animal) :-
    nicho(Animal, X),
    nicho(Animal, Y),
    X \= Y,
    local_comum(Animal, margens).

competidores_diretos(A, B) :-
    come(A, sol),
    come(B, sol),
    come(A, terra),
    come(B, terra),
    A \= B.
