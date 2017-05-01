not' :: Bool -> Bool
not' True = False
not' False = True

isItTheAnswer :: String -> Bool
isItTheAnswer "Love" = True
isItTheAnswer _ = False

or' :: (Bool, Bool) -> Bool
or' (True, _) = True
or' (_, True) = True
or' (_, _) = False

and' :: (Bool, Bool) -> Bool
and' (True, True) = True
and' (_, _) = False
