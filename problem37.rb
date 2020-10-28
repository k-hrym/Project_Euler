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
  del_left_num = num
  lcount = 0
  while del_left_num > 0
    char_arr = del_left_num.to_s.chars
    char_arr.delete_at(0)
    del_left_num = char_arr.join.to_i
    if del_left_num.prime?
      lcount += 1
    else
      break
    end
  end

  if lcount == num.to_s.chars.size - 1
    del_right_num = num
    rcount = 0
    while del_right_num > 0
      del_right_num /= 10
      if del_right_num.prime?
        rcount += 1
      else
        break
      end
    end
  else
    next
  end

  if rcount == num.to_s.chars.size - 1
    answer_sum += num
    answer_count += 1
  end

  if answer_count == 11
    break
  end
end

p answer_sum

