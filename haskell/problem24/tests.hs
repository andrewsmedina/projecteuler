import Test.Hspec
import Data.List

main :: IO()
--main = do hspec specs
main = print (permutation [0,1,2,3,4,5,6,7,8,9] !! 999999)

specs = describe "problem24" [
    it "permutation for 0, 1, 2"
        (permutation [0, 1, 2] == [[0,1,2], [0,2,1], [1,0,2], [1,2,0], [2,0,1], [2,1,0]])
    ]

permutation :: Eq a => [a] -> [[a]]
permutation [] = [[]]
permutation xs = [x:ys | x <- xs, ys <- permutation( delete x xs)]
