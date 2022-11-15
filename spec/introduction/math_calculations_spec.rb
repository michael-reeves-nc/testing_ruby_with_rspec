RSpec.describe "math calculations" do
  it "does basic math" do
    expect(1 + 1).to eq 2 
    expect(6 - 3).to eq 3
    expect(12 / 3).to eq 4
    expect(3 ** 2).to eq 9
  end
end