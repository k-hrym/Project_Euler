# Problem 37 「切り詰め可能素数」 †
# 3797は面白い性質を持っている.
# まずそれ自身が素数であり, 左から右に桁を除いたときに全て素数になっている (3797, 797, 97, 7).
# 同様に右から左に桁を除いたときも全て素数である (3797, 379, 37, 3).

# 右から切り詰めても左から切り詰めても素数になるような素数は11個しかない. 総和を求めよ.

# 注: 2, 3, 5, 7を切り詰め可能な素数とは考えない.

require 'prime'

answer_sum = 0
answer_count = 0
10.upto(1.0 / 0) do |num|
  unless num.prime?
    next
  end

  count = 0
  num_chars = num.to_s.chars
  num_digit = num_chars.size
  (num_chars.size - 1).times do
    num_digit -= 1
    if num_chars.last(num_digit).join.to_i.prime? && num_chars.take(num_digit).join.to_i.prime?
      count += 1
    else
      break
    end
  end

  if count == num_chars.size - 1
    answer_sum += num
    answer_count += 1
  end

  if answer_count == 11
    break
  end
end

p answer_sum