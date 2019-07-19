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
  it('if one of the words doesnt contain a vowel, will output a string that asks for real words') do
    anagram = Anagram.new('x', 'y')
    expect(anagram.anagrams?).to(eq("please enter real words"))
  end

  it('if two strings entered are not anagrams, and have NO matching letters otput a string that lets them know they are antigrams') do
    anagram = Anagram.new('God', 'dog')
     STDOUT.should_receive(:p).with("these are ANTIgrams")
     expect(anagram.anagrams?).to(eq(false))
  end
end
