# Problem 7 「10001番目の素数」 †
# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり,
# 6番目の素数は 13 である.
# 10001 番目の素数を求めよ.

# =========primeライブラリの使用============
require 'prime'

Prime.take(10001).last

# =========primeライブラリの不使用============
def prime?(num)
  (2..num-1).each{ |x| return false if num % x == 0 }
  true
end

i = 1
count = 0
while count <= 10001
  i += 1
  if prime?(i)
    count += 1
    if count == 10001
      break
    end
  end
end
p i

