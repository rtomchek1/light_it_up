class User < ActiveRecord::Base
  has_one :save_game, :class_name => "Save", :foreign_key => "user_id"
  has_many :games
  has_many :games_won, -> {winning_games}, :class_name => "Game", :foreign_key => "user_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
