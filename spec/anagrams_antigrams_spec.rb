require 'rspec'
require 'anagrams_antigrams'

describe("Phrase#anagram") do
  it("check if two words are anagrams and return string with result") do
    test = AnagramAntigram.new("tea")
    expect(test.anagram("eat")).to(eq("These words are anagrams"))
  end

  it("returns true if words are anagrams reguardless of case") do
    test = AnagramAntigram.new("Tea")
    expect(test.anagram("Eat")).to(eq("These words are anagrams"))
  end

  it("checks to see if confirmed anagrams are also palindromes") do
    test = AnagramAntigram.new("racecar")
    expect(test.anagram("racecar")).to(eq("These words are anagrams AND palindromes!"))
  end
end
