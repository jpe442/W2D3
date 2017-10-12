
class Player
  attr_accessor :hand

  def initialize
    @hand = []
    @fold = false
  end

  def receive_card(card)
    hand << card
  end

  def bet
  end

  def fold
  end

  def show_hand
  end
end
