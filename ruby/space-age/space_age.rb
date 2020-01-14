class SpaceAge

  SECONDS_IN_YEAR = 31557600.freeze

  ORBITAL_PERIOD = { "Mercury" => 0.2408467,
                     "Venus" => 0.61519726,
                     "Earth" =>  1,
                     "Mars" => 1.8808158,
                     "Jupiter" => 11.862615,
                     "Saturn" => 29.447498,
                     "Uranus" => 84.016846,
                     "Neptune" => 164.79132 }.freeze

  def initialize(age_in_seconds)
    @seconds = seconds
  end

  def calculateAge(planet)
    # ( @seconds / SECONDS_IN_YEAR ) * ORBITAL_PERIOD["Earth"] * shortern to 2 decimal places
  end

  def on_earth
    calculate
  end

  def on_mercury

  end

  def on_venus

  end

  def on_mars

  end

  def on_jupiter

  end

  def on_saturn

  end

  def on_uranus

  end

  def on_neptune

  end

end

=begin
  - Earth: orbital period 365.25 Earth days, or 31557600 seconds
   - Mercury: orbital period 0.2408467 Earth years
   - Venus: orbital period 0.61519726 Earth years
   - Mars: orbital period 1.8808158 Earth years
   - Jupiter: orbital period 11.862615 Earth years
   - Saturn: orbital period 29.447498 Earth years
   - Uranus: orbital period 84.016846 Earth years
   - Neptune: orbital period 164.79132 Earth years

  So if you were told someone were 1,000,000,000 seconds old, you should
  be able to say that they're 31.69 Earth-years old.
=end
