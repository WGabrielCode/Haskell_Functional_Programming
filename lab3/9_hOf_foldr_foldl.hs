sumWith g []     = 0
sumWith g (x:xs) = g x + sumWith g xs -- (+) (g x) (sumWith g xs)

prodWith g []     = 1
prodWith g (x:xs) = g x * prodWith g xs -- (*) (g x) (prodWith g xs)

sumWith' :: Num a => (a -> a) -> [a] -> a
sumWith' = go 0
 where
   go acc g [] = acc
   go acc g (x:xs) = go (g x + acc) g xs

prodWith' :: Num a => (a -> a) -> [a] -> a
prodWith' = go 1
 where
   go acc g [] = acc
   go acc g (x:xs) = go (g x * acc) g xs

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f z [] = z
foldr' f z ( x:xs ) = f x (foldr' f z xs)

sumWith'' g  = foldr' (\x acc -> g x + acc) 0
prodWith'' g = foldr' ( \x acc -> g x*acc ) 1

foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' f z [] = z 
foldl' f z ( x:xs ) = foldl' f ( f z x ) xs

sumWith''' g  = foldl' (\acc x -> g x + acc) 0



main = 
    let arr10 = [1..10]
  
    in do 
        print( sumWith (*2) arr10 )
        print( sumWith' (*2) arr10 )

        print( prodWith (*2) arr10 )
        print( prodWith' (*2) arr10 )

        print( prodWith'' (*2) arr10 )

        print( "--1--" )

        print( foldr (\x acc -> x + 1 + acc) 0 [1..10] )
        print( foldl (\acc x -> x + 1 + acc) 0 [1..10] )
        print( foldl' (\acc x -> x + 1 + acc) 0 [1..10] )
        
        print( "--2--")
        
        print( sum . map (+1) $ [1..10^6] )
        print( sum [x + 1 | x <- [1..10^6]] )
        
        print( foldr (\x acc -> "(" ++ x ++ " f " ++ acc ++ ")") "z" ["1","2","3"] )
        print( foldr1 (\x acc -> "(" ++ x ++ " f " ++ acc ++ ")") ["1","2","3"] )
        print( foldl (\acc x -> "(" ++ acc ++ " f " ++ x ++ ")") "z" ["1","2","3"] )
        print( foldl1 (\acc x -> "(" ++ acc ++ " f " ++ x ++ ")") ["1","2","3"] )
        

