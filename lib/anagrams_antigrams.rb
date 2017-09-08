require 'ruby-dictionary'
class AnagramAntigram
  def initialize(phrase)
    @dictionary = Dictionary.from_file("words.txt")
    @phrase = phrase
  end

  def anagram(phrase2)
    @phrase.gsub!(/[^0-9A-Za-z\s]/, '')
    phrase2.gsub!(/[^0-9A-Za-z\s]/, '')
    if(!is_word?(@phrase) || !is_word?(phrase2))
      return "Please enter a proper word"
    else
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
          # when phrases are not anagrams
          same_letters = matched_letters(@phrase, phrase2)
          if same_letters.empty?
            return "These words are not anagrams"
          else
            letters = same_letters.join(" ")
            return "These words are not anagrams, however both contain: " + letters
          end
        end
      end
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
    not_words = []
    phrase_words = phrase.split
    phrase_words.each do |word|
      if(!@dictionary.exists?(word))
        not_words.push(word)
      end
    end
    if not_words.empty?
      return true
    else
      return false
    end
  end

  def matched_letters(phrase1, phrase2)
    phrase1_letters = phrase1.downcase.split("")
    phrase2_letters = phrase2.downcase.split("")
    matched_letters = []
    phrase1_letters.each do |letter|
      if (phrase2_letters.include?(letter))
        matched_letters.push(letter)
      end
    end
    return matched_letters
  end

  def is_antigram?(phrase1, phrase2)
    test_letters = matched_letters(phrase1, phrase2)
    if test_letters.empty?
      return true
    else
      return false
    end
  end
end

## Terminal stuff
input = ""
until(input == "exit") do
  puts("Enter a word: (exit to quit)")
  input = gets.chomp
  if input == "exit"
    break
  end
  puts("Enter a second word:")
  input2 = gets.chomp
  user_anagram = AnagramAntigram.new(input)
  puts(user_anagram.anagram(input2))
end
