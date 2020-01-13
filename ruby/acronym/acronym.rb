class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-zA-Z]/).map{ |word| word[0] }.join.upcase
  end
end
