import Test.Hspec

main :: IO()
main = do hspec specs

specs = describe "crivo de erastostenes" [
    it "filtra a lista de 2 a 10 removendo os multiplos de 2 e 3"
        (takeWhile (<10) crivo == [2,3,5,7]),
    it "soma a lista dos numeros primos a baixo de 2000000"
        (sum[x | x <- takeWhile (<2000000) crivo] == 142913828922)
    ]

crivo = crivo' [2..] where
    crivo' (p:xs) = p : crivo' [x | x <- xs, x `mod` p > 0]
