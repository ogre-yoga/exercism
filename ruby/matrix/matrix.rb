class Matrix

  attr_reader :arrays, :rows, :columns

  def initialize(string_of_numbers)
    @arrays = string_of_numbers.split(/[\n]/).map{ |item| item.strip.split(/[^\d]/).map{ |item| item.to_i }}
    @rows = arrays
    @columns = arrays.transpose
  end

end
