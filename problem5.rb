# Problem 5 「最小の倍数」 †
# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり,
# そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

require 'prime'

 # aからbまでの整数のそれぞれの約数を配列で返す。
def multiple(a,b)
  divisors = (a..b).to_a.map{|num| Prime.prime_division(num) }
  divisors.flatten.each_slice(2).to_a.group_by{|e| e[0]}.values.map{|val| val.max}.map{|a,b| a**b}.inject(:*)
end

p multiple(1,20)

