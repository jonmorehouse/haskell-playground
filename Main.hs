module Main (main) where

import Word as W
import Read as R
import Sort as S
import Primes as P
import List as L

main :: IO ()
main = do

	-- grab the line contents
	fileName <- getContents

	-- should print the first 9 prime numbers
	print $ length $ P.firstNPrimes 9 0 0


