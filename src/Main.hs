module Main where

main :: IO ()
main = do
  putStrLn "hello world"




fpi :: (Double -> Double) -> Double -> Double -> Double
fpi f x margin
  | ((<margin).abs.subtract x) y = x
  | otherwise = fpi f y margin
  where y = f x
