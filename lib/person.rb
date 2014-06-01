class Person

	def initialize(bike = nil)
		@bike = bike
	end

	def has_bike?
		@bike != nil
	end

	def fall!
		@bike.break!
	end

	def rents_bike_from(station)
		raise GreedyPerson.new if self.has_bike?
		@bike = station.release(station.available_bikes.first)
	end

	def returns_bike_to(station)
		station.dock(@bike)
		@bike = nil
	end
end