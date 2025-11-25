import Data.Char

doubleElems []     = []
doubleElems (x:xs) = 2 * x : doubleElems xs

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f ( x:xs ) = f x : map' f xs

doubleElems_ = map' ( \x -> 2*x )
sqrElems_    = map' ( \x -> x^2 )

main = 
    let arr10 = [1..10]
        
    in do 
        print( arr10 )
        print( doubleElems arr10 )
        print( doubleElems_ arr10 )
        print( sqrElems_ arr10)

        print( "--1--" )

        print( length . filter even $ doubleElems [1..10^7] ) 
        print( length . filter even . map (*2) $ [1..10^7] )

        print( "--2--" )

        print( map (*2) [1..10] )
        print( map (^2) [1..10] ) 
        print(map toLower "ABCD" ) -- konieczny import Data.Char
        print(length . filter (>10) . map ($ 2) $ [(+5), (*5), (^5), \x -> 3 * x + 7] )
        print(map show [1..10] ) 
        print(map length [[1],[1,2],[1,2,3]] ) 
        print(map (map length) [ [[1],[1,2],[1,2,3]], [[1],[1,2]] ] ) 
        print(map (\(x,y) -> (y,x)) [(1,'a'), (2,'b'), (3,'c')] ) 
        print(map (\(x,y) -> y) [(1,'a'), (2,'b'), (3,'c')] ) 
        print(map (\s -> (s, length s)) ["manuscripts","do","not","burn"] ) 