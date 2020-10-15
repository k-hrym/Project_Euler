# Problem 31 「硬貨の和」 †
# イギリスでは硬貨はポンド£とペンスpがあり，一般的に流通している硬貨は以下の8種類である.

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

# 以下の方法で£2を作ることが可能である．

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

# これらの硬貨を使って£2を作る方法は何通りあるか?

def coin_count(coins, goal, last = 0)
  if goal == 0
    return 1
  end

  total = 0
  coins.each do |c|
    if c < last
      next
    end
    if goal >= c
      total += coin_count(coins, goal - c, c)
    end
  end

  total
end

coins = [1,2,5,10,20,50,100,200]
puts coin_count(coins,200)