require 'pry'
require 'fileutils'

class Anagram
  def initialize(str1, str2)
    @arr1 = str1.downcase.split('').sort.delete_if{ |x| x == " "}
    @arr2 = str2.downcase.split('').sort.delete_if{ |x| x == " "}
    p @arr1
    p @arr2
  end
  def anagrams?
    if @arr1 == @arr2
      true

    else
      false
    end
  end
end

p "please give us your strings"
str1 = gets.chomp
p "and"
str2 = gets.chomp
strings = Anagram.new(str1,str2)
