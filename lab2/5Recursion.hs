
isSorted :: [Int] -> Bool -- isSorted [1,2,2,3] = True
isSorted [] = True 
isSorted xs = 
    qsort xs == xs
    where   
        qsort [] = []
        qsort ( x : xs ) = qsort ( filter (<= x) xs ) ++ [x] ++ qsort( filter ( >x ) xs ) 

reverse' :: [a] -> [a] -- reverse [1,2,3] = [3,2,1]
reverse' [] = []
reverse' ( x : xs ) =
    reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a,b)] -- zip' [1,2] [3,4] = [(1,3), (2,4)]
zip' _ [] = []
zip' [] _ = [] 
zip' ( x : xs ) ( y : ys ) = (x,y) : zip' xs ys 

-- zip3' :: [a] -> [b] -> [c] -> [(a,b,c)]

-- subList :: Eq a => [a] -> [a] -> Bool -- subList [1,2] [3,1,2,4] = True

fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _                    = False

main = 
    let 
    in do 
        print( isSorted [1,2,2,3] ) -- = True
        print( reverse [1,2,3] ) -- = [3,2,1]
        print( zip' [1,2] [3,4] ) -- = [(1,3), (2,4)]
        print( unzip [(1,2), (3,4)] ) -- = ([1,3],[2,4])
        -- print( zip3' )
        -- print( subList [1,2] [3,1,2,4] ) -- = True)
        -- print( fst2Eq ( [1,1] ++ [1..10] ) )
