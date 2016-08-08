require 'spec_helper'

describe LoveLetterCardGame do
  it 'has a version number' do
    expect(LoveLetterCardGame::VERSION).not_to be nil
  end

  # it 'is a playable game' do
  #   deck = [:guard, :princess]
  #   player_1 = Player.new
  #   player_2 = game.get_player(2)
  #   game = LoveLetterCardGame::Game.new(players: [, deck: deck)
  #   player_1.draw
  #   expect(player_1.current_card).to eq :guard
  #   expect(game.deck).to eq [:princess]
  # end

  # it "can setup a new game" do
  #   game = LoveLetterCardGame::Game.setup(number_of_players: 3)
  #   deck = game.deck

  #   expect(deck.size).to eq 15
  #   expect(game.players.size).to eq 3
  # end

  # it "is ended when the deck is empty" do
  #   game = LoveLetterCardGame::Game.new(players: 2, deck: [])
  #   expect(round.ended?).to eq true
  # end

  # it "is ended when all but one players are out" do
  #   players = [instance_double(LoveLetterCardGame::Player, out?: true), instance_double(LoveLetterCardGame::Player, out?: false)]
  #   round = LoveLetterCardGame::Game.new(players: players, deck: [:guard])
  #   expect(round.ended?).to eq true
  # end

  # it "is ended when all but one players are out" do
  #   game = LoveLetterCardGame::Game.build(ThreePlayerGame.new)
  #   game.ended?
  #   game.winner
  # end
end
