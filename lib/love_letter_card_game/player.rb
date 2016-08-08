module LoveLetterCardGame
  class Player

    attr_accessor :game, :current_card

    def initialize(game)
      self.game = game
    end

    def draw
      self.current_card = game.deck.shift
    end

    def out?
    end

    def token_count
    end
  end
end