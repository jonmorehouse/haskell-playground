module Main (main) where

import Word as W
import Read as R
import Sort as S
import List as L

readInt :: String -> Int
readInt = read

makeList :: [String] -> [String]
makeList [] = []
makeList [x] = []
makeList (x:xs) = "test" : x : (makeList $ take 2 xs)

main :: IO ()
main = do

	-- grab the line contents
	fileName <- getContents

	-- should pint the first 9 prime numbers
	print $ length $ L.firstNPrimes 9 0 0




