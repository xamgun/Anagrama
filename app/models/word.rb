class Word < ActiveRecord::Base
  

  validate :verifica_anagrama
  validates_presence_of :word1, :word2 
  validates_uniqueness_of :word1, :word2
  
  private
  def verifica_anagrama
    errors.add(:word, "Não é um anagrama") unless word1.downcase.chars.sort == word2.downcase.chars.sort && word1 != word2 && word1.length == word1.length
  end
  

end
