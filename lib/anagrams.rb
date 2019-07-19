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
    count = 0
    if @arr1.any?{|x| ["a","e","i","o","u"].include?(x)}|| @arr2.any?{ |y| ["a","e","i","o","u"].include?(y)}
      @arr2.each do |i|
        if @arr1.include?(i)
          count += 1
        end
      end
      if count == 0
        p "these are ANTIgrams"
        false
      else
        if @arr1 == @arr2
          p "these are anagrams!"
          true
        else
          p "These are not anagrams"
          false
        end
      end
    else
      p "please enter real words"
      true

    end
  end
end

p "please give us your strings"
str1 = gets.chomp
p "and"
str2 = gets.chomp
strings = Anagram.new(str1,str2)
strings.anagrams?
