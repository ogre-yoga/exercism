class SpaceAge

  # Style: https://rubystyle.guide/#consistent-classes

  # Re: public/private/protected feedback: where is the need to make anything private?

  ORBIT_IN_SECONDS = { 'Mercury' =>    7_600_543.819_92,
                       'Venus'   =>   19_414_149.052_176,
                       'Earth'   =>   31_557_600.0,
                       'Mars'    =>   59_354_032.690_079_994,
                       'Jupiter' =>  374_355_659.124,
                       'Saturn'  =>  929_292_362.884_8,
                       'Uranus'  => 2_651_370_019.329_6,
                       'Neptune' => 5_200_418_560.032_001 }

  attr_reader :age_in_seconds

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  ORBIT_IN_SECONDS.each do |planet, orbital_period|
    define_method('on_' + planet.downcase) do
      age_in_seconds / orbital_period
    end
  end

end
