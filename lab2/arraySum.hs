sum_ [] = 0
sum_ (x : xs) = x + sum_ xs

main = 
    print( sum_ [1..5] )