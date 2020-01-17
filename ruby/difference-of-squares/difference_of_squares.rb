class Squares

  attr_reader :range

  def initialize(number)
    @range = Array.new(number){ |index| index + 1 }
  end

  def square_of_sum
    range.sum ** 2
  end

  def sum_of_squares
    range.map{ |index| index ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

=begin

Commnity solutions

https://exercism.io/tracks/ruby/exercises/difference-of-squares/solutions/b9b70506ae8ddb1dea19b505
  
class Squares

  def initialize(n)
    @numbers = 1..n
  end

  def square_of_sums
    @numbers.reduce(:+) ** 2
  end

  def sum_of_squares
    @numbers.reduce { |sum, x| sum + (x * x) }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end

https://exercism.io/tracks/ruby/exercises/difference-of-squares/solutions/c1953961179142ea935d91f79d999bda

class Squares
  VERSION = 2

  def initialize(num)
    @one_to_num = 1.upto num
  end

  def square_of_sum
    @one_to_num.reduce(0, :+) ** 2
  end

  def sum_of_squares
    @one_to_num.map { |n| n ** 2 }.reduce(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

https://exercism.io/tracks/ruby/exercises/difference-of-squares/solutions/e139ed2b282d630c630ee266

class Squares
  attr_reader :max

  def initialize(max)
    @max = max 
  end

  def square_of_sums
    (0..max).inject { |sum, number| sum += number } ** 2
  end

  def sum_of_squares
    (0..max).inject { |sum, number| sum + number**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end

https://exercism.io/tracks/ruby/exercises/difference-of-squares/solutions/d76ef9bc788a4f75a6d6a31fefa2fef6

class Squares
  def initialize(number) 
    @range = (1..number)
  end

  def square_of_sums 
    @range.inject(:+)**2
  end

  def sum_of_squares 
    @range.inject{|sum,x| sum + x**2 }
  end

  def difference 
    square_of_sums - sum_of_squares
  end
end
  
=end
