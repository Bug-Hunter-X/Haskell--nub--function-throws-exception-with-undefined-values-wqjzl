```haskell
import Data.List (nub)
import Data.Maybe (catMaybes)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [1,1,2,2,3,3]
  let ws = nub zs
  print ws -- Output: [1,2,3]

  let invalidList = [1,2,3,Nothing, Just 5]
  let maybeList = map (
    x -> case x of
        Just x -> Just x
        Nothing -> Nothing
  ) invalidList

  let cleanedList = catMaybes $ nub $ map (
      x -> case x of
          Just x -> Just x
          Nothing -> Nothing
  ) invalidList
  print cleanedList -- Output: [1,2,3,5]
```