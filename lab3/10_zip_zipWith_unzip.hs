main = 
    let endlessList = [1..]
    in do
        print( take 5 (zip endlessList (tail endlessList) ) )
        print( zip [1,2,3] ['a','b'] )
        print( unzip [(1,'a'),(2,'b')] )
        print( unzip (zip [1,2,3] ['a','b']) )
        print( zip [1,2] [10,20] == zipWith (,) [1,2] [10,20] )