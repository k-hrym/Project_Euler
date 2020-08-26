# Problem 9 「特別なピタゴラス数」 †
# ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
# a^2 + b^2 = c^2
# 例えば, 3^2 + 4^2 = 9 + 16 = 25 = 5^2 である.
# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

# ピタゴラスの定理を満たす平方数の組み合わせ配列を作る
def pythagorean(nat_num)
  square_nums = [*1..nat_num].map{|int| int**2}
  i = 0
  pytha_array = []
  square_nums.each do |num|
    square_nums[i..-1].each do |n|
      if square_nums.include?(num + n)
        pytha_array << [num, n, num + n]
      end
    end
    i += 1
  end
  return pytha_array
end

# 配列の３要素の総和が指定の数になるものを探す
def sum_of_three(nat_num)
  pythagorean(nat_num).each do |abc|
    if abc.map{|square| Math.sqrt(square)}.sum == nat_num
      return abc.map{|square| Math.sqrt(square)}
    end
  end
end

p sum_of_three(1000).inject(:*).to_i

