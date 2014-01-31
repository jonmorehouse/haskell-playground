module Sort where

import Data.List (sort)

sortLines :: [String] -> String
sortLines xs =  unlines (sort xs)

getLine :: String -> Int -> String
getLine line n = show n ++ ": " ++ line

