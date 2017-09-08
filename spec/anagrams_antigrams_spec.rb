require 'rspec'
require 'anagrams_antigrams'

describe("Phrase#anagram") do
  it("check if two words are anagrams and return string with result") do
    test = AnagramAntigram.new("tea")
    expect(test.anagram("eat")).to(eq("These words are anagrams"))
  end
end
