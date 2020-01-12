class ResistorColorDuo

  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(band_colors)
    band_colors.map{|color| COLORS.index(color)}.first(2).join.to_i
  end

end

=begin
  
Mentor minor feedback on solution approval:

- freeze the CONST to ensure object can't be modified: https://ruby-doc.org/core-2.3.1/Object.html#method-i-freeze
- use first(2) instead of slice(0,2): https://ruby-doc.org/core-2.7.0/Array.html#method-i-first

COMMUNITY SOLUTIONS

https://exercism.io/tracks/ruby/exercises/resistor-color-duo/solutions/8901f6e3f6bd4c12866933a2daf8b419

module ResistorColorDuo
  COLOR_TO_VALUE = { "black"=> "0", 
             "brown"=> "1", 
             "red"=> "2", 
             "orange"=> "3", 
             "yellow"=> "4", 
             "green"=> "5", 
             "blue"=> "6", 
             "violet"=> "7", 
             "grey"=> "8", 
             "white"=> "9" }
  
  def self.value(colors)
    COLOR_TO_VALUE.fetch_values(*colors).join.to_i
  end
end
  
end