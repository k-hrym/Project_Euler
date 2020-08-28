# Problem 12 「高度整除三角数」 †
# 三角数の数列は自然数の和で表わされ,
# 7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である. 三角数の最初の10項は:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# となる.

# 最初の7項について, その約数を列挙すると, 以下のとおり.

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28

# これから, 7番目の三角数である28は, 5個より多く約数をもつ最初の三角数であることが分かる.

# では, 500個より多く約数をもつ最初の三角数はいくつか.

require 'prime'

def number_divisors(num)
  Prime.prime_division(num).map{|_,n| n+1}.inject(:*)
end

i = 3
sankaku_num = 3
while number_divisors(sankaku_num) < 501
  sankaku_num += i
  i += 1
end

p sankaku_num

# =====重すぎて終わらない======
# def yaku_num_count(num)
#   arr = (1..num).select{|n| num%n==0 }
#   return arr.size
# end

# i = 3
# sankaku_num = 3
# while yaku_num_count(sankaku_num) < 501
#   sankaku_num += i
#   i += 1
# end

# p sankaku_num

