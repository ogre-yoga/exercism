class Year
  def self.leap?(year)
    if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
      true
    elsif year % 4 == 0 && year % 100 != 0
      true
    else
      false
    end
  end
end



=begin
  
Community solutions

https://exercism.io/tracks/ruby/exercises/leap/solutions/4e407b11bd6a4a14bd824845d20231b1

class Year
  def self.leap?(number)
    number % 400 == 0 || number % 4 == 0 && number % 100 != 0
  end
end
  


https://exercism.io/tracks/ruby/exercises/leap/solutions/02e81557511cecacd7bd5321

class Year
  def self.leap?(year)
    year % 4 == 0 and year % 100 != 0 or year % 400 == 0
  end
end

https://exercism.io/tracks/ruby/exercises/leap/solutions/33aa935c13f5e7872a45446f

class Year

  def initialize(year)
    @year = year
  end

  def leap?
    fourth_year? unless century? and not fourth_century?
  end

  def fourth_year?
    @year % 4 == 0
  end

  def century?
    @year % 100 == 0
  end

  def fourth_century?
    @year % 400 == 0
  end

end

=end