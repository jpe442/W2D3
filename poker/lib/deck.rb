require 'card'

class Deck

  attr_accessor :stack

  SUITS = [:diamonds, :hearts, :spades, :clubs]
  KINDS_VALUES = {
    A: [1, 11],
    K: 10,
    Q: 10,
    J: 10,
    ten: 10,
    nine: 9,
    eight: 8,
    seven: 7,
    six: 6,
    five: 5,
    four: 4,
    three: 3,
    two: 2
  }

  def initialize
    @stack = []
    SUITS.each do |suit|
      KINDS_VALUES.each do |kind, value|
        stack << Card.new(suit, kind, value)
      end
    end
  end

  def shuffle
    @stack.shuffle!
  end
end
