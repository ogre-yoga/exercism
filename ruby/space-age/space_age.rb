class SpaceAge
  #immutable constant until earth's orbit changes (once every 100,000 years or so)
  SECONDS_IN_EARTH_YEAR = 31557600.freeze

  #mutable constant hash for extensibility by intergalactic students
  ORBITS_IN_EARTH_YEARS = { "Mercury" => 0.2408467,
                            "Venus" => 0.61519726,
                            "Earth" =>  1.00,
                            "Mars" => 1.8808158,
                            "Jupiter" => 11.862615,
                            "Saturn" => 29.447498,
                            "Uranus" => 84.016846,
                            "Neptune" => 164.79132 }

  attr_reader :age_in_earth_years

  def initialize(age_in_seconds)
    @age_in_earth_years = age_in_seconds.to_f / SECONDS_IN_EARTH_YEAR

    ORBITS_IN_EARTH_YEARS.each do |planet, orbital_period|
      self.class.send(:define_method, "on_" + planet.downcase){
        age_in_earth_years / orbital_period
      }
    end
  end

end
