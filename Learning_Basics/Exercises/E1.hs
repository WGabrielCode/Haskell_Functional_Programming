{- Create a function elem that returns True if an element is ai na given List and returns False otherwise -}

elemC :: ( Eq a ) => a -> [a] -> Bool
elemC _ [] = False 

elemC x ( y:ys ) 
    | y == x    = True 
    | otherwise = elemC x ys

main :: IO ()
main = 
    let 
        x = 3
        arr = [ 1,2,3,4,5,6,12 ]
    
    in 
        print( elemC x arr )  

