

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

# p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
# p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
# p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

def anagrams?(word1, word2)
  hash = Hash.new(0)
  
  word1.each_char do |char|
    hash[char] += 1
  end
  word2.each_char do |char|
    hash[char] -= 1
  end

  return hash.all? {|k, v| v == 0}
end

# puts anagrams?("cat", "act")          #=> true
# puts anagrams?("restful", "fluster")  #=> true
# puts anagrams?("cat", "dog")          #=> false
# puts anagrams?("boot", "bootcamp")    #=> false

# def consonant_cancel(str)
#   words = str.split(' ')
#   vowels = "aeiou"
#   res = []

#   words.each do |word|
#     word.each_char do |char|
#       if 
#     end
#   end

#   res
# end

# print consonant_cancel("down the rabbit hole")
# print consonant_cancel("writing code is challenging")

def same_char_collapse(str)
  i = 1
  while i <= str.length
    if str[i] == str[i - 1]
      str = str[0...i - 1] + str[i + 1..-1]
      i = 0
      p str
    end
    i += 1
  end

  str
end

puts same_char_collapse("zzzxaaxyz")

def summation(num)
  sum = 0
  
  (1..num).each { |n| sum += n }
  
  sum
end

def rental_car_cost(d)
  sum = d * 40;
  
  if d >= 7
    return sum - 50
  elsif d >= 3
    return sum - 20
  else 
    return sum
  end
end

def coprime?(n, m)
  (2..m).each do |num|
    if n % num == 0 && m % num == 0
      return false
    end
  end
true
end

# def get_sum(a,b)
#   # Good Luck!
#   return a if a == b
  
#   sum = 0
#   if a > b
#     (b..a).each do |n|
#       sum += n
#     end
#   else
#     (a..b).each do |n|
#       sum += n
#     end
#   end
  
#   sum
# end

# require 'prime'
# def gap(g, m, n)
#   arr = []
  
#   (m..n).each do |num|
#     if num.prime?
#       arr << num
#     end
#   end

#   (m..n).each.with_index do |p, i|
#     if arr[i + 1]
#       if arr[i + 1] - p == g
#         return [p, arr[i + 1]]
#       end
#     end
#   end
    
#   return nil
# end

# def prime?(n)
#   return false if n < 2
  
#   (2...n).each do |num|
#     return false if n % num == 0
#   end
  
#   return true
# end