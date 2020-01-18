class Matrix

  attr_reader :rows, :columns

  def initialize(string_of_numbers)
    @rows = string_of_numbers.lines.map{ |line|line.split.map(&:to_i) }
    @columns = rows.transpose
  end

end
