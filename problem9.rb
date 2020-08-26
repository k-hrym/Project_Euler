# Problem 9 「特別なピタゴラス数」 †
# ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
# a^2 + b^2 = c^2
# 例えば, 3^2 + 4^2 = 9 + 16 = 25 = 5^2 である.
# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

def pythagorean(sum_num)
  [*1..sum_num].each do |num|
    i = num + 1
    while i <= (sum_num - num)/2
      if Math.sqrt(num**2 + i**2)%1 == 0
        if num + i + Math.sqrt(num**2 + i**2) == 1000
          return [num, i, Math.sqrt(num**2 + i**2)]
        end
      end
      i += 1
    end
  end
end

p pythagorean(1000).inject(:*).to_i

