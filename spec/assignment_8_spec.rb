RSpec.describe 'assignment 8' do
  it 'can test for even' do
    expect([10, 20, 30]).to all be_even
  end

  it 'can test all elements are greater than 0' do
    expect([0, 1, 2]).to all be >= 0
  end

  truthy = [
    "hello",
    0,
    -10,
    [],
    99.99,
    :hello,
    true,
    [1, 2, 3]
  ]

  falsy = [false, nil]
end