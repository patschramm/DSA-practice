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

# puts vowel_cipher("bootcamp")
# puts vowel_cipher("paper cup")

def double_letter_count(string)
  count = 0
  string.each_char.with_index do |char, i|
    if char == string[i + 1]
      count += 1
    end
  end
  count
end

# puts double_letter_count("the jeep rolled down the hill")
# puts double_letter_count("bootcamp")


def adjacent_sum(arr)
  array = []
  arr.each.with_index do |n, i| 
    if i < arr.length - 1
      array << (n + arr[i + 1])
    end
  end
  array
end

# print adjacent_sum([3, 7, 2, 11])
# print adjacent_sum([2, 5, 1, 9, 2, 4])

def pyramid_sum(base)
  res = [base]
  i = 0
  while i < base.length
    base = adjacent_sum(base)
    res << base
    i+=1
  end
  return res
end

# print pyramid_sum([1, 4, 6])
# print pyramid_sum([3, 7, 2, 11])

def all_else_equal(arr)
  goal = arr.sum/2
  if arr.include?(goal)
    return goal
  else
    return nil
  end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array