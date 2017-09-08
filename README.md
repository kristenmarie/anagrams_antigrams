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
  * Example input: "cccccrap"
  * Example output: "Please enter a proper word"

## Setup/Installation Requirements

* _This is a great place_
* _to list setup instructions_
* _in a simple_
* _easy-to-understand_
* _format_

_{Leave nothing to chance! You want it to be easy for potential users, employers and collaborators to run your app. Do I need to run a server? How should I set up my databases? Is there other code this app depends on?}_

## Known Bugs

_{Are there issues that have not yet been resolved that you want to let users know you know?  Outline any issues that would impact use of your application.  Share any workarounds that are in place. }_

## Support and contact details

_{Let people know what to do if they run into any issues or have questions, ideas or concerns.  Encourage them to contact you or make a contribution to the code.}_

## Technologies Used

_{Tell me about the languages and tools you used to create this app. Assume that I know you probably used HTML and CSS. If you did something really cool using only HTML, point that out.}_

### License

*{Determine the license under which this application can be used.  See below for more details on licensing.}*

Copyright (c) 2016 **_{List of contributors or company name}_**
