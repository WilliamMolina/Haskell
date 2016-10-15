
myLength:: [Int] -> Int
myLength[]=0
myLength(x:zs)=1+myLength zs

toDigitRev::Int->[Int]
toDigitRev x
	|x>0=(mod x 10):toDigitRev(div x 10)
	|otherwise=[]

reverseD :: Int ->[Int]
reverseD a=reverse(toDigitRev a)

indicesPares::[Int]->[Int]
indicesPares [] = []
indicesPares (x:zs)
	|(mod (myLength(zs)) 2)==1 = (x*2):indicesPares(zs)
	|otherwise=x:indicesPares(zs)

sumDigits :: Int -> Int
sumDigits 0 = 0
sumDigits x=(mod x 10)+sumDigits(div x 10)

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:zs)=sumDigits(x)+sumList(zs)


verify :: Int -> Bool
verify x=mod (sumList(indicesPares(reverseD(x)))) 10==0
