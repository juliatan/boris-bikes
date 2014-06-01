class GreedyPerson < RuntimeError
	def initialize(message = "Person already has a bike!")
		super
	end
end	

class FullContainer < RuntimeError
	def initialize(message = "No more space, at capacity")
		super
	end
end

class MissingObject < ArgumentError
	def initialize(message = "Empty argument. You need to dock a bike!")
		super
	end
end

class EmptyContainer < ArgumentError
	def initialize(message = "There are no bikes, sorry!")
		super
	end
end