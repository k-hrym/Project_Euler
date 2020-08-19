# Problem 2 「偶数のフィボナッチ数」 †
# フィボナッチ数列の項は前の2つの項の和である.
# 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.


# ========リファクタリング前==========
n = 2
array = [1]

while n <= 4000000
  m = array.last
  array << n
  n = n + m
end

answer = array.select{ |a| a%2 == 0 }.sum
p answer

# ========リファクタリング後==========
array = [1,2]

while array.last(2).sum <= 4000000
  array << array.last(2).sum
end

answer = array.select(&:even?).sum
p answer

