require 'active_record'
class Word < ActiveRecord::Base
  
  before_save :set_base_word

  def anagrams
    Word.find_all_by_base_word(self.get_base_word)
  end
  
  def set_base_word
    self.base_word = get_base_word

  end

  def get_base_word
    word.downcase.split('').sort.join
  end
end

puts Word.new(word: 'dog').anagrams
