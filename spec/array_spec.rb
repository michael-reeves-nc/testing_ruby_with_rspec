RSpec.describe Array do
  it "holds stuff" do
    expect(subject.length).to eq 0
    subject.push(15)
    expect(subject.length).to eq 1
  end
end