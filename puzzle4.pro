/*
To run this program
puzzle4(As-Bs=Cs,Cs+Ds=Ps), labeling([up], As), labeling([up], Bs).
*/

:- use_module(library(clpfd)).
puzzle4([A,B]-[C,D]=[E,F],[E,F]+[G,H]=[P,P,P]) :-
        Vars = [A,B,C,D,E,F,G,H,P],
        Vars ins 1..9,
	all_distinct(Vars),
	B - D #>= 0 #==> B - D #= F,
	B - D #< 0  #==> B - D + 10 #= F,
	B - D #>= 0 #==> A - C #= E,
	B - D #< 0  #==> A - C - 1 #= E,
	F + H #>= 10 #==> F + H - 10 #= P,
	F + H #< 10  #==> F + H #= P,
	F + H #>= 10 #==> (E + G + 1) rem 10 #= P,
	F + H #< 10  #==> (E + G) rem 10 #= P,
	E + G #>= 10 #==> 1 #= P,
	E + G #< 10  #==> 0 #= P.
