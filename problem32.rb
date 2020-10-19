# Problem 32 「パンデジタル積」 †
# すべての桁に 1 から n が一度だけ使われている数をn桁の数がパンデジタル (pandigital) であるということにしよう:
# 例えば5桁の数 15234 は1から5のパンデジタルである.

# 7254 は面白い性質を持っている.
# 39 × 186 = 7254 と書け, 掛けられる数, 掛ける数, 積が1から9のパンデジタルとなる.

# 掛けられる数/掛ける数/積が1から9のパンデジタルとなるような積の総和を求めよ.

# HINT: いくつかの積は, 1通り以上の掛けられる数/掛ける数/積の組み合わせを持つが1回だけ数え上げよ.

sum = 0
1111.upto(9999) do |num|
  1.upto(99) do |one|
    next if num % one != 0
    arr = [num, one, num / one].join.chars
    arr.delete("0")
    if arr.uniq.size == 9
      sum += num
      break
    end
  end
end

p sum
