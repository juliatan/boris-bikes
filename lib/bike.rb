class Bike

	def initialize
		fix!
	end

	def broken?
		@break # instance variable - this is default state to be used everywhere
	end

	def break!
		@break = true
		self
	end

	def fix! # bang method, something dangerous going to happen
		@break = false
		self
	end
end