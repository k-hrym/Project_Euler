# Problem 36 「二種類の基数による回文数」 †
# 585 = 1001001001 (2進) は10進でも2進でも回文数である.

# 100万未満で10進でも2進でも回文数になるような数の総和を求めよ.

# (注: 先頭に0を含めて回文にすることは許されない.)

def base_from_ten_to_two(num)
  two_base = []
  while num > 0
    two_base << num % 2
    num /= 2
  end
  if two_base.first == 0 || two_base.last == 0
    return 0
  else
    return two_base.reverse.join.to_i
  end
end

answer_sum = 0
1.upto(1_000_000) do |ten_num|
  two_num = base_from_ten_to_two(ten_num)
  if two_num == 0
    next
  elsif two_num == two_num.to_s.reverse.to_i && ten_num == ten_num.to_s.reverse.to_i
    answer_sum += ten_num
  end
end

p answer_sum

