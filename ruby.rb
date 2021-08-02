def caesar_cipher(str, num)
  alph = "abcdefghijklmnopqrstuvwxyz"
  res = ''
  str.each_char do |char|
    res += alphabet[(alphabet.index(char) + num) % 26]
  end
  return res
end