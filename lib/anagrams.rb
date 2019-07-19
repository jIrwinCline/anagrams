require 'pry'
require 'fileutils'

class Anagram
  def initialize(str1, str2)
    @arr1 = str1.split('')
    @arr2 = str2.split('')
    p @arr1
    p @arr2
  end
  def anagrams?

  end
end

p "please give us your strings"
str1 = gets.chomp
p "and"
str2 = gets.chomp
strings = Anagram.new(str1,str2)
