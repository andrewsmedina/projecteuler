import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 7" [
    it "divisors of 3 is [1,3]"
        (divisors 3 == [1,3]),

	it "divisors of 10 is [1,2,5,10]"
		(divisors 10 == [1,2,5,10]),
	
	it "verify that 3 is prime"
		(isPrime 3),
		
	it "verify that 10 is not prime"
		(not (isPrime 10)),
		
	it "verify that 2 is first prime"
		(primes!!0 == 2),
	
	it "verify that 13 is 6th prime"
		(primes!!5 == 13),
		
	it "verify that is 10001st prime"
		(primes!!10000 == 104743)
	]

primes = [x | x <- [1..], isPrime x]
isPrime n = length(divisors n) == 2
divisors n = [x | x<-[1..n], n `mod` x == 0]