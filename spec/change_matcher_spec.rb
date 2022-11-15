RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    expect { subject.push(5) }.to change { subject.length }.by(1)
    # any valid Ruby can go inside the blocks

    expect { subject.push(6) }.to change(subject, :length)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.from(4).to(3)
    expect { subject.pop }.to change { subject.length }.by -1
  end
end