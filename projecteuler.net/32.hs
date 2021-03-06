
import Data.List

check x y = (=="123456789") . sort $ show x ++ show y ++ show (x * y)

problem_32 = sum . map head . group $ sort [x*y | x <- [1..99], y <- [100..(9999 `div` x)], check x y]

main = print problem_32
