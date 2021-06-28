priHelper :: Int -> Int -> Bool
priHelper x y
  | y == 1       = True
  | mod x y == 0 = False
  | otherwise    = priHelper x (y-1)

pri :: Int -> Bool
pri x
  | x == 1 = False
  | otherwise = priHelper x (x-1)
