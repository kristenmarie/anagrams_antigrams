require 'rspec'
require 'anagrams_antigrams'

describe("#anagram") do
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

  it("prompts user to enter proper word if improper word is entered") do
    test = AnagramAntigram.new("twq")
    expect(test.anagram("qwt")).to(eq("Please enter a proper word"))
  end

  it("checks if input is antigram if it is not an anagram") do
    test = AnagramAntigram.new("hi")
    expect(test.anagram("bye")).to(eq("These words are antigrams"))
  end

  it("accounts for spaces and punctuation") do
    test = AnagramAntigram.new("The Eyes.")
    expect(test.anagram("They See.")).to(eq("These words are anagrams"))
  end

  it("returns matched letters in non-anagrams") do
    test = AnagramAntigram.new("cat")
    expect(test.anagram("batty")).to(eq("These words are not anagrams, however both contain: a t"))
  end
end
