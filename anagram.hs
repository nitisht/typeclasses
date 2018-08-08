import Data.List
import Data.Char

isAnagram :: String -> String -> Bool
isAnagram xs ys = (sort xs) == (sort ys)

isWord :: String -> Maybe String
isWord word =
    case null word of
        True -> Nothing
        False ->
            case (all isAlpha word) of
                True -> Just word
                False -> Nothing

areAnagrams :: String -> String -> String
areAnagrams word1 word2 =
    case isWord word1 of
        Nothing -> "The first word is invalid"
        Just word1 ->
            case isWord word2 of
                Nothing -> "The seconds word is invalid"
                Just word2 -> 
                    case isAnagram word1 word2 of 
                        False -> "These words are not anagrams"
                        True -> "These words are anagrams"

main :: IO ()
main = do
    putStrLn "Enter first word"
    word1 <- getLine
    putStrLn "Enter second word"
    word2 <- getLine
    print (areAnagrams word1 word2)