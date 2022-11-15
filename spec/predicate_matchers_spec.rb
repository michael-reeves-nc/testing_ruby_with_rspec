# puts 0.zero?    #true
# puts 16.zero?   #false
#
# puts 2.even?    #true
# puts 3.even?    #false
#
# puts 11.odd?    #true
# puts 16.odd?    #false
#
# puts [].empty?  #true
# puts [1].empty? #false

RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2

    expect(result.even?).to eq true
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect(15 / 2).not_to be_even

    expect(15).to be_odd

    expect(0).to be_zero

    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end