let () =
  (* 
  Exercise: values [★]
  What is the type and value of each of the following OCaml expressions? 
  - 7 * (1 + 2 + 3)
  - "CS " ^ string_of_int 3110
  *)

  (* Answer: Integer, 42 *)
  let result_1: int = 7 * (1 + 2 + 3) in
  Printf.printf "result_1 = %d\n" result_1;

  (* Answer: String, "CS 3110" *)
  let result_2: string = "CS " ^ string_of_int 3110 in
  Printf.printf "result_2 = %s\n" result_2;

  (*
  Exercise: operators [★★]
  - Write an expression that multiplies 42 by 10.
  - Write an expression that divides 3.14 by 2.0.
  - Write an expression that computes 4.2 raised to the seventh power.
  *)

  (* Answer: 420 *)
  let result_3 = 42 * 10 in
  Printf.printf "result_3 = %d\n" result_3;

  (* Answer: 1.570000 *)
  let result_4: float = 3.14 /. 2.0 in 
  Printf.printf "result_4 = %f\n" result_4;

  (* Answer: 23053.933325 *) 
  let result_5: float = 4.2 ** 7.0 in
  Printf.printf "result_5 = %f\n" result_5;

  (*
  Exercise: equality [★]
  - Write an expression that compares 42 to 42 using structural equality.
  - Write an expression that compares "hi" to "hi" using structural equality. What is the result?
  - Write an expression that compares "hi" to "hi" using physical equality. What is the result?
  *)

  (* Answer: true *) 
  let result_6 = (42 = 42) in
  Printf.printf "result_6 -> 42 = 42: %b\n" result_6;
  
  (* Answer: true *) 
  let result_7 = ("hi" = "hi") in
  Printf.printf "result_7 -> \"hi\" = \"hi\": %b\n" result_7;
  
  (* Answer: true 
  OCaml's compiler performs string interning. 
  When you have identical string literals in your code, 
  the compiler often stores them at the same memory location to save space.
  So both "hi" literals actually point to the same memory address.
  *) 
  let result_8 = ("hi" == "hi") in
  Printf.printf "result_8 -> \"hi\" == \"hi\": %b\n" result_8