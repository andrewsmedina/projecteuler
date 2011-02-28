import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 2" [
	it "returns the fibonacci numbers less than 10"
		(takeWhile (<10) fibs == [1, 2, 3, 5, 8]),
		
	it "the sum of the fibonacci numbers less than 10"
		(sum[x | x <- takeWhile (<10) fibs] == 19),
	
	it "the sum of the fibonacci even numbers less than 10"
		(sum[x | x <- takeWhile (<10) fibs, even x] == 10),
	
	it "the sum of the fibonacci even numbers less than 4000000"
		(sum[x | x <- takeWhile (<10) fibs, even x] == 4613732)

	]
	
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)