module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Class.Console (logShow)
import Effect.Random (randomInt)
import Data.List (List) 
import Data.Unfoldable (replicateA)

generateRandoSequence :: Effect (List String)
generateRandoSequence =
  replicateA 20 (randomInt 1 4) <#>
  map (\v ->
    case v of 
      1 -> "Red"
      2 -> "Yellow"
      3 -> "Green"
      4 -> "Blue"
      _ -> "Oh nose"
  )


main :: Effect Unit
main = do
  result <- generateRandoSequence
  logShow $ result


