require 'pry'
require 'rspec'
require 'anagrams.rb'

describe('#anagrams') do
  it('if two strings entered are anagrams, they should return true') do
    anagram = Anagram.new('dot', 'tod')
     expect(anagram.anagrams?).to(eq("these are anagrams!"))
  end
  it('if two strings entered are anagrams, but have different capital letters, they should still return true') do
    anagram = Anagram.new('God', 'dog')
     expect(anagram.anagrams?).to(eq("these are anagrams!"))
  end
  it('if two strings entered are anagrams, but have different capital letters, they should still return true') do
    anagram = Anagram.new('God', 'dog')
     expect(anagram.anagrams?).to(eq("these are anagrams!"))
  end

end
