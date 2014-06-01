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
		@bike = station.release
	end

	def returns_bike_to(station)
		station.dock
		@bike = nil
	end
end