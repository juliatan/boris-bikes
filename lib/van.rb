require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		# self.capacity=(options.fetch(:capacity, capacity))
	end

	def checkout_broken_bikes_from(station)
		station.broken_bikes.each do |broken_bike|
			station.release(broken_bike)
			self.dock(broken_bike)
		end
	end

	def checkout_fixed_bikes_from(garage)
		garage.available_bikes.each do |fixed_bike|
			garage.release(fixed_bike)
			self.dock(fixed_bike)
		end
	end

end