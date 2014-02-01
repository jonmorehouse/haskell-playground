{-# LANGUAGE BangPatterns #-}

module Fibonacci where

-- O(fib n) -- complexity / iterations
-- call stack here grows exponentially - each call adds 2 calls
-- O(n^2)
naiveSeries :: Int -> Int
naiveSeries 0 = 0
naiveSeries 1 = 1
naiveSeries n = naiveSeries (n - 1) + naiveSeries (n - 2)

-- linear implementation
-- pass state with accumulator argument
-- o(n complexity)
accumulatorSeries n = go n (0,1)
	where go !n (!a, !b) 
		| n == 0 = a
		| otherwise = go (n-1) (b, a+b)

tailRecursionSeries n = go 0 n []
	where go current n a
		| current == n = reverse a -- return the accumulation set
		| current == 0 = go (current + 2) n (1:a)
		| current == 1 = go (current + 1) n (1:a)
		| otherwise = go (current + 1) n ((sum $ take 2 a) : a)


