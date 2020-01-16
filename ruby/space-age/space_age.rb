class SpaceAge

  SECONDS_IN_YEAR = 31557600.freeze

  ORBITAL_PERIOD = { "Mercury" => 0.2408467,
                     "Venus" => 0.61519726,
                     "Earth" =>  1.00,
                     "Mars" => 1.8808158,
                     "Jupiter" => 11.862615,
                     "Saturn" => 29.447498,
                     "Uranus" => 84.016846,
                     "Neptune" => 164.79132 }.freeze

  def initialize(age_in_seconds)
    @earth_years = age_in_seconds/SECONDS_IN_YEAR
  end

  def calculate_age(planet)
    (@earth_years/ORBITAL_PERIOD[planet]).round(2)
  end

  def on_earth
    calculate_age("Earth")
  end

  def on_mercury
    calculate_age("Mercury")
  end

  def on_venus
    calculate_age("Venus")
  end

  def on_mars
    calculate_age("Mars")
  end

  def on_jupiter
    calculate_age("Jupiter")
  end

  def on_saturn
    calculate_age("Saturn")
  end

  def on_uranus
    calculate_age("Uranus")
  end

  def on_neptune
    calculate_age("Neptune")
  end

end

=begin
  
Community solutions

https://exercism.io/tracks/ruby/exercises/space-age/solutions/a8ae3bd7154340c59c64a1d57379bdca

#define_method "metaprogramming"

class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600
  ORBITAL_PERIODS_IN_EARTH_YEARS = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  ORBITAL_PERIODS_IN_EARTH_YEARS.each do |planet, orbital_period|
    define_method('on_' + planet.to_s) do
      seconds.to_f / (EARTH_YEAR_IN_SECONDS * orbital_period)
    end
  end
end
  
end
