module List where

createList :: Int -> [Int]
createList 0 = [0]
createList n = n : createList (n - 1)

createOddList :: Int -> [Int]
createOddList 1 = [1]
createOddList n 

	-- doesn't divide by 2 evenly -- means that its not even 
	| (mod n 2) == 1 = n : createOddList (n-1)
	| otherwise = createOddList(n-1)

-- create odd list 
-- for each number 2<n check if modulus is 0
{-createPrimeList :: Int -> [Int]-}
reverse' :: [Int] -> [Int]
reverse' [] = []
reverse' [x] = [x]
-- pop the last element off of list -- then call the reverse function with the remaining piece of the list 
reverse' xs = last (xs) : reverse' (init xs)

makeStringList :: [String] -> [String]
makeStringList [] = []
makeStringList [x] = []
makeStringList (x:xs) = "test" : x : (makeStringList $ take 2 xs)

