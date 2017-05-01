sgn :: Int -> Int
sgn n = if n < 0
  then -1
  else if n == 0
    then 0
    else 1

absInt :: Int -> Int
absInt x = if x < 0
  then (-1) * x
  else x

min2Int :: (Int, Int) -> Int
min2Int (x, y) = if (x < y)
  then x
  else y

min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) = min2Int(x, min2Int(y, z))

toUpper :: Char -> Char
toUpper c = toEnum (fromEnum(c) - 32)

toLower :: Char -> Char
toLower c = toEnum (fromEnum(c) + 32)

isDigit :: Char -> Bool
isDigit d = fromEnum(d) > 47 && fromEnum(d) < 58

charToNum :: Char -> Int
charToNum c = fromEnum(c) - 48
