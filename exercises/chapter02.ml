(* 
Exercise: values [★]
What is the type and value of each of the following OCaml expressions? 
- 7 * (1 + 2 + 3)
- "CS " ^ string_of_int 3110
*)

(* Answer: Integer, 42 *)
let result_1: int = 7 * (1 + 2 + 3) in
Printf.printf "result_1 = %d\n" result_1;

(* Answer: String, "CS 3310" *)
let result_2: string =  "CS " ^ string_of_int 3110 in
Printf.printf "result_2 = %s\n" result_2;

