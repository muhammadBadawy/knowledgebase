-- main = putStrLn "hello world"

check::[Char]->[Char]->Char->(Bool, [Char])

check word visual char
    = (
    char `elem` word,
    [if char == x then x else y | (x,y) <- zip word visual]
    )   


guess::[Char]->[Char]->Int->IO()

guess word visual n
    = if n == 0
        then
            putStrLn "You failed"
        else
            if word == visual
                then
                    putStrLn "You won"
                else
                    do
                        putStrLn (visual ++ "  " ++ take n (repeat '*'))
                        putStr "Enter your guess: "
                        q <- getLine
                        let (correct, visual') = check word visual (q!!0)
                        let n' = if correct then n else (n-1)
                        guess word visual' n'

game::[Char]->Int->IO()

game word trials
       = guess word ['-' | x<-word] trials
