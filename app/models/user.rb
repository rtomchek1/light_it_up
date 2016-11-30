class User < ActiveRecord::Base
  belongs_to :save_game, :class_name => "Save", :foreign_key => "user_id"
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
