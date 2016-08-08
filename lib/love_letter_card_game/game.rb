module LoveLetterCardGame
  class Game

    attr_accessor :deck, :players

    def self.setup(number_of_players: 0)
      deck = Deck.full_deck
      deck.delete_at(rand(deck.size))
      self.new(players: number_of_players, deck: deck)
    end

    def initialize(players: 0, deck: [])
      self.players = Array.new(players) {Player.new(self)}
      self.deck = deck
    end

    def get_player(player_number)
      players[player_number-1]
    end

  end
end