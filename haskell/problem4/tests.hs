import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "problem 4" [
    it "verify that 100 is not palindromic"
        (not (isPalindromic 100)),

    it "verify that 101 is palindromic"
        (isPalindromic 101),

    it "the palindromes in product of range of 11..20"
        (palindromes [11..20] == [121,252,272,272,323,252,323]),

    it "the largest palindrome in product of range 11..99"
        (largestPalindrome [11..99] == 9009),

    it "the largest palindrome in product of range 100..999"
        (largestPalindrome [100..999] == 906609)
    ]

isPalindromic n = show n == reverse [x | x <- show n]
palindromes xs = [x*s | x <- xs, s <- xs, isPalindromic (x*s)]
largestPalindrome xs = maximum[x | x <- palindromes xs]
