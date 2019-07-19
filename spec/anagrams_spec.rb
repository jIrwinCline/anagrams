require 'pry'
require 'rspec'
require 'anagrams.rb'

describe('#anagrams') do
  it('if two strings entered are anagrams, they should return true') do
    anagram = Anagram.new('dot', 'tod')
     expect(anagram.anagrams?).to(eq(true))
  end
end
