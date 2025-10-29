fib :: (Num a, Eq a) => a -> a
fib n =
 if n == 0 || n == 1 then n
 else fib (n - 2) + fib (n - 1)


fibS :: (Ord t, Num t, Num a) => t -> a
fibS n
    | n <= 2 = 1
    |otherwise = fibS( n-1 ) + fibS ( n-2 ) 


main = 
    let 
    in do 
        print( fib 6 )
        print( fibS 6 )


    