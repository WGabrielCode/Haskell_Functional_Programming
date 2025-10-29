prod' :: Num a => [a] -> a -- prod' [1,2,3] = 6
prod' [] = 1
prod' ( x : xs ) = x * prod' xs 

length' :: [a] -> Int -- length' [1,1,1,1] = 4
length' [] = 0
length'( x : xs ) = 1 + length' xs

or' :: [Bool] -> Bool -- or' [True, False, True] = True
or' [] = False
or' (x : xs) = x || or' xs 

and' :: [Bool] -> Bool -- and' [True, False, True] = False
and' [] = True 
and' ( x:xs ) = x && and' xs 

elem' :: Eq a => a -> [a] -> Bool -- elem' 3 [1,2,3] = True
elem' _ [] = False
elem' a ( x:xs ) 
    | x == a = True
    | otherwise = elem' a xs 

doubleAll :: Num t => [t] -> [t] -- doubleAll [1,2] = [2,4]
doubleAll [] = []
doubleAll ( x:xs ) = x*2 : doubleAll xs

squareAll :: Num t => [t] -> [t] -- squareAll [2,3] = [4,9]
squareAll [] = [] 
squareAll ( x:xs ) = (x^2) : squareAll xs

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [] = [] 
selectEven ( x:xs )
    | even x = x : selectEven xs 
    | otherwise = selectEven xs

main = 
    let
    in do 
        print( prod' [1,2,3] ) -- = 6
        print( length' [1,1,1,1] ) -- = 4
        print( or' [True, False, True] ) --  = True
        print( and' [True, False, True] ) -- = False
        print( elem' 3 [1,2,3] ) -- = True
        print( doubleAll [1,2] ) -- = [2,4]
        print( squareAll [2,3] ) -- = [4,9]
        print( selectEven [1,2,3] ) -- = [2]