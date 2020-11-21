import Data.List

-- Types
-- Bool Int Integer Float Double Char [Char] Tuple

-- :: Bool
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)


-- :: Int
-- Whole num -2^63 - 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

numTen :: Integer
numTen = 10

numTen' :: Float
numTen' = 10.0

boolTen = 10 < 5

myFloat :: Float
myFloat = 5.0 + 9.7

myDouble = 2.555555555555555555

-- :: Char
-- single characters denoted by single quotes

singleChar :: Char
singleChar = 'a'

myName :: String
myName = "Nick"

myName' :: [Char]
myName' = ['N', 'i', 'c', 'k']


--Negative numbers need parens

addNeg :: Integer
addNeg = 5 + (-6)

truncDouble = truncate myDouble

-- round myDouble = 3
-- floor my double = 2
-- etc

squareTen = sqrt numTen'

--LIST

numList = [1,2,3,4,5]
numRange = [1..5]
alphaList = ['a'..'z']
evenList = [2,4..20]
oddList = [1,3..21]
sumNum = sum numList
elemList = elem 5 numList
elemList'=  elem 9 numList

fibNums = [1,1,2,3,5,8]
moreFibs = [13,21,34,55,89]
combineFibs = fibNums ++ moreFibs
-- maxium comibine will give you 89, minimum will give you 1

twoLists = [fibNums, moreFibs] -- [[1,1,2,3,5,8], [13,21,34,55,89]]

myZip = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

zipFib = zipWith (+) fibNums  moreFibs

infEvens = [2,4..]
takeEvens = take 20 infEvens

dropFibs = drop 5 combineFibs
filterFibs = filter (>10) combineFibs
whileFibs = takeWhile(<=88) combineFibs

mapList = map (*2) [1..10]

unordList = [7,22,1,66,2,100,33,55,22,7,543]
sortList = sort unordList

--head takes first val
--tail takes everything but the first val
--last takes last val
--init everything but the last
--

fibCounter = 0 : 1 : zipWith (+) fibCounter (tail fibCounter)
takeFib = take 50 fibCounter

--Take a list start with zero and one
--zipWith on two different lists tail of fibCounter (1) and fibCounter (0,1)
--[0,1] ([0]) -> [1,2] keep prepending [0,1,1,2] then [1,1,2,3]
--
listFunc = [ x * y | x <- [1..5], y <- [1..5]] -- 1*5 * 1*5

fizz :: Int -> String
fizz n | n `mod` 15 == 0  = "FizzBuzz"
       | n `mod` 3  == 0  = "Fizz"
       | n `mod` 5  == 0  = "Buzz"
       | otherwise        = show n
       --map fizz [1..101]
	   --think of | (single pipe) as "under these conditions"