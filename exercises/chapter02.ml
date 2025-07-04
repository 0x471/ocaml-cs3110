(* 
Exercise: values [★]
What is the type and value of each of the following OCaml expressions? 
- 7 * (1 + 2 + 3)
- "CS " ^ string_of_int 3110
*)

(* Answer: Integer, 42 *)
let result_1: int = 7 * (1 + 2 + 3);;
Printf.printf "result_1 = %d\n" result_1;;

(* Answer: String, "CS 3110" *)
let result_2: string = "CS " ^ string_of_int 3110;;
Printf.printf "result_2 = %s\n" result_2;;

(*
Exercise: operators [★★]
- Write an expression that multiplies 42 by 10.
- Write an expression that divides 3.14 by 2.0.
- Write an expression that computes 4.2 raised to the seventh power.
*)

(* Answer: 420 *)
let result_3: int = 42 * 10;;
Printf.printf "result_3 = %d\n" result_3;;

(* Answer: 1.570000 *)
let result_4: float = 3.14 /. 2.0;;
Printf.printf "result_4 = %f\n" result_4;;

(* Answer: 23053.933325 *) 
let result_5: float = 4.2 ** 7.0;;
Printf.printf "result_5 = %f\n" result_5;;

(*
Exercise: equality [★]
- Write an expression that compares 42 to 42 using structural equality.
- Write an expression that compares "hi" to "hi" using structural equality. What is the result?
- Write an expression that compares "hi" to "hi" using physical equality. What is the result?
*)

(* Answer: true *) 
let result_6 = (42 = 42);;
Printf.printf "result_6 = 42 = 42: %b\n" result_6;;

(* Answer: true *) 
let result_7 = ("hi" = "hi");;
Printf.printf "result_7 = \"hi\" = \"hi\": %b\n" result_7;;

(* Answer: true 
OCaml's compiler performs string interning. 
When you have identical string literals in your code, 
the compiler often stores them at the same memory location to save space.
So both "hi" literals actually point to the same memory address.
*) 
let result_8 = ("hi" == "hi");;
Printf.printf "result_8 = \"hi\" == \"hi\": %b\n" result_8;;

(*
Exercise: assert [★]
- Enter assert true;; into utop and see what happens.
- Enter assert false;; into utop and see what happens.
- Write an expression that asserts 2110 is not (structurally) equal to 3110.
*)

(* Answer: 
utop # assert true;;
- : unit = ()
*)

(* Answer:
utop # assert false;;
Exception: Assert_failure ("//toplevel//", 1, 0).
*)

(* Answer:
The assertion is true, so execution continues without throwing a fatal error.
*)
let _result_9 = assert(2110 != 3110);;
Printf.printf("result_9 is an assertion\n");;

(*
Exercise: if [★]
Write an if expression that evaluates to 42 if 2 is greater than 1 and otherwise evaluates to 7.
*)
let result_10 = if 2 > 1 then 42 else 7;;
Printf.printf "result_10 = %d\n" result_10;;

(*
Exercise: double fun [★]
Using the increment function from above as a guide, define a function double that multiplies its input by 2. For example, double 7 would be 14. Test your function by applying it to a few inputs. Turn those test cases into assertions.
*)
let double_that x = x * 2;;
let double7 = double_that 7;;
Printf.printf "result_11 = %d\n" double7;;

let () = assert(double_that 0 = 0);;
let () = assert(double_that 1 = 2);;
let () = assert(double_that 3 = 6);;
let () = assert(double_that 7 = 14);;

(*
Exercise: more fun [★★]
- Define a function that computes the cube of a floating-point number. Test your function by applying it to a few inputs.
- Define a function that computes the sign (1, 0, or -1) of an integer. Use a nested if expression. Test your function by applying it to a few inputs.
- Define a function that computes the area of a circle given its radius. Test your function with assert.

For the latter, bear in mind that floating-point arithmetic is not exact. Instead of asserting an exact value, you should assert that the result is “close enough”, e.g., within 1e-5. If that’s unfamiliar to you, it would be worthwhile to read up on floating-point arithmetic.

A function that take multiple inputs can be defined just by providing additional names for those inputs as part of the let definition. For example, the following function computes the average of three arguments:

`let avg3 x y z = (x +. y +. z) /. 3.`
*)


(* Note: This won't work for floating numbers that cannot be represented exactly in binary floating points such as 9.9 or 0.1. The solution for that is using epsilon comparison or calculating the exact expected value. *)
let float_cube x = x ** 3.;;
let () = assert(float_cube 3. = 27.);;
let () = assert(float_cube 2.5 = 15.625);;
let () = assert(float_cube 4.25 = 76.765625);;
Printf.printf("result_12 is an assertion\n");;

let give_sign x =
  if x > 0 then 1
  else if x < 0 then -1 
  else 0;;
let () = assert(give_sign 3 == 1);;
let () = assert(give_sign (-5) == -1);;
let () = assert(give_sign 0 == 0);;
Printf.printf("result_13 is an assertion\n");;

(* A = pi * r^2 where A is the area and r is the radius *)
let circle_area x = 3.14 *. (x ** 2.);;
let () = assert(circle_area 3.  = 28.26);;
let () = assert(circle_area 4.  = 50.24);;
let () = assert(circle_area 5.  = 78.5);;
Printf.printf("result_14 is an assertion\n");;