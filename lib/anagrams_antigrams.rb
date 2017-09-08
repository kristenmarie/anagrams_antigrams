
class AnagramAntigram
  def initialize(phrase)
    @phrase = phrase
  end

  def anagram(phrase2)
    if(is_word?(@phrase) && is_word?(phrase2))
      @phrase.gsub!(/[^0-9A-Za-z]/, '')
      phrase2.gsub!(/[^0-9A-Za-z]/, '')
      if (@phrase.downcase.split("").sort.join == phrase2.downcase.split("").sort.join)
        if(is_palindrome?(@phrase, phrase2))
          return "These words are anagrams AND palindromes!"
        else
          return "These words are anagrams"
        end
      else
        if is_antigram?(@phrase, phrase2)
          return "These words are antigrams"
        else
          return "These words are not anagrams"
        end
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

  def is_antigram?(phrase1, phrase2)
    phrase1_letters = phrase1.downcase.split("")
    phrase2_letters = phrase2.downcase.split("")
    matched_letters = []
    phrase1_letters.each do |letter|
      if (phrase2_letters.include?(letter))
        matched_letters.push(letter)
      end
    end
    if matched_letters.empty?
      return true
    else
      return false
    end
  end
end
