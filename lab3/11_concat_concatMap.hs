
concat' :: [[a]] -> [a]
concat' []     = []
concat' (x:xs) = x ++ concat' xs

main = 
    let 
        
    in do 
        print( concat' ["abc", "def"] )
        print( concat' [[1,2],[3,4]] ) 
        print( (concat' . concat') [ [[1,2], [3,4]] , [[5,6], [7,8]] ] ) 
        print( concat' ["abc", "def"] == concat ["abc", "def"] )

        print( "--1--" )
        
        print( concat ["Hello ", "world", "!"] )
        print( concat [[1, 2, 3], [], [4, 5]] )
        print( concat [[True, False], [True]] )
        
        print( "--2--")

        print( concatMap (\x -> [x, x + 1]) [5, 10, 15] )
        print( concatMap (\x -> if even x then [x^2] else []) [1, 2, 3, 4, 5] )
