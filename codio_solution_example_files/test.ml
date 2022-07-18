(* CODIO SOLUTION BEGIN *)
open Complex;; 

let print_point pt =                   
   print_string "["; 
   print_float pt.re; 
   print_string ","; 
   print_float pt.im; 
   print_string "] ";; 

let rec poligon shape n =                        
   print_string "вершина №"; 
   print_int n; 
   print_string " : "; 
   Format.print_flush(); 
   try 
      let str = read_line() in 
      try 
         let pt = Scanf.sscanf str "%f %f" (fun x y -> { re=x; im=y }) in  
         let lst = pt :: shape in 
         poligon lst ( n + 1 ); 
      with float_of_string ->                    
         print_string "ошибка ввода!\n"; 
         poligon shape n; 
   with End_of_file ->                          
      shape;; 
 
let rec show shape =                            
   match shape with 
   | [] -> 
     print_newline(); 
   | hd :: tl -> 
     print_point hd; 
     show tl;; 
 
let perimeter shape = 
   let dist p1 p2 = norm( sub p1 p2 ) in        (* расстояние между 2-мя точками*) 
   let rec add_line lst sum = 
      if List.tl( lst ) = [] then 
         dist (List.hd lst) (List.hd shape)     (* последняя точка *) 
      else 
         dist (List.hd lst) (List.hd( List.tl lst )) +. 
         add_line (List.tl lst ) sum            (* промежуточные точки *) 
   in                                           (* end add_line *) 
   add_line shape 0.0;;                         (* накапливающая сумма *) 
 
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
 
let rec next() = 
   print_string "координаты вершин в формате: X Y (^D конец ввода)\n"; 
   let shape = poligon [] 1 in 
   begin 
      print_string "\rвершин "; 
      print_int( List.length shape ); 
      print_string " : "; 
      show shape ; 
      print_string "периметр = "; 
      print_float( perimeter shape ); 
      print_newline(); 
      print_string "площадь = "; 
      print_float( square shape ); 
      print_newline(); 
      print_string "---------------------------------\n"; 
      next();              (* рекурсивно организованный бесконечный цикл *) 
   end;; 
 
next();;
(* CODIO SOLUTION END *)
