require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
	
	let(:bike_container) {ContainerHolder.new}

	it 'should be able to store bikes' do
		expect(bike_container.holder).not_to be_nil
	end

	it 'should be able to dock bikes' do
		bike = double :bike
		bike_container.dock(bike)
		expect(bike_container.holder).to include bike
	end

	it 'should be able to release bikes' do
		bike = double :bike
		bike_container.dock(bike)
		bike_container.release(bike)
		expect(bike_container.holder).not_to include bike
	end

	it 'should know when it is full' do
		20.times {bike_container.dock(:bike)}
		expect(bike_container).to be_full
	end

	it 'should not allow docking of bikes if at capacity' do
		20.times { bike_container.dock(:bike) }
		expect{ bike_container.dock(:bike) }.to raise_error(FullContainer)
	end

	it 'should raise an error if no argument is passed when docking' do
		expect{ bike_container.dock() }.to raise_error(MissingObject)
	end

	it 'should not allow release of bikes if there are no bikes' do
		expect{ bike_container.release(:bike) }.to raise_error(EmptyContainer)
	end
end