RSpec.describe 'before and after hooks' do
  before(:context) do
    puts "Before context"
  end

  after(:context) do
    puts "After context"
  end

  before(:each) do
    puts "Before example"
  end

  after(:each) do
    puts "After example"
  end

  it 'is just a random example' do
    expect(5 * 4).to eq 20
  end

  it 'is just another random example' do
    expect(3 - 2).to eq 1
  end
end