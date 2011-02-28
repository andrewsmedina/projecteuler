import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 3" [
    it "the primeFactor for 4, is [2,2]"
        (primeFactor 4 == [2,2]),

	it "the primeFactor for 5 is [5]"
		(primeFactor 5 == [5]),
		
	it "the primeFactor for 15 is [3,5]"
		(primeFactor 15 == [3,5]),
		
	it "the primeFactor for 12 is [2,2,3]"
		(primeFactor 12 == [2,2,3]),
	
	it "the primeFactor for 13195 is [5,7,13,29]"
		(primeFactor 13195 == [5,7,13,29]),
		
	it "the primeFactor for 600851475143 is 600851475143"
		(primeFactor 600851475143 == [71,839,1471,6857]),
		
	it "the max primeFactor for 600851475143 is 6857"
		(maximum [x | x <- primeFactor 600851475143] == 6857)
    ]

primeFactor n = primeFactor' n 2 where
	primeFactor' n factor
		| factor * factor > n = [n]
		| n `mod` factor == 0 = factor : primeFactor' (n `div` factor) factor
		| otherwise 		  = primeFactor' n (factor+1)