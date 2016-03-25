/* 
To run this program
puzzle2(As-Bs=Cs,Cs+Ds=Ps), labeling([up], As), labeling([up], Bs).
*/

:- use_module(library(clpfd)).

puzzle2([A,B]-[C,D]=[E,F],[E,F]+[G,H]=[P,P,P]) :-
        Vars = [A,B,C,D,E,F,G,H,P],
        Vars ins 1..9,
        all_distinct(Vars),
		A*10 + B - C*10 - D #= E*10 + F,
		E*10 + F + G*10 + H #= P*100 + P*10 + P.
