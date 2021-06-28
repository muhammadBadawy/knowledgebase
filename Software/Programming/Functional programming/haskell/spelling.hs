spell :: [Char] -> Int-> [Char]

spell "" _ = ""
spell (x:xs) len | len > 0 = x : " for " ++ (x:xs) ++ ", "
                 | otherwise = x : " for " ++ (x:xs)


speller :: [[Char]] -> [Char]

speller [] = ""
speller (x:xs) = (spell x (length xs)) ++ (speller xs)
