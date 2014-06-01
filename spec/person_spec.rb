require 'person'
require 'errors'

describe Person do
	
	let(:person) {Person.new}
	let(:station) {Station.new}

	it 'has no bike as default' do
		expect(person).not_to have_bike
	end

	it 'can have a bike' do
		person = Person.new(:bike)
		expect(person).to have_bike
	end

	it 'should have a bike if he rents it from docking station' do
		expect(station).to receive(:release).and_return(:bike)
		person.rents_bike_from(station)
		expect(person).to have_bike
	end

	it 'should only be able to rent fixed bikes' do
		bike = double :bike, broken?: true
		station.holder << bike
		person.rents_bike_from(station)
		expect(person).not_to have_bike
	end

	it 'can only have one bike' do
		bike = double :bike, broken?: false
		bike2 = double :bike2, broken?: false
		station.dock(bike)
		station.dock(bike2)
		person.rents_bike_from(station)
		expect{person.rents_bike_from(station)}.to raise_error(GreedyPerson)
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
		expect(station).to receive(:dock)
		person.returns_bike_to(station)
		expect(person).not_to have_bike
	end

end