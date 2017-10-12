require 'deck'

class Dealer
  attr_accessor :deck
  attr_reader :players
  def initialize(deck, *players)
    @deck = deck
    @players = players
  end

  def deal_one(player)
    player.receive_card(@deck.stack.pop)
  end

  def deal_hand
    5.times do
      @players.each do |player|
        player.receive_card(@deck.stack.pop)
      end
    end
  end

end
