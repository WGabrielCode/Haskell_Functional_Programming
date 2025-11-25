
f1 = \x -> x - 2

f2 :: Floating a => a -> a -> a 
f2 = \x -> \y  -> sqrt( (x^2) + (y^2) )

f3 = \x y z -> sqrt( (x^2) + (y^2) + (z^2) )

-- (2*), (*2), (2^), (^2), (2/), (/3), (4-)

_2t = \x -> ( 2*x )  

t2 = \x -> x*2

p2to = \x -> 2^x

pto2 = \x -> x^2

_2div = \x -> 2 / x 

div3 = \x -> x / 3 

f7 = \x -> x `mod` 2 == 0 
        
f8 = \x ->
    let y = sqrt x 
    in 2 * y^3 * (y + 1)

f9 = \x -> 
    if x == 1
        then 3 
    else 0 


main = 
    let 
    in do
        print( f1 3 )
        print( f2 8 6 )
        print( f3 2 2 2)
 -- (2*), (*2), (2^), (^2), (2/), (/3), (4-)
        print( _2t 2 ) 
        print( t2 3 )
        print( p2to 4 )
        print( pto2 5 )
        print( _2div 10 ) 
        print( div3 9 )
        print( )
        
        print( f7 4 )
        print( f8 4 ) 
        print( f9 4 ) 
