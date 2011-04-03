import Test.Hspec
import List

main :: IO()
main = do hspec specs

--main = print (length (calc [2..100]))
specs = describe "problem 29" [
    it "distinct sequence of pows in 2..3"
        (calc [2..3] == [4, 8, 9, 27]),
    it "distinct sequence of pows in 2..5"
        (calc [2..5] == [4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125]),
    it "length of sequence of pows in 2..100 should be 9183"
        (length (calc [2..100]) == 9183)
    ]

calc sequence = nub (sort [x**y | x <- sequence, y <- sequence])

