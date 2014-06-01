require 'station'

describe Station do 

	let(:station) { Station.new(capacity: 10) }
	let(:van) { Van.new }
	let(:bike) { Bike.new }

	it 'can set maximum capacity upon initialization' do
		expect(station.capacity).to eq 10
	end

	it 'can accept fixed bikes from the van' do
		van.holder << bike
		station.accepts_fixed_bikes_from(van)
		expect(station.holder).to include bike
	end

end