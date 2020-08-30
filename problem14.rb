# Problem 14 「最長のコラッツ数列」 †
# 正の整数に以下の式で繰り返し生成する数列を定義する.

# n → n/2 (n が偶数)

# n → 3n + 1 (n が奇数)

# 13からはじめるとこの数列は以下のようになる.

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 13から1まで10個の項になる.
# この数列はどのような数字からはじめても最終的には 1 になると考えられているが,
# まだそのことは証明されていない(コラッツ問題)

# さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.

# 注意: 数列の途中で100万以上になってもよい

def terms(num)
  if num.even?
    num = num/2
  else
    num = num*3 +1
  end
end

def koratu(num)
  array = [num]
  i = num
  while i > 1
    array << terms(i)
    i = terms(i)
  end
  return array
end

longest = 0
answer_num = 0
[*1..999999].each do |num|
  if longest < koratu(num).size
    longest = koratu(num).size
    answer_num = num
  end
end

p longest
p answer_num