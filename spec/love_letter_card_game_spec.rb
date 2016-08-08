require 'spec_helper'

describe LoveLetterCardGame do
  it 'has a version number' do
    expect(LoveLetterCardGame::VERSION).not_to be nil
  end

  it 'is a playable game' do
    deck = [:guard, :princess]
    game = LoveLetterCardGame::Game.new(players: 2, deck: deck)
    player_1 = game.get_player(1)
    player_2 = game.get_player(2)
    player_1.draw
    expect(player_1.current_card).to eq :guard
    expect(game.deck).to eq [:princess]
  end

  it "can setup a new game" do
    game = LoveLetterCardGame::Game.setup(number_of_players: 3)
    deck = game.deck

    expect(deck.size).to eq 15
    expect(game.players.size).to eq 3
  end
end
