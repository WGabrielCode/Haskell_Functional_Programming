
asc :: Int -> Int -> [Int]
asc n m 
    | n > m = []
    | otherwise = n : asc (n+1) m 

even_ :: Integral a => a -> a -> Bool
even_ a b = 
    (a + b) `mod` 2 == 0 

main :: IO ()
main = 
    let 
        arr = asc 2 5 
    in do
        print( [ b-a | a <- [ 1..5 ] , b <- [1 .. (a-1)]  , even( a + b )  ])
        print( [ (b-)a | a <- asc 1 5 , b <- asc 1 (a-1)  , even_ a b ])
        
