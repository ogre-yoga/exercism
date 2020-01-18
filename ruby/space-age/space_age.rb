class SpaceAge

  # @kotp Thanks for coaching this class exercise into a supermodel
  # I do think that losing the first constant sweeps a datapoint under the carpet just to clean up method ops
  # The hash has no way to be validated, it needs to be taken "as is"

  ORBIT_PER_EARTH_YEAR_IN_SECONDS = { "Mercury" =>    7600543.81992,
                                      "Venus"   =>   19414149.052176,
                                      "Earth"   =>   31557600.0,
                                      "Mars"    =>   59354032.690079994,
                                      "Jupiter" =>  374355659.124,
                                      "Saturn"  =>  929292362.8848,
                                      "Uranus"  => 2651370019.3296,
                                      "Neptune" => 5200418560.032001 }

  attr_reader :age_in_seconds

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  ORBIT_PER_EARTH_YEAR_IN_SECONDS.each do |planet, orbital_period|
    define_method("on_" + planet.downcase){
      age_in_seconds / orbital_period
    }
  end

end
