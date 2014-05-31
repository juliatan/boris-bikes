class Bike

	def initialize
		fix!
	end

	def broken?
		@break
	end

	def break!
		@break = true
		self
	end

	def fix!
		@break = false
		self
	end
end