type 'a my_list = Nil | Cons of 'a * 'a my_list;;

let rec string_of_list f l = match l with
  | Nil -> ""
  | Cons(x,l') -> (f x)^(string_of_list f l')
;;

let hd l = match l with
  | Nil -> None
  | Cons(x,l') -> Some x
;;

let tl l = match l with
  | Nil -> None
  | Cons(x,l') -> Some l'
;;

let rec length l = match l with
  | Nil -> 0
  | Cons(x,l') -> 1 + length l'
;;

let rec map f l = match l with
  | Nil -> Nil
  | Cons(x,l') -> Cons(f x,map f l')
;;
