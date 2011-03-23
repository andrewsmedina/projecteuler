import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 25" [
    it "first fib 1"
        (fib 1 == 1),
    it "second fib should be 1"
        (fib 2 == 1),
    it "third fib should be 2"
        (fib 3 == 2),
    it "first fib with 2 digits is 13"
        (firstFibWith(2) == 7),
    it "fib index with 1000 digits should be "
        (firstFibWith(1000) == 4782)
	]

firstFibWith digits = head [(x) | x <- [1..], (length (show (fib(x))) == digits)]

fib n = fibs!!n
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
