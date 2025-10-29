sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

sum'3 :: Num a => [a] -> a
sum'3 = loop 0
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

prod'2 :: Num a => [a] -> a
prod'2 = loop 1 
    where 
        loop acc [] = acc 
        loop acc ( x:xs ) = loop ( acc*x ) xs 

length'2 :: [a] -> Int
length'2 xs = loop 0 xs 
    where
        loop acc [] = acc
        loop acc ( x:xs ) = loop ( acc + 1 ) xs 

sum'4 :: Num a => [a] -> a 
sum'4 = loop 0
   where loop !acc []     = acc -- bang pattern - redukcja stosu ( thunkow ) 
         loop !acc (x:xs) = loop (x + acc) xs

main = 
    let
    in do 
        print( sum'2 [1..5] )
        print( sum'3 [1..5] )
        print( sum'4 [1..1e10] )

        print( prod'2 [1,2,3] ) -- = 6
        print( length'2 [1,1,1,1] ) -- = 4