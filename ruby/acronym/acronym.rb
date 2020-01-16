class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-zA-Z]/).map{ |word| word[0] }.join.upcase
  end
end
<<<<<<< HEAD
=======

=begin
  
Community solutions

"ROBUST CODE" example: https://exercism.io/tracks/ruby/exercises/acronym/solutions/a35ce4d43bb746bebb863228a746a0e9

"Use of lambdas": https://exercism.io/tracks/ruby/exercises/acronym/solutions/8d7465d1db7e48ddaf32a960b5303fc0

module Acronym
  VERSION        = 1
  WORD_SEPARATOR = /[ -]|[a-z](?=[A-Z])/
  FIRST_LETTER   = ->(word) { word[0] }

  module_function

  def abbreviate(term)
    term.split(WORD_SEPARATOR).map(&FIRST_LETTER).join.upcase
  end
end

https://exercism.io/tracks/ruby/exercises/acronym/solutions/027084abed9e4b9f90c65cba17c1637f

Reference: https://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/

map is calling chr on each item

module Acronym
  def self.abbreviate(expression)
    expression.split(/ |-/).map(&:chr).join.upcase
  end
end
  
=end
>>>>>>> origin
