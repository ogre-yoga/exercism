class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.color_code(color)
    COLORS.index(color)
  end

end


=begin

REFERENCE
https://ruby-doc.org/core-2.2.0/Array.html#method-i-select

Regarding ResistorColor::COLORS in test

The :: is a unary operator that allows: constants, instance methods and class methods defined within a class or module, to be accessed from anywhere outside the class or module.

COMMUNITY SOLUTIONS

https://exercism.io/tracks/ruby/exercises/resistor-color/solutions/0835fdcfe598423caa3d5f586f2aecd8

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.color_code(color)
    COLORS.index(color)
  end
end

Commentary on %w "word arrays":
https://github.com/rubocop-hq/ruby-style-guide#percent-w

# bad
STATES = ['draft', 'open', 'closed']

# good
STATES = %w[draft open closed]


  
=end
