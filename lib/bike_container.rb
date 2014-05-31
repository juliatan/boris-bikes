module BikeContainer

	DEFAULT_CAPACITY = 20

	# def initialize(options = {})
	# 	self.capacity = options.fetch(:capacity, capacity)
	# 	# same as: capacity=(options.fetch(:capacty, capacity))
	# end

	def holder
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def full?
		holder.count == capacity
	end

	def dock(bike)
		holder << bike
	end

	def release(bike)
		holder.delete(bike)
	end
end