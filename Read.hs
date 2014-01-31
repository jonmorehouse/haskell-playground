{-# LANGUAGE OverloadedStrings #-}


module Read where

import System.IO
import Data.Text

-- return a cleaned filepath
-- lets look into seeing if this is the best way to do this ...
getPath :: String -> String
getPath x = read $ show (strip (read $ show x))

-- now lets open up a file name as needed -- returns file handle 
-- should return something we can read from -- so we can work lazily ...
getPathContents :: String -> IO String
getPathContents x = do 
	readFile x






	

