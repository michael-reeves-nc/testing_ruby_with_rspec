class Person
  def a(seconds)
    sleep(seconds)
    return 'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)

      expect(person.a).to eq 'Hello'
    end
  end

  describe 'instance double' do # a type of verifying double
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(Person, a: 'Hello', b: 20) # error :b not defined on Person
      person = instance_double(Person)

      # allow(person).to receive(:a).with(3, 10).and_return('Goodbye') # wrong number of arguments error
      allow(person).to receive(:a).with(3).and_return('Goodbye') # wrong number of arguments error
      
      expect(person.a(3)).to eq 'Goodbye'
      # expect(person.a(2)).to eq 'Goodbye' # received :a with unexpected arguments
    end
  end
end