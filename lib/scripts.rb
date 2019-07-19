#!/user/bin/env ruby
require 'pry'
require 'anagrams.rb'


p "please give us your strings"
str1 = gets.chomp
p "and"
str2 = gets.chomp
strings = Anagram.new(str1,str2)
