class Pangram
  def self.pangram?(sentence)
    downcase.scan(/[a-z]/).uniq.length == 26
  end
end
