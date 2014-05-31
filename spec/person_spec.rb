require 'person'

describe Person do
	
	let(:person) {Person.new()}

	it 'has no bike as default' do
		expect(person).not_to have_bike
	end

	it 'can have a bike' do
		person = Person.new(:bike)
		expect(person).to have_bike
	end

	it 'should have a bike if he rents it from docking station' do
		station = double :station
		expect(station).to receive(:release_bike).and_return(:bike)
		person.rents_bike_from(station)
		expect(person).to have_bike
	end

	it 'should break bike when he falls' do
		bike = double :bike
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.fall!
	end

	it 'should not have a bike if he returns it to docking station' do
		bike = double :bike
		station = double :station
		person = Person.new(bike)
		expect(station).to receive(:dock_bike)
		person.returns_bike_to(station)
		expect(person).not_to have_bike
	end

end