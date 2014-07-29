
describe 'Point' do

it 'should return one point if i create a point' do
	expect(Point.new(0,0,'').point_coord).to eq([0,0])
end

it 'should return two points if I create two points' do
	expect(Point.new([0,0], [1,1], '').point_coord).to eq([[0,0], [1,1]])
end

it 'should return distance 0 if I create two points with 0,0' do
	@point= Point.new([0,0], [0,0], '')
	expect(@point.calculate_distance).to eq(0)
end

it 'should return distance  if I create two points with distances whose no zero(round to max)' do
	@point= Point.new([1,1], [9,9], '')
	expect(@point.calculate_distance).to eq(11)
end

it 'should return distance  if I create two points with distances whose no zero(round to min)' do
	@point= Point.new([1,1], [10,10], '')
	expect(@point.calculate_distance).to eq(13)
end

xit 'should return 0 if I give bike' do
	@point= Point.new([1,1], [10,10], 'bike')
	expect(@point.transport_type).to eq('bike')
end

it 'should return the same price-distance if I give bike' do
	@point = Point.new([1,1])
end

end

