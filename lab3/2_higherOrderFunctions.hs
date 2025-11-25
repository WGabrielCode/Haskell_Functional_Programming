sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

sumSqr' [] = 0
sumSqr' (x:xs) = x*x + sumSqr' xs 

sumWith f [] = 0
sumWith f ( x:xs ) = (f x) + sumWith f xs 

sum_ xs = sumWith (\x->x) xs

sumSqr_ xs = sumWith (\x->x*x) xs 

sumCube_ = sumWith (\x -> x^3 )

sumAbs_ = sumWith (\x -> abs( x ) )

listLength = sumWith (\x -> 1)
main = 
    let
        arr13 = [1..3] 
    in do 
        
        print( sum'[1..3])
        print( sumWith ( \x -> x ) [1..3] )
        print "--1--"
        print( sumSqr'[1..3] )
        print( sumWith ( \x -> x ) [1..3] )
        print "--2--"
        print( sum_ arr13 )
        print( sumSqr_ arr13 )
        print( sumCube_ arr13 )
        print( sumAbs_ arr13 )
        print "--3--"
        print(listLength arr13 )