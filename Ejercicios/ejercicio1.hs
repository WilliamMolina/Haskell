x:: Int
x=5
lucky :: (Integral a) => a -> String
lucky 7  = "lucky day"
lucky x = "bad day"

factorial:: Integer -> Integer
factorial 0=1
factorial x=x*factorial(x-1)

sumatoria :: Integer -> Integer
sumatoria 1 = 1
sumatoria x = x + sumatoria(x-1)

sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo[] = []
sumEveryTwo(x:[]) =[x]
sumEveryTwo(x:y:zs)=(x+y):sumEveryTwo zs

intLastLength:: [Int] -> Int
intLastLength[]=0
intLastLength(x:zs)=1+intLastLength zs

pesoTest:: Int -> [Char]
pesoTest peso 
    |peso<=40 ="Estas muy flaco"
    |peso<=60 ="Estas bien de peso"
    |peso<=80 ="Estas gordo"
    |otherwise ="Estas super gordo :("

duplicarPares xs=[x| x<-xs,(mod x 3)==0]
