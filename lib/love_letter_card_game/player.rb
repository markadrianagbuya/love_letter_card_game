module LoveLetterCardGame
  class Player

    attr_accessor :letter_holders

    def initialize
      self.letter_holders = []
    end

    def draw(deck)
      letter_holders << deck.shift
    end

    def out?
    end

    def token_count
    end
  end
end