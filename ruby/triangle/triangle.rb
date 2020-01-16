class Triangle

  attr_reader :sides, :unique_sides

  def initialize(sides)
    @sides = sides.sort.reverse
    @unique_sides = sides.uniq.length
  end

  def triangle?
    sides.map{ |side| side > 0 }.all? and sides[0] < sides[1] + sides[2]
  end

  def equilateral?
    triangle? and unique_sides == 1
  end

  def isosceles?
    triangle? and unique_sides <= 2
  end

  def scalene?
    triangle? and unique_sides == 3
  end

  def degenerate?
    triangle? and unique_sides == 2 and sides[0] == sides[1] + sides[2]
  end

end
