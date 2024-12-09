```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [1,1,2,2,3,3]
  let ws = nub zs
  print ws -- Output: [1,2,3]

  let invalidList = [1,2,3,undefined, 5]
  let cleanedList = nub invalidList --Error: Exception
  print cleanedList
```