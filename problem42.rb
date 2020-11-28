# Problem 42 「符号化三角数」 †
# 三角数のn項は tn = 1/2n(n+1)で与えられる. 最初の10項は

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# である.

# 単語中のアルファベットを数値に変換した後に和をとる. 
# この和を「単語の値」と呼ぶことにする. 
# 例えば SKY は 19 + 11 + 25 = 55 = t10である. 
# 単語の値が三角数であるとき, その単語を三角語と呼ぶ.

# 16Kのテキストファイル words.txt 中に約2000語の英単語が記されている. 三角語はいくつあるか?

File.open('42_words.txt') do |file|
	file.each_line do |content|
		WORDS = content.split(',').map{|word| word.delete("\"")}
	end
end

def triangular_num(stage)
	(stage ** 2 + stage)/2
end

def to_int(word)
	word.chars.map{|c| ALPHA.index(c) + 1}.sum
end

ALPHA = ("A".."Z").to_a
to_int_words = WORDS.map{|word| to_int(word)}

max_tiw = to_int_words.max
triangular_numbers = Array.new

1.upto(1/0.0) do |stage|
	if triangular_num(stage) > max_tiw
		break
	end
	triangular_numbers << triangular_num(stage)
end

p to_int_words.count{|word| triangular_numbers.include?(word)}