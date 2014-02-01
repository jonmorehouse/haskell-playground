module Main (main) where

import Word as W
import Read as R
import Sort as S
import Primes as P
import List as L
import Fibonacci as F
import TailRecursion as TR

main :: IO ()
main = do
	
	-- grab the line contents
	fileName <- getContents

	-- should print the first 9 prime numbers
	{-print $ length $ P.firstNPrimes 9 0 0-}
	{-print $ F.naiveSeries 9-}
	print $ [F.naiveSeries n | n <- [1..20]]
	print $ [F.accumulatorSeries n | n <- [1..20]]
	print $ TR.factorial 9
	print $ F.tailRecursionSeries 9






