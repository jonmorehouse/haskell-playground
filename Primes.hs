module Primes where

-- calculate whether or not a single number is prime
isPrime :: Int -> Bool
isPrime n = null [True | x <- reverse [2..n-1], (mod n x) == 0]

-- list all primes in a range
listPrimes :: Int -> [Int]
listPrimes 1 = [1]
listPrimes n 
	| isPrime n = n : listPrimes (n-1)
	| otherwise = listPrimes ( n - 1)

-- Generate the first n primes available
firstNPrimes :: Int -> Int -> Int -> [Int]
firstNPrimes n f x 
	| n == f = []
	| isPrime x = x : firstNPrimes n (f+1) (x+1)
	| otherwise = firstNPrimes n f (x+1)




