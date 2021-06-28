sqrtHelper :: Int -> Int -> Int

sqrtHelper start end
  | (start * start) > end = (start-1)
  | (start * start) == end = start
  | otherwise = sqrtHelper (start+1) end

sqrto :: Int -> Int

sqrto x = sqrtHelper 1 x
