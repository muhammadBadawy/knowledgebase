-- Multiply number by it self

multiHelper :: Int -> Int -> Int
multiHelper x y
  | y <= 1    = x
  | otherwise = x + multiHelper x (y-1)


multi :: Int -> Int
multi x = multiHelper x x


-- Multiply x and y

otherMulti :: Int -> Int -> Int
otherMulti x y
  | y <= 1    = x
  | otherwise = x + otherMulti x (y-1)
