# Problem 41 「パンデジタル素数」 †
# n桁パンデジタルであるとは, 1からnまでの数を各桁に1つずつ持つこととする.

# #下のリンク先にあるような数学的定義とは異なる

# 例えば2143は4桁パンデジタル数であり, かつ素数である. n桁（この問題の定義では9桁以下）パンデジタルな素数の中で最大の数を答えよ.

class Integer
	require 'prime'

	def pandegi?
		digi = self.to_s.chars.size
		if self.to_s.chars.include?("0")
			return false
		elsif self.to_s.chars.map(&:to_i).any?{|x| digi < x}
			return false
		elsif self.to_s.chars.uniq.size == digi
			return true
		end
		return false
	end

	# 各桁の数の和が3の倍数になるとき、その数自体も3の倍数になるらしい。
	max_answer = 0
	1000.upto(4321) do |num|
		if num.prime?
			if num.pandegi? && num > max_answer
				max_answer = num
			end
		end
	end
	1000000.upto(7654321) do |num|
		if num.prime?
			if num.pandegi? && num > max_answer
				max_answer = num
			end
		end
	end
	p max_answer
end
