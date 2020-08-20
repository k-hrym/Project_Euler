# Problem 3 「最大の素因数」 †
# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ.

require 'prime'

p Prime.prime_division(600851475143).map{ |p| p[0] }.last

