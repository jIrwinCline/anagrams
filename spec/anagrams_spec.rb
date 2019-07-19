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
    anagram = Anagram.new('tack', 'shoe')

     expect(anagram.anagrams?).to(eq("these are ANTIgrams"))
  end

  it('two string longer than one word should still return as anagrams if they meet the standard') do
    anagram = Anagram.new('kayak racecars', 'racecar kayaks')
    expect(anagram.anagrams?).to(eq("these are anagrams!"))
  end
  it('checkif two non anagrams but non antigrams return a simple not an anagram string') do
    anagram = Anagram.new('simple', 'man')
    expect(anagram.anagrams?).to(eq("these are not anagrams"))
  end
end
