# Problem 35 「巡回素数」 †
# 197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

# 100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である.

# 100万未満の巡回素数はいくつあるか?

require 'prime'

def exponentiation_of_ten(freq)
  returned_tens = 1
  while freq > 0
    returned_tens *= 10
    freq -= 1
  end
  returned_tens
end

def include_even_or_five?(num)
  num.to_s.chars.map(&:to_i).each do |on|
    if on % 2 == 0
      return true
    elsif on == 5
      return true
    elsif on == 0
      return true
    end
  end
  return false
end

million_array = Prime.each(1_000_000).to_a
size_of_start = million_array.size
answer_count = 0
million_array.each do |num|
  if include_even_or_five?(num) && num != 2 && num != 5
    next
  end
  num_digit = num.to_s.chars.size
  count = 0
  num_digit.times do
    mod = num % 10
    num /= 10
    num += mod * exponentiation_of_ten(num_digit - 1)
    if num.prime?
      count += 1
    else
      count = 0
      break
    end
  end
  if count > 0
    answer_count += 1
  end
end

p answer_count

