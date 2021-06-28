f :: Int -> Int

f 0 = 0
f 1 = 44
f 2 = 17
f _ = 0

maxiHelper :: Int -> Int -> Int
maxiHelper x y
  | x == y    = (f x)
  | otherwise = max (f x) (maxiHelper (x+1) y )

maxi :: Int -> Int
maxi x
  | x < 0     = 0
  | otherwise = maxiHelper 0 x
