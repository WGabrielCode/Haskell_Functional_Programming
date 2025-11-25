sqr x = x^2

funcFactory n = case n of
 1 -> id
 2 -> sqr
 3 -> (^3)
 4 -> \x -> x^4
 5 -> intFunc
 _ -> const n
 where
   intFunc x = x^5


expApproxUpTo 0 = \x -> 1
expApproxUpTo n = \x -> ( x^n ) / ( fromIntegral ( factorial n ) )  + ( expApproxUpTo (n-1) x  )
    where 
        factorial 0 = 1
        factorial p = p * factorial (p-1)


dfr f h =(\x -> ( f ( x + h) - ( f x ) ) / h )

main = 
    let arr13 = [1..3]
        cub = funcFactory 3 
    
    in do 
        print( funcFactory 2 4 )
        print( cub 4)
        print( "--1--")
        print( ( expApproxUpTo 5 ) 1)
        print( dfr (\x -> x^2 ) 9 2 )