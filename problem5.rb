# Problem 5 「最小の倍数」 †
# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり,
# そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

require 'prime'

 # aからbまでの整数の最小公倍数を求める
def multiple(a,b)
  # 整数それぞれを素因数分解する
  divisors = (a..b).to_a.map{|num| Prime.prime_division(num) }
  # 素因数分解したものを素数でグルーピング。最大値だけ残して掛け算。
  divisors.flatten.each_slice(2).to_a.group_by{|e| e[0]}.values.map{|val| val.max}.map{|a,b| a**b}.inject(:*)
end

p multiple(1,20)



# これでいけちゃうじゃん
def simpler_multiple(a,b)
  [*a..b].inject(:lcm)
end

p simpler_multiple(1,20)