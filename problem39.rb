# Problem 39 「整数の直角三角形」 †
# 辺の長さが {a,b,c} と整数の3つ組である直角三角形を考え, その周囲の長さを p とする.
# p = 120のときには3つの解が存在する:

# {20,48,52}, {24,45,51}, {30,40,50}

# p ≤ 1000 のとき解の数が最大になる p はいくつか?


def app_absolute_value(num)
  if num % 2 == 0
    int = 2
  else
    int = 1
  end

  while num / int >= int
    if num / int == int && num % int == 0
      return int
    end
    int += 2
  end

  return int
end

def max_edge(num)
  1.upto(1.0 / 0) do |a|
    c_expo = a**2 * 2
    if (a * 2) + app_absolute_value(c_expo) >= num
      return a
    end
  end
end

solution_count = 0
max_edges = 0

1.upto(1000) do |edges|
  count = 0
  1.upto(max_edge(edges)) do |a|
    a.upto(1.0 / 0) do |b|
      c = edges - a - b
      if c <= 0
        break
      elsif a**2 + b**2 == c**2
        count += 1
      elsif a**2 + b**2 > c**2
        break
      end
    end

    if solution_count < count
      solution_count = count
      max_edges = edges
    end

  end
end

p max_edges