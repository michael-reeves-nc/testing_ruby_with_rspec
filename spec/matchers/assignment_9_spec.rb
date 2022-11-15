RSpec.describe 'assignment 9' do
  it "checks start_with and end_with" do
    expect('firetruck').to start_with('fire').and end_with('truck')
  end
  
  it "is even and responds to times" do
    expect(20).to be_even.and respond_to :times
  end
  
  it 'includes 42 adn starts with 4, 8, 15' do
    expect([4,8,15,16,23,42]).to include(42).and start_with 4, 8, 15
  end
end