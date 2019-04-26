require 'pry'

def starts_with_a_vowel?(word)
  word.scan(/^[aeiou]/i).length == 1 ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text[0].scan(/[A-Z]/).length == 1 && text[-1].scan(/[[:punct:]]/).length == 1 ? true : false
end

def valid_phone_number?(phone)
  phone.gsub!(/[[:punct:]]|\s+/, "")
  phone.scan(/(\d{3})+(\d{3})+(\d{4})\z/).length == 1 ? true : false
end
