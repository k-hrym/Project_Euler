# Problem 17 「数字の文字数」 †
# 1 から 5 までの数字を英単語で書けば one, two, three, four, five であり,
# 全部で 3 + 3 + 5 + 4 + 4 = 19 の文字が使われている.

# では 1 から 1000 (one thousand) までの数字をすべて英単語で書けば, 全部で何文字になるか.

# 注: 空白文字やハイフンを数えないこと.
# 例えば, 342 (three hundred and forty-two) は 23 文字,
# 115 (one hundred and fifteen) は20文字と数える.
# なお, "and" を使用するのは英国の慣習.

class Integer
  def to_en
    num_array_1_9 = ['one','two','three','four','five','six','seven','eight','nine']
    num_array_10_19 = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    num_array_20_90 = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety',]

    case self
    when 1..9
      num_array_1_9[self-1]
    when 10..19
      num_array_10_19[self-10]
    when 20..99
      if self%10 == 0
        num_array_20_90[self/10-2]
      else
        num_array_20_90[self/10-2] + '-' + num_array_1_9[self%10-1]
      end
    when 100..999
      if self%100 == 0
        num_array_1_9[self/100-1] + "\shundred"
      elsif 1 <= self%100 && self%100 <= 9
        num_array_1_9[self/100-1] + "\shundred\sand\s" + num_array_1_9[self%100-1]
      elsif 10 <= self%100 && self%100 <= 19
        num_array_1_9[self/100-1] + "\shundred\sand\s" + num_array_10_19[self%100-10]
      else
        if self%100%10 == 0
          num_array_1_9[self/100-1] + "\shundred\sand\s" + num_array_20_90[self%100/10-2]
        else
          num_array_1_9[self/100-1] + "\shundred\sand\s" + num_array_20_90[self%100/10-2] + '-' + num_array_1_9[self%100%10-1]
        end
      end
    when 1000
      'one thousand'
    end
  end

  def en_num_length
    str = self.to_en
    [/\s/,/-/].each do |c|
      str = str.gsub(c,'')
    end
    str.length
  end

  length_count = 0
  1.upto(1000) do |n|
    length_count += n.en_num_length
  end

  p length_count
end

