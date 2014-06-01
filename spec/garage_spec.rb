require 'garage'

describe Garage do

	let(:garage) { Garage.new(capacity: 25) }
	let(:van) { Van.new }
	let(:bike) { Bike.new }
	
	it 'should be able to set maximum capacity upon initialization' do
		expect(garage.capacity).to eq 25
	end

	it 'should be able to accept broken bikes from van' do
		a = bike.break!
		van.holder << a
		garage.accepts_broken_bikes_from(van)
		expect(garage.bike_count).to eq 1
	end

	it 'should automatically fix broken bikes when accepted by garage' do
		a = bike.break!
		van.holder << a
		garage.accepts_broken_bikes_from(van)
		expect(bike).not_to be_broken
	end

end