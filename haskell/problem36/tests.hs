import Test.Hspec

main :: IO()
main = do hspec specs


--main = print (sum [number | number <- [1..1000000], palindromic number, palindromicBin (decToBin number)])

specs = describe "problem36" [
    it "585 should be palindromic"
        (palindromic 585),
    it "235 should be not palindromic"
        (not (palindromic 235)),
    it "10001 should be palindromic"
        (palindromic 10001),
    it "585==1001001001"
        (show (decToBin 585) == "1001001001"),
    it "1001001001 should be palindromic"
        (palindromic (show (decToBin 585)))
    ]

palindromic numero = (show numero) == reverse (show numero)
palindromicBin numero = numero == reverse numero

decToBin x = reverse $ decToBin' x
  where
    decToBin' 0 = []
    decToBin' y = let (a,b) = quotRem y 2 in [b] ++ decToBin' a

