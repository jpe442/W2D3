require 'deck'

describe Deck do
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it "creates 52 cards" do
      expect(deck.stack.length).to eq(52)
    end
  end

  describe "#shuffle" do
    let(:new_deck) { Deck.new }
    it "shuffles the cards in the stack" do
      expect(deck.shuffle).to_not eq(new_deck.stack)
    end
  end
end
