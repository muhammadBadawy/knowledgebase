gcdHelper :: Int -> Int -> Int -> Int
gcdHelper x y z
  | z == 1 = 1
  | mod x z == 0 && mod y z == 0 = z
  | otherwise          = gcdHelper x y (z-1)

gcdo :: Int -> Int -> Int
gcdo x y
  | x <= 0 || y <= 0 = 0
  | otherwise = gcdHelper (max x y) (min x y) (min x y)

isCoprime :: Int -> Int -> Bool
isCoprime x y
  | gcdo x y == 1 = True
  | otherwise = False

---------------------------------------------------

phiHelper :: Int -> Int -> [Int]
phiHelper x y
  | x == y = []
  | isCoprime x y = x : phiHelper (x+1) y
  | otherwise     = phiHelper (x+1) y

phi :: Int -> [Int]
phi x
  | x == 1 = [1]
  | otherwise = phiHelper 1 x

----------------------------------------------------

phiCountHelper :: Int -> Int -> Int
phiCountHelper x y
  | x == y = 0
  | isCoprime x y = 1 + phiCountHelper (x+1) y
  | otherwise     = phiCountHelper (x+1) y

phiCount :: Int -> Int
phiCount x
  | x == 1 = 1
  | otherwise = phiCountHelper 1 x
