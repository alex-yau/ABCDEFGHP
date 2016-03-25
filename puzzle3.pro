:- use_module(library(clpfd)).

puzzle3([A,B]-[C,D]=[E,F],[E,F]+[G,H]=[P,P,P]) :-
        Vars = [A,B,C,D,E,F,G,H,P],
        Vars ins 0..9,
	A #\= 0, C #\= 0, E #\= 0 , G #\= 0,
        all_distinct(Vars),
	A*10 + B - C*10 - D #= E*10 + F,
	E*10 + F + G*10 + H #= P*100 + P*10 + P.
