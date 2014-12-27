module GameEngine
  GAME_RULES = { starting_points: 30, hand_size: 6 }

  class Game
    attr_reader :id, :player_one, :player_two

    def initialize(game_data)
      @id = game_data.id
      @player_one = GameEngine::Player.new(game_data.player_one)
      @player_two = GameEngine::Player.new(game_data.player_two)
    end

    def deal_cards
      until player_one_hand.size == GAME_RULES[:hand_size]
        player_one_hand << player_one_deck.list.pop
      end

      until player_two_hand.size == GAME_RULES[:hand_size]
        player_two_hand << player_two_deck.list.pop
      end
    end


  end
end
