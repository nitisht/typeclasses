module Main where

import Data.Char

maxLength :: String -> Maybe String
maxLength "" = Nothing
maxLength xs = 
  case (length xs > 20) of 
    True -> Nothing
    False -> Just xs 

allAlpha :: String -> Maybe String
allAlpha "" = Nothing
allAlpha xs = 
  case (all isAlphaNum xs) of 
    True -> Just xs
    False -> Nothing

stripSpace :: String -> Maybe String
stripSpace "" = Nothing
stripSpace (x:xs) = 
  case (isSpace x) of
    True -> stripSpace xs
    False -> Just (x:xs)

main :: IO ()
main = do
  putStrLn "Please enter a password."
  password <- getLine
  print (stripSpace password)
