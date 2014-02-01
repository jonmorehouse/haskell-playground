module TailRecursion where

factorial :: Int -> Int
factorial x = 
	
	tailFact x 1
	-- initialize our base case factorial 0 = 1 * sum
	where 
		tailFact 0 a = a
		tailFact n a = tailFact (n-1) $ n * a


