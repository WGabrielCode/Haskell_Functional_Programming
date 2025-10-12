factorial n = 
    if n <= 1 then 
        1
    else 
        n * factorial( n-1 )

factorialWithGuards n 
    | n <= 1    = 1
    | otherwise = n * factorialWithGuards( n-1 )

main = 
    let 
         x = 4
    in do 
        print( factorial x )
        print( factorialWithGuards x )
