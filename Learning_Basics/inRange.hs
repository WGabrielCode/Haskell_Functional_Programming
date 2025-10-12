inRange :: Integer -> Integer -> Integer -> Bool 
inRange min max x = 
    if ilb then iub else False

    where 
        ilb = min <= x 
        iub = max >= x 

main :: IO ()
main = 
    let 
        min_value = 3
        max_value = 10
        x_val = 5

        result = inRange min_value max_value x_val 

    in 
        print result 
