# Problem 4 「最大の回文積」 †
# 左右どちらから読んでも同じ値になる数を回文数という.
# 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
# では, 3桁の数の積で表される回文数の最大値を求めよ


products = (100..999).to_a.combination(2).to_a.map{|a,b| a*b}.reverse
answer = products.select{ |num| num == num.to_s.reverse.to_i }.max

p answer