class Squares

  attr_reader :range

  def initialize(number)
    @range = Array.new(number){ |index| index + 1 }
  end

  def square_of_sum
    range.sum ** 2
  end

  def sum_of_squares
    range.map!{|index| index ** 2}.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
