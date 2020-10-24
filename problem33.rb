# Problem 33 「桁消去分数」 †
# 49/98は面白い分数である.
# 「分子と分母からそれぞれ9を取り除くと, 49/98 = 4/8 となり,
# 簡単な形にすることができる」と経験の浅い数学者が誤って思い込んでしまうかもしれないからである.
# (方法は正しくないが，49/98の場合にはたまたま正しい約分になってしまう．)

# 我々は 30/50 = 3/5 のようなタイプは自明な例だとする.

# このような分数のうち, 1より小さく分子・分母がともに2桁の数になるような自明でないものは, 4個ある.

# その4個の分数の積が約分された形で与えられたとき, 分母の値を答えよ.

r = 1

for i in 10..99
  for j in 10..99
    nums = [i, j].map(&:to_s).join.chars
    duplicate = nums.select{|v| nums.count(v) > 1}.uniq
    if i >= j || duplicate.size != 1 || nums.include?("0")
      next
    end
    nums.delete(duplicate[0])
    if nums.size != 2 || nums[0].to_i == 0
      next
    end
    nums = nums.map(&:to_i)
    if Rational(nums[0],nums[1]) == Rational(i,j)
      r *= Rational(i,j)
    end
  end
end

p r.denominator


