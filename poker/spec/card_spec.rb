require 'card'

describe Card do
  subject(:card) { Card.new(:diamonds, :Q, 10) }

  describe "#initialize" do
    it "creates a new card with a suit, a kind and a value" do
      expect(card.suit).to eq(:diamonds)
      expect(card.kind).to eq(:Q)
      expect(card.value).to eq(10)
    end

  end
end
