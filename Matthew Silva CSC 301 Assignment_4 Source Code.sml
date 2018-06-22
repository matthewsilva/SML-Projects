(* My source code is also in my PDF, Thank you! *)
fun max3 (a: int,b: int,c: int): int = if a>b andalso a > c then a else max3(b,c,a);
fun second (a: 'a list): 'a = hd(tl(a));
fun permute (a: 'a list): 'a list = hd(tl(a))::hd(a)::tl(tl(a));