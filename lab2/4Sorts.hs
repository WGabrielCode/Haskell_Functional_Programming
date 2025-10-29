qSort :: Ord a => [a] -> [a]
qSort []     = []
qSort (x:xs) = qSort (leftPart xs) ++ [x] ++ qSort (rightPart xs)
 where
   leftPart  xs = [ y | y <- xs, y <= x ]
   rightPart xs = [ y | y <- xs, y > x  ]

qSortFilter :: Ord a => [a] -> [a]
qSortFilter []     = []
--qSortFilter (x:xs) = qSortFilter (filter (\y -> y <= x ) xs ) ++ [x] ++ qSortFilter (filter ( \y -> y > x ) xs)
qSortFilter (x:xs) = qSortFilter (filter ( <= x ) xs ) ++ [x] ++ qSortFilter (filter ( > x ) xs)


main = 
    let randomA =  [1,9,2,6,1,2,7,3,-12]
    in do 
        print( qSort randomA )
        print( qSortFilter randomA )   