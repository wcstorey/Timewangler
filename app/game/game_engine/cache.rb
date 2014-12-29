module GameEngine
  module Cache
    def self.save_game_state(game)
      Rails.cache.write "#{game.id}#{game.player_one.id}#{game.player_two.id}", game
    end

    def self.fetch_game_state(game_data)
      Rails.cache.read "#{game_data.id}#{game_data.player_one_id}#{game_data.player_two_id}"
    end

    def self.clear_game_state(game_data)
      Rails.cache.delete "#{game_data.id}#{game_data.player_one_id}#{game_data.player_two_id}"
    end
  end
end
