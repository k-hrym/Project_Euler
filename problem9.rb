# Problem 9 「特別なピタゴラス数」 †
# ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
# a^2 + b^2 = c^2
# 例えば, 3^2 + 4^2 = 9 + 16 = 25 = 5^2 である.
# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

# ピタゴラスの定理を満たす平方数の組み合わせ配列から求める
def pythagorean(nat_num)
  square_nums = [*1..nat_num].map{|int| int**2}
  i = 0
  square_nums.each do |num|
    square_nums[i..-1].each do |n|
      if square_nums.include?(num + n) && \
        [num, n, num + n].map{|square| Math.sqrt(square)}.sum == nat_num
        return [num, n, num + n].map{|square| Math.sqrt(square)}
      end
    end
    i += 1
  end
end

p pythagorean(1000).inject(:*).to_i
