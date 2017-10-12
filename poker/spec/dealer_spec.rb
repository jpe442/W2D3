require 'dealer'

describe Dealer do
  let(:deck) { Deck.new }
  let(:player) { double("player1") }

  subject(:dealer) { Dealer.new(deck, player) }

  describe "#initialize" do
    it "receives a new deck" do
      expect(dealer.deck.stack.length).to eq(52)
    end
  end

  describe "#deal_one" do
    it "deals one card to a player" do
      expect(player).to receive(:receive_card).with(deck.stack.last)
      dealer.deal_one(player)
    end
  end

  describe "#deal_hand" do
    it "deals five cards to each player" do
      allow(player).to receive(:receive_card)
      dealer.deal_hand
      expect(dealer.deck.stack.length).to eq(52 - dealer.players.length * 5)
    end

  end
end
