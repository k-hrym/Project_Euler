# Problem 34 「桁の階乗」 †
# 145は面白い数である. 1! + 4! + 5! = 1 + 24 + 120 = 145となる.

# 各桁の数の階乗の和が自分自身と一致するような数の和を求めよ.

# 注: 1! = 1 と 2! = 2 は総和に含めてはならない.

def factorial(num)
  if num == 1 || num == 0
    return 1
  end
  return num * factorial(num - 1)
end

answer = 0
3.upto(2540160) do |n|
  sum = 0
  n_copy = n
  while n > 0
    sum += factorial(n % 10)
    n /= 10
  end
  if sum == n_copy
    answer += sum
    p sum
  end
end

p answer