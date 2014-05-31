require 'bike'

describe Bike do
	
	let(:bike) { Bike.new }

	it 'can be broken' do
		expect(bike.break!).to be_broken
	end

	it 'can be fixed' do
		bike.break!
		expect(bike.fix!).not_to be_broken
	end

	it 'should not be broken when initialised' do
		expect(bike).not_to be_broken
	end
end