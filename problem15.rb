# Problem 15 「格子経路」 †
# 2×2 のマス目の左上からスタートした場合, 引き返しなしで右下にいくルートは 6 つある.

# では, 20×20 のマス目ではいくつのルートがあるか.

def lattice_path(x,y)
  ( [*1..(x+y)].inject(:*) ) / ( [*1..x].inject(:*) * [*1..y].inject(:*) )
end

# 時間かかりすぎてうまく機能しないのであっているかわからないやつ
# def lattice_path(num)
#   i = 1
#   count = 0
#   while i <= num
#     count += [*0..num].permutation(i).to_a.size/i
#     i += 1
#   end
#   return count
# end

# 問題とは関係ないけどランダムでルートを制作するコード
# def lattice_path(num)
#   route = []
#   while
#     if route.count(1) == num && route.count(0) < num
#       route << 0
#     elsif route.count(0) == num && route.count(1) < num
#       route << 1
#     elsif route.count(0) < num && route.count(1) < num
#       route << [0,1].sample
#     else
#       return route
#     end
#   end
# end