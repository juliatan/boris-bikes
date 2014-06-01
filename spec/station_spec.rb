require 'station'

describe Station do 

	let(:station) {Station.new(capacity: 10)}

	it 'can set maximum capacity upon initialization' do
		expect(station.capacity).to eq 10
	end

end