
class AnagramAntigram
  def initialize(phrase)
    @phrase = phrase
  end

  def anagram(phrase2)
    if (@phrase.split("").sort.join == phrase2.split("").sort.join)
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end
  end
end
