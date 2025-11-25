onlyEven [] = []
onlyEven (x:xs)
 | x `mod` 2 == 0 = x : onlyEven xs
 | otherwise      = onlyEven xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p ( x : xs ) 
    | p x       = x : filter' p xs 
    | otherwise = filter' p xs 

onlyEven_  = filter' even
onlyOdd_   = filter' odd

main = 
    let 
        arr10 = [1..10]
    in do 
        print( onlyEven arr10 )
        print ( onlyEven_ arr10 ) 
        print( onlyOdd_ arr10 )
        print( "--1--")
        print( filter (\s -> length s == 2) ["a", "aa", "aaa", "b", "bb"] ) 
        print( filter (\(x,y) -> x > y) [(1,2), (2,2), (2,1), (2,2), (3,2)] ) 
        print( filter (\xs -> sum xs > 300) [[1..5], [56..60], [101..105]] ) 
        print( length $ filter (\f -> f 2 > 10) $ [(+5), (*5), (^5), \x -> 3 * x + 7] ) 
        print( length . filter (\f -> f 2 > 10) $ [(+5), (*5), (^5), \x -> 3 * x + 7] ) 