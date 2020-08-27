# Problem 10 「素数の和」 †
# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.

require 'prime'

p Prime.each(2000000).to_a.sum

# ======組み込みライブラリ不使用=======
# ※重たすぎる

# def prime?(num)
#   (2..num-1).each{ |x| return false if num % x == 0 }
#   true
# end

# i = 3
# prime_sum = 2
# while i <= 2000000
#   prime_sum += i if prime?(i)
#   # 2以外の偶数は素数ではないので奇数だけ試すために+2
#   i += 2
# end

# p prime_sum

