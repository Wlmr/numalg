module Main where

main :: IO ()
main = do
  putStrLn "hello world"



fpi :: Int -> (Double -> Double) -> Double -> [Double]
fpi  0  _ x = [x]
fpi for f x = x : fpi (for-1) f y
  where y = f x

--can get stuck if no fixed points
fpiMargins :: (Double -> Double) -> Double -> Double -> Double
fpiMargins f x margin
  | ((<margin).abs.subtract x) y = x
  | otherwise = fpiMargins f y margin
  where y = f x
