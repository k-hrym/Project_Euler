# Problem 24 「辞書式順列」 †
# 順列とはモノの順番付きの並びのことである. たとえば, 3124は数 1, 2, 3, 4 の一つの順列である.
# すべての順列を数の大小でまたは辞書式に並べたものを辞書順と呼ぶ. 0と1と2の順列を辞書順に並べると

# 012 021 102 120 201 210
# になる.

# 0,1,2,3,4,5,6,7,8,9からなる順列を辞書式に並べたときの100万番目はいくつか?

class Array
  nums = [0,1,2,3,4,5,6,7,8,9]

  n = 100_0000

  def factorial(n)
    if n == 1
      return 1
    elsif n == 0
      return 1
    end
    return n * factorial(n - 1)
  end

  def perm_count(n)
    n -= 1
    arr = self
    ans = []
    while !arr.empty?
      a = factorial(arr.size - 1)
      m,n = n.divmod(a)
      ans << (arr.delete_at(m))
    end
    return ans
  end

  puts nums.perm_count(n).join
end
