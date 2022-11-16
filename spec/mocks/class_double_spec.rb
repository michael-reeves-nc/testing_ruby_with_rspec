module Deck
  def self.build
    # business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # deck = class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace']) # error: the Deck class does not implement the class method: shuffle
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const
    # as_stubbed_constant is what replaces the Deck inside CardGame

    expect(deck_klass).to receive(:build)

    subject.start

    expect(subject.cards).to eq ['Ace', 'Queen']
  end
end