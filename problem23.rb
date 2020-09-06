# Problem 23 「非過剰数和」 †
# 完全数とは, その数の真の約数の和がそれ自身と一致する数のことである.
# たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28 であるので, 28は完全数である.

# 真の約数の和がその数よりも少ないものを不足数といい,
# 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.

# 12は, 1 + 2 + 3 + 4 + 6 = 16 となるので, 最小の過剰数である.
# よって2つの過剰数の和で書ける最少の数は24である.
# 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている.
# 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, この上限を減らすことが出来ていない.

# 2つの過剰数の和で書き表せない正の整数の総和を求めよ.

max_num = 28123
excess = []
12.upto(max_num) do |n|
  if (1..n/2).select{|x| n % x == 0 }.sum > n
    excess << n
  end
end

to_max = [*1..28123]

12.upto(28123) do |num|
  excess.each do |n|
    break if n > num/2
    if excess.include?(num-n)
      to_max.delete(num)
      break
    end
  end
end

p to_max.sum

