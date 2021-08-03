def caesar_cipher(str, num)
  alph = "abcdefghijklmnopqrstuvwxyz"
  res = ''
  str.each_char { |char| res += alphabet[(alphabet.index(char) + num) % 26]}
  res
end

def vowel_cipher(string)
  vowels = 'aeiou'
  string.each_char.with_index do |char, i|
    if vowels.include?(char)
      string[i] = vowels[(vowels.index(char) + 1) % 5]
    end
  end

  string
end

puts vowel_cipher("bootcamp")
puts vowel_cipher("paper cup")

def double_letter_count(string)
  count = 0
  string.each_char.with_index do |char, i|
    if char == string[i + 1]
      count += 1
    end
  end
  count
end

puts double_letter_count("the jeep rolled down the hill")
puts double_letter_count("bootcamp")
