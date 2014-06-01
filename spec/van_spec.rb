require 'van'

describe Van do
	
	let(:van) { Van.new(capacity: 6) }
	let(:bike) { Bike.new }
	let(:station) { Station.new }
	let(:garage) { Garage.new }

	it 'can set maximum capacity upon initialization' do
		expect(van.capacity).to eq 6
	end

	it 'can checkout broken bikes from the station' do
		bike1 = Bike.new.break!
		bike2 = Bike.new
		station.dock(bike1)
		station.dock(bike2)
		van.checkout_broken_bikes_from(station)
		expect(van.bike_count).to eq 1
		# other potential tests
		# expect(van.holder).to include bike1, bike2
		# expect(van.holder).not_to include bike3
	end

	it 'can checkout fixed bikes from the garage' do
		garage.holder << bike
		van.checkout_fixed_bikes_from(garage)
		expect(van.holder).to include bike
	end

end