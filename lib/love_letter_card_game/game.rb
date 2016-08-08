module LoveLetterCardGame
  class Game

    attr_accessor :deck

    def initialize(players: 0, deck: [])
      self.players = Array.new(players) {Player.new(self)}
      self.deck = deck
    end

    def get_player(player_number)
      players[player_number-1]
    end

    private

    attr_accessor :players
  end
end