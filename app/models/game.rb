class Game < ActiveRecord::Base
  belongs_to :user
  scope :winning_games, -> {where(:win => 1)}
  scope :losing_games, -> {where(:win => 0)}
end
