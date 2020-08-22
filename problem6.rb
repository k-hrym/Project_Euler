# Problem 6 「二乗和の差」 †
# 最初の10個の自然数について, その二乗の和は,
# 1^2+ 2^2 + ... + 10^2 = 385
# 最初の10個の自然数について, その和の二乗は,
# (1 + 2 + ... + 10)^2 = 3025
# これらの数の差は 3025 - 385 = 2640 となる.
# 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

def square_to_sum(num)
  [*1..num].map{ |i| i**2 }.sum
end

def sum_to_square(num)
  [*1..num].sum**2
end

answer = sum_to_square(100) - square_to_sum(100)

p answer
