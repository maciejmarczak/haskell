roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ( (-b - d) / e, (-b + d) / e )
  where d = sqrt (b * b - 4 * c * a)
        e = 2 * a

and' :: (Bool, Bool) -> Bool
and' (a, b) | d == True = True
          | otherwise = False
          where d = a && b
