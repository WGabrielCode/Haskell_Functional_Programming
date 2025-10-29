w_abc :: Num a => a -> a -> a -> a -> a
w_abc a b c x = 
    a*( x^2 ) + b*x + c  

main :: IO()
main =
    let 
        w_123 = w_abc 1 2 3
    in 
        print( w_123 2 ) 
    