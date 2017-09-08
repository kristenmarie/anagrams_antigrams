
class AnagramAntigram
  def initialize(phrase)
    @phrase = phrase
  end

  def anagram(phrase2)
    if(is_word?(@phrase) && is_word?(phrase2))
      if (@phrase.downcase.split("").sort.join == phrase2.downcase.split("").sort.join)
        if(is_palindrome?(@phrase, phrase2))
          return "These words are anagrams AND palindromes!"
        else
          return "These words are anagrams"
        end
      else
        return "These words are not anagrams"
      end
    else
      return "Please enter a proper word"
    end
  end

  def is_palindrome?(phrase1, phrase2)
    if(phrase1.reverse == phrase2)
      return true
    else
      return false
    end
  end

  def is_word?(phrase)
    if(phrase =~ /[aeiou]/)
      return true
    else
      return false
    end
  end
end
