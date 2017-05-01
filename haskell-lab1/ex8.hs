not' :: Bool -> Bool
not' b = case b of
  True -> False
  False -> True

absInt :: Int -> Int
absInt n = case (n >= 0) of
  True -> n
  _ -> -n

isItTheAnswer :: String -> Bool
isItTheAnswer s = case (s == "Love") of
  True -> True
  _ -> False

nand' :: (Bool, Bool) -> Bool
nand' (a, b) = case (a && b) of
  True -> False
  _ -> True
