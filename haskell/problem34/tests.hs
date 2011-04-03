import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 34" [
    it "145 are a curious number"
        (curious 145),
    it "40730 is a sum of curious number"
        (sum_of_curious 99999 == 40730)
    ]

factorial number = product [1..number]
curious number = number == sum [factorial (read (n:"") :: Int ) | n <- show number] 
sum_of_curious sequence = sum [x | x <- [3..sequence], curious x]
