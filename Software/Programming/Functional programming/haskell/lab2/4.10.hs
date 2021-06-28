f :: Int -> Int

f 0 = 1
f 1 = 44
f 2 = 17
f 3 = 0
f 4 = 17
f _ = 0

otherHasZero :: Int -> Bool
otherHasZero x
  | x < 0    = False
  | f x == 0  = True
  | otherwise = otherHasZero (x-1)


hasZeroHelper :: Int -> Bool
hasZeroHelper x
  | x == 0    = False
  | f x == 0  = True
  | otherwise = hasZeroHelper (x - 1)


hasZero :: Int -> Bool
hasZero x
  | x < 0     = False
  | otherwise = hasZeroHelper x
