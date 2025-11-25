import Data.List 

main :: IO () 
main = 
    let 
        f :: Num a => a -> a
        f = (+ 1)
        g :: Num a => a -> a
        g = (* 2)
        h :: Num a => a -> a
        h = (^ 3)
    in do 
        
        print ( f (g (h (3) ) ) )
        print ( f (g (h $ 3 ) ) )
        print ( f (g $ h $ 3) )
        print ( f $ g $ h $ 3 )
        
        print ( (f $ g $ h $ 3) == (f $ (g $ (h $ 3))) )

        print( ((,) $ 1) 2 )
        print( ( (,) $ 1 ) $ 2 )
        print( ( (,) (1) ) (2) ) 
        --print( (,) ( 1 ( 2 ) ) )

        print( f $ g $ h 3 )
        print( (f . g . h) 3 )
        print( f . g . h $ 3 )
        -- print ( f $ g $ h $ 3 == (f $ (g $ (h $ 3))) ) -- wrong!!!