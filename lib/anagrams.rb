require 'pry'
require 'fileutils'

class Anagram
  def initialize(str1, str2)
    @arr1 = str1.downcase.split('').sort.delete_if{ |x| x == " "}
    @arr2 = str2.downcase.split('').sort.delete_if{ |x| x == " "}
    @string = str1
    p @arr1
    p @arr2
  end
  def anagrams?
    count = 0
    @arr2.each do |i|
      if @string.include?(i)
        count += 1
      end
    end
    if count == 0
      "these are ANTIgrams"
    else
      if @arr1 == @arr2
        "these are anagrams!"

      else
        "These are not anagrams"
      end
    end
  end
end
