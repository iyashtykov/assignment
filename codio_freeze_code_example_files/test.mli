(* FREEZE CODE BEGIN *)
open Complex;; 

let print_point pt =                   
   print_string "["; 
   print_float pt.re; 
   print_string ","; 
   print_float pt.im; 
   print_string "] ";; 

(* FREEZE CODE END *)
let rec show shape =                            
   match shape with 
   | [] -> 
     print_newline(); 
   | hd :: tl -> 
     print_point hd; 
     show tl;; 
 
let square shape = 
   let triang p1 p2 = 
      let s1 = sub p1 ( List.hd shape ) in 
      let s2 = sub p2 ( List.hd shape ) in 
         norm( s1 ) *. norm( s2 ) *. abs_float( sin( ( arg( s1 ) -. 
         arg( s2 ) ) ) ) /. 2.0 
   in                                           (* end triang *) 
   let rec add_squa lst sum = 
      let squa = triang (List.hd lst) (List.hd( List.tl lst )) in 
      if List.tl( List.tl lst ) = [] then squa 
      else 
         squa +. add_squa (List.tl lst ) sum   
   in                                           (* end add_squa *) 
   add_squa (List.tl shape) 0.0;; 
 
 
next();;

