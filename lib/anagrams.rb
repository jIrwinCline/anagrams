require 'pry'
require 'fileutils'

class Anagram
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
    @arr1 = str1.downcase.split('').sort.delete_if{ |x| x == " "}
    @arr2 = str2.downcase.split('').sort.delete_if{ |x| x == " "}
    @str1.delete! "."
    @str1.delete! ","
    @str1.delete! "!"
    @str1.delete! "?"
    @str2.delete! "."
    @str2.delete! ","
    @str2.delete! "!"
    @str2.delete! "?"
    p @arr1
    p @arr2
  end
  def anagrams?
    common_chars = 0
    if @arr1.any?{|x| ["a","e","i","o","u"].include?(x)}|| @arr2.any?{ |y| ["a","e","i","o","u"].include?(y)}
      @arr2.each do |i|
        if @arr1.include?(i)
          common_chars += 1
        end
      end
      if common_chars == 0
        p "these are ANTIgrams"
      else
        if @arr1 == @arr2
          p "these are anagrams!"
        else
          p "These are not anagrams"
        end
      end
    else
      p "please enter real words"
    end
  end
  def is_palindrome?
      pal_count = 0
      words = @str1.split(' ')
      words.each do |word|
        chars = word.split('')
        pal_array = []
        x = chars.length
        while x > 0
            pal_array.push(chars[x-1])
          x -= 1
        end
        if pal_array.join == word
          p "In string 1, #{word} is a palindrome"
          pal_count += 1
          true
        else
          false
        end
      end
      words2 = @str2.split(' ')
      words.each do |word|
        chars = word.split('')
        pal_array = []
        x = chars.length
        while x > 0
            pal_array.push(chars[x-1])
          x -= 1
        end
        if pal_array.join == word
          p "In string 2, #{word} is a palindrome"
          pal_count += 1
          true
        else
          false
        end
      end
       pal_count
    end
end

p "please give us your strings"
str1 = gets.chomp
p "and"
str2 = gets.chomp
strings = Anagram.new(str1,str2)
strings.anagrams?
strings.is_palindrome?
