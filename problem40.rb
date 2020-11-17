# Problem 40 「チャンパーノウン定数」 †
# 正の整数を順に連結して得られる以下の10進の無理数を考える:

# 0.123456789101112131415161718192021...
# 小数第12位は1である.

# dnで小数第n位の数を表す. d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 を求めよ.

dec = "1"
mul_of_ten = 1
answer_product = 1
goal = 1000000
2.upto(1 / 0.0) do |num|
	if dec.size >= mul_of_ten
		answer_product *= dec.chars[mul_of_ten - dec.size - 1].to_i
		p dec.chars[mul_of_ten - dec.size - 1].to_i
		mul_of_ten *= 10
	end
	if mul_of_ten > goal
		break
	end
	dec += num.to_s
end

p answer_product
