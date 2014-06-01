require_relative 'bike_container'

class Station

	include BikeContainer # gives access to all methods in the module

	# self.capacity is calling the capacity=() method defined in BikeContainer
	# capacity (the second argument) is calling the capacity() method in BikeContainer
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		# same as: self.capacity=(options.fetch(:capacity, capacity))
	end

	def accepts_fixed_bikes_from(van)
		van.available_bikes.each do |fixed_bike|
			van.release(fixed_bike)
			self.holder << fixed_bike
		end
	end

end