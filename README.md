# _Anagrams and Antigrams_

#### _Algorithm to determine if a given word or phrase is an anagram or antigram, {9.8.2017}_

#### By _**Kristen Marie Kulha**_

## Description

_Upon entering a word or phrase the script will return if it is either an anagram or antigram, and also if it is a palindrome. If input is not a word or contains an element that is not a word, it will display a prompt to enter a proper word._

## Specifications

* Check if two words are anagrams
  * Example input: "tea", "eat"
  * Example output: "These words are anagrams"
* Account for the possibility that words might have different cases but should still be anagrams
  * Example input: "Tea", "Eat"
  * Example output: "These words are anagrams"
* If a word or phrase is an anagram, check if it is also a palindrome
  * Example input: "racecar", "racecar"
  * Example output: "These are anagrams" "These are palindromes"
* Add a rule to check if the inputs are words(words must contain AEIOU)
  * Example input: twq
  * Example output: "Please enter a proper word."
* If phrases aren't anagrams, method should check wether they are actually antigrams
  * Example input: "hi", "bye"
  * Example output: "These words are antigrams"
* Account for multiple words being anagrams or antigrams
  * Example input: "A meal for one, for me alone."
  * Example output: "These words are anagrams"
* If two phrases aren't anagrams, return letters from the argument that are matches
  * Example input: "cat" , "batty"
  * Example output: "a", "t"
* Use dictionary gem to look up if single word inputs are words.
  * Example input: "cccat"
  * Example output: "Please enter a proper word"

## Setup/Installation Requirements

* _Clone GitHub repository_
* _In terminal enter ```ruby anagrams_antigrams/anagrams_antigrams.rb```_
* _Follow prompts in terminal_

## Known Bugs

_There are no known bugs at this time_

## Support and contact details

_Feel free to contact me at kristen.m.kulha@gmail.com_

## Technologies Used

_Ruby_

### License

*This software is licensed under the MIT license.*

Copyright (c) 2017 **_Kristen Kulha_**
