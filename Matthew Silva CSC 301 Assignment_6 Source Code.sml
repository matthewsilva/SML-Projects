(* My source code and screenshots depicting function are also included in the pdf*)

fun more(e, []) = []
|     more(e, first::rest) = if first > e then first::more(e, rest) else more(e, rest)

fun quicksort [] = []
| quicksort [a] = [a]
| quicksort (pivot::rest) =
	let
		fun compareToPivot(pivot, []) =([], [])
		|	compareToPivot(pivot, next::rest) =
                    		let
                        		val (x,y) = compareToPivot(pivot, rest)
                    		in
                        		if next < pivot then (next::x, y) else (x, next::y)
                    		end;
		val (smaller, larger) = compareToPivot(pivot, rest)
	in
		(quicksort(smaller))@[pivot]@(quicksort(larger))
	end;
