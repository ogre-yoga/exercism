class Gigasecond
  def self.from(start_date)
    end_seconds = start_date.to_i + 1000000000 # convert start_date to seconds since epoch, add a gigsecond
    end_date = Time.at(end_seconds) # convert total seconds to time object
    end_date.utc # return object in UTC format as expected by tests
  end
end

=begin

# Community solutions

https://exercism.io/tracks/ruby/exercises/gigasecond/solutions/f3d9aa2a17c741a28a72f3152861fe4c

class Gigasecond
  def self.from(time_of_birth)
    time_of_birth + 1e9
  end
end

https://exercism.io/tracks/ruby/exercises/gigasecond/solutions/5c5976519c53ef3be871d7fc

require 'time'

class Gigasecond
  GIGASECOND = (10**9)

  def initialize(date)
    @time = date.to_time
  end

  def date
    (@time + GIGASECOND).to_date
  end
end


https://exercism.io/tracks/ruby/exercises/gigasecond/solutions/3c2ee4cd3177e6ac32011b82

class Gigasecond
  attr_reader :giga_date
  
  def initialize(date)
    @giga_date = date.to_time
  end

  def date
    (giga_date + 1_000_000_000).to_date
  end
end

=end
