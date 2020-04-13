% facts

f(a).
f(b).
g(a).
g(b).
g(c).
h(b).

k(X) :- f(X), g(X), h(X).


vertical(line(point(X,Y), point(X,Z))).
horizontal(line(point(X,Y), point(Z,Y))).


is_digesting(X,Y) :- just_ate(X,Y).
is_digesting(X,Y) :-
    just_ate(X,Z),
    is_digesting(Z,Y).

just_ate(stork,frog).
just_ate(frog,mosquito).
just_ate(mosquito,blood(john)).
