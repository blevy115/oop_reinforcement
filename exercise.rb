class Location
@@locations = []
  def initialize(name)
    @name = name
  end

  def self.create(name)
    location = Location.new(name)
    @@locations << location
  end

  def self.locations
    @@locations
  end

  def name
    @name
  end
end


class Trip

  def initialize
    @destinations = Location.locations
  end

  def add_trip(location)
    @destinations << Location.new(location)
  end

  def travel_summary
    puts "Began trip"
    self.destinations.each_cons(2) do |trip|
      puts "Travelled from #{trip[0].name} to #{trip[1].name}."
    end
  end

  def destinations
    @destinations
  end


end


location1 = Location.create('Toronto')
location2 = Location.create('Montreal')
location3 = Location.create('Vancouver')

trip = Trip.new
trip.add_trip('New York')
trip.travel_summary
