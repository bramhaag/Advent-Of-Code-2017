let validate input = 
  let result = ref true in
  for i = 0 to Array.length input - 1 do
      for j = i + 1 to Array.length input - 1 do
          if input.(i) = input.(j) then begin
            result := false
          end
      done;
  done;
!result;;

let a = [|[|"aa"; "bb";|]; [|"cc"; "dd"; "ee"|]|];;
let counter = ref 0;;
for i = 0 to Array.length a - 1 do
  if validate a.(i) then incr counter;
done;;
Printf.printf "Correct passwords: %d" !counter;; 