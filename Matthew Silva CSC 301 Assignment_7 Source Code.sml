(* Matthew Silva CSC 301 Assignment #7*)

fun sqsum L = foldr (fn (a,b) => (a*a + b)) 0 L;

fun mymap f [] = [ ] 
|	mymap f (x::rest) = (f x) :: mymap f rest;