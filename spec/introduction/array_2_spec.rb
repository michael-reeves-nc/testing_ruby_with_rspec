RSpec.describe Array do
  subject(:sally) { ['first', 'second'] }
  
  it 'has two elements' do
    expect(subject.length).to eq 2
    subject.pop
    expect(subject.length).to eq 1
  end
  
  it 'sally has two elements' do
    expect(sally).to eq ['first', 'second']
  end
end
