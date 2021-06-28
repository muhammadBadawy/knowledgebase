gcdHelper :: Int -> Int -> Int -> Int
gcdHelper x y z
  | mod x z == 0 && mod y z == 0 = z
  | otherwise                    = gcdHelper x y (z-1)

gcdo :: Int -> Int -> Int
gcdo x y
  | x <= 0 || y <= 0 = 0
  | otherwise = gcdHelper (max x y) (min x y) (min x y)
