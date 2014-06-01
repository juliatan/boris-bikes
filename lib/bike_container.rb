module BikeContainer

	DEFAULT_CAPACITY = 20

	def holder
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	# accessor method
	def capacity=(value)
		@capacity = value
	end

	def bike_count
		holder.count
	end

	def full?
		bike_count == capacity
	end

	def broken_bikes
		holder.select do |bike|
			bike.broken?
		end
	end

	def available_bikes
		holder.select do |bike|
			!bike.broken?
		end
	end

	def dock(bike = nil)
		raise MissingObject.new if bike.nil? # note: this is an ArgumentError, which needs to come first
		raise FullContainer.new if full?
		holder << bike
	end

	def release(bike = nil)
		raise EmptyContainer.new if holder.empty?
		holder.delete(bike)
	end
end