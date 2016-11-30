class GameController < ApplicationController
  def index
    render("index.html.erb")
  end

  def new_game
    # Some logic to initialize the board
    box_1_1 = rand(0..1)
    box_1_2 = rand(0..1)
    box_1_3 = rand(0..1)
    box_1_4 = rand(0..1)
    box_2_1 = rand(0..1)
    box_2_2 = rand(0..1)
    box_2_3 = rand(0..1)
    box_2_4 = rand(0..1)
    box_3_1 = rand(0..1)
    box_3_2 = rand(0..1)
    box_3_3 = rand(0..1)
    box_3_4 = rand(0..1)
    box_4_1 = rand(0..1)
    box_4_2 = rand(0..1)
    box_4_3 = rand(0..1)
    box_4_4 = rand(0..1)

    @config = box_1_1.to_s + box_1_2.to_s + box_1_3.to_s + box_1_4.to_s + box_2_1.to_s + box_2_2.to_s + box_2_3.to_s + box_2_4.to_s + box_3_1.to_s + box_3_2.to_s + box_3_3.to_s + box_3_4.to_s + box_4_1.to_s + box_4_2.to_s + box_4_3.to_s + box_4_4.to_s

    if box_1_1 == 0
      @box_1_1 = "default"
    else
      @box_1_1 = "success"
    end

    if box_1_2 == 0
      @box_1_2 = "default"
    else
      @box_1_2 = "success"
    end

    if box_1_3 == 0
      @box_1_3 = "default"
    else
      @box_1_3 = "success"
    end

    if box_1_4 == 0
      @box_1_4 = "default"
    else
      @box_1_4 = "success"
    end

    if box_2_1 == 0
      @box_2_1 = "default"
    else
      @box_2_1 = "success"
    end

    if box_2_2 == 0
      @box_2_2 = "default"
    else
      @box_2_2 = "success"
    end

    if box_2_3 == 0
      @box_2_3 = "default"
    else
      @box_2_3 = "success"
    end

    if box_2_4 == 0
      @box_2_4 = "default"
    else
      @box_2_4 = "success"
    end

    if box_3_1 == 0
      @box_3_1 = "default"
    else
      @box_3_1 = "success"
    end

    if box_3_2 == 0
      @box_3_2 = "default"
    else
      @box_3_2 = "success"
    end

    if box_3_3 == 0
      @box_3_3 = "default"
    else
      @box_3_3 = "success"
    end

    if box_3_4 == 0
      @box_3_4 = "default"
    else
      @box_3_4 = "success"
    end

    if box_4_1 == 0
      @box_4_1 = "default"
    else
      @box_4_1 = "success"
    end

    if box_4_2 == 0
      @box_4_2 = "default"
    else
      @box_4_2 = "success"
    end

    if box_4_3 == 0
      @box_4_3 = "default"
    else
      @box_4_3 = "success"
    end

    if box_4_4 == 0
      @box_4_4 = "default"
    else
      @box_4_4 = "success"
    end

    @moves = 0
    @win = 0
    ####################################

    render("game_board")
  end

  def move
    config = params[:config].to_s
    row = params[:row].to_i
    col = params[:col].to_i
    @moves = params[:moves].to_i + 1

    box_1_1 = config[0].to_i
    box_1_2 = config[1].to_i
    box_1_3 = config[2].to_i
    box_1_4 = config[3].to_i
    box_2_1 = config[4].to_i
    box_2_2 = config[5].to_i
    box_2_3 = config[6].to_i
    box_2_4 = config[7].to_i
    box_3_1 = config[8].to_i
    box_3_2 = config[9].to_i
    box_3_3 = config[10].to_i
    box_3_4 = config[11].to_i
    box_4_1 = config[12].to_i
    box_4_2 = config[13].to_i
    box_4_3 = config[14].to_i
    box_4_4 = config[15].to_i

    if row == 1
      if col == 1
        box_1_1 = 1 - box_1_1
        box_1_2 = 1 - box_1_2
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
      elsif col == 2
        box_1_1 = 1 - box_1_1
        box_1_2 = 1 - box_1_2
        box_1_3 = 1 - box_1_3
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
      elsif col == 3
        box_1_2 = 1 - box_1_2
        box_1_3 = 1 - box_1_3
        box_1_4 = 1 - box_1_4
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
      else
        box_1_3 = 1 - box_1_3
        box_1_4 = 1 - box_1_4
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
      end
    elsif row == 2
      if col == 1
        box_1_1 = 1 - box_1_1
        box_1_2 = 1 - box_1_2
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
      elsif col == 2
        box_1_1 = 1 - box_1_1
        box_1_2 = 1 - box_1_2
        box_1_3 = 1 - box_1_3
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
      elsif col == 3
        box_1_2 = 1 - box_1_2
        box_1_3 = 1 - box_1_3
        box_1_4 = 1 - box_1_4
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
      else
        box_1_3 = 1 - box_1_3
        box_1_4 = 1 - box_1_4
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
      end
    elsif row == 3
      if col == 1
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
        box_4_1 = 1 - box_4_1
        box_4_2 = 1 - box_4_2
      elsif col == 2
        box_2_1 = 1 - box_2_1
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
        box_4_1 = 1 - box_4_1
        box_4_2 = 1 - box_4_2
        box_4_3 = 1 - box_4_3
      elsif col == 3
        box_2_2 = 1 - box_2_2
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
        box_4_2 = 1 - box_4_2
        box_4_3 = 1 - box_4_3
        box_4_4 = 1 - box_4_4
      else
        box_2_3 = 1 - box_2_3
        box_2_4 = 1 - box_2_4
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
        box_4_3 = 1 - box_4_3
        box_4_4 = 1 - box_4_4
      end
    else
      if col == 1
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
        box_4_1 = 1 - box_4_1
        box_4_2 = 1 - box_4_2
      elsif col == 2
        box_3_1 = 1 - box_3_1
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
        box_4_1 = 1 - box_4_1
        box_4_2 = 1 - box_4_2
        box_4_3 = 1 - box_4_3
      elsif col == 3
        box_3_2 = 1 - box_3_2
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
        box_4_2 = 1 - box_4_2
        box_4_3 = 1 - box_4_3
        box_4_4 = 1 - box_4_4
      else
        box_3_3 = 1 - box_3_3
        box_3_4 = 1 - box_3_4
        box_4_3 = 1 - box_4_3
        box_4_4 = 1 - box_4_4
      end
    end

    @config = box_1_1.to_s + box_1_2.to_s + box_1_3.to_s + box_1_4.to_s + box_2_1.to_s + box_2_2.to_s + box_2_3.to_s + box_2_4.to_s + box_3_1.to_s + box_3_2.to_s + box_3_3.to_s + box_3_4.to_s + box_4_1.to_s + box_4_2.to_s + box_4_3.to_s + box_4_4.to_s

    if box_1_1 == 0
      @box_1_1 = "default"
    else
      @box_1_1 = "success"
    end

    if box_1_2 == 0
      @box_1_2 = "default"
    else
      @box_1_2 = "success"
    end

    if box_1_3 == 0
      @box_1_3 = "default"
    else
      @box_1_3 = "success"
    end

    if box_1_4 == 0
      @box_1_4 = "default"
    else
      @box_1_4 = "success"
    end

    if box_2_1 == 0
      @box_2_1 = "default"
    else
      @box_2_1 = "success"
    end

    if box_2_2 == 0
      @box_2_2 = "default"
    else
      @box_2_2 = "success"
    end

    if box_2_3 == 0
      @box_2_3 = "default"
    else
      @box_2_3 = "success"
    end

    if box_2_4 == 0
      @box_2_4 = "default"
    else
      @box_2_4 = "success"
    end

    if box_3_1 == 0
      @box_3_1 = "default"
    else
      @box_3_1 = "success"
    end

    if box_3_2 == 0
      @box_3_2 = "default"
    else
      @box_3_2 = "success"
    end

    if box_3_3 == 0
      @box_3_3 = "default"
    else
      @box_3_3 = "success"
    end

    if box_3_4 == 0
      @box_3_4 = "default"
    else
      @box_3_4 = "success"
    end

    if box_4_1 == 0
      @box_4_1 = "default"
    else
      @box_4_1 = "success"
    end

    if box_4_2 == 0
      @box_4_2 = "default"
    else
      @box_4_2 = "success"
    end

    if box_4_3 == 0
      @box_4_3 = "default"
    else
      @box_4_3 = "success"
    end

    if box_4_4 == 0
      @box_4_4 = "default"
    else
      @box_4_4 = "success"
    end

    # Check to see if the player won the game
    if @config == "1111111111111111" || @config == "0000000000000000"
      @win = 1

      game = Game.new
      game.user_id = current_user.id
      game.win = 1
      game.num_moves = @moves
      game.save
    else
      @win = 0
    end

    render("game_board")
  end

  def quit_game
    if params[:win].to_i == 0
      game = Game.new
      game.user_id = current_user.id
      game.win = 0
      game.num_moves = params[:moves].to_i
      game.save
    end
    render("index")
  end
  
  def save_game
    # Check to see if the user already has a saved game
    if Save.find_by(:user_id => current_user.id) != nil
      game = Save.find_by(:user_id => current_user.id)
    else
      game = Save.new
    end
    
    game.user_id = current_user.id
    game.config = params[:config]
    game.num_moves = params[:moves]
    game.save
    
    render("index")
  end
  
  def load_game
    config = Save.find_by(:user_id => current_user.id).config
    @moves = Save.find_by(:user_id => current_user.id).num_moves
    @win = 0
    
    box_1_1 = config[0].to_i
    box_1_2 = config[1].to_i
    box_1_3 = config[2].to_i
    box_1_4 = config[3].to_i
    box_2_1 = config[4].to_i
    box_2_2 = config[5].to_i
    box_2_3 = config[6].to_i
    box_2_4 = config[7].to_i
    box_3_1 = config[8].to_i
    box_3_2 = config[9].to_i
    box_3_3 = config[10].to_i
    box_3_4 = config[11].to_i
    box_4_1 = config[12].to_i
    box_4_2 = config[13].to_i
    box_4_3 = config[14].to_i
    box_4_4 = config[15].to_i
    
    @config = box_1_1.to_s + box_1_2.to_s + box_1_3.to_s + box_1_4.to_s + box_2_1.to_s + box_2_2.to_s + box_2_3.to_s + box_2_4.to_s + box_3_1.to_s + box_3_2.to_s + box_3_3.to_s + box_3_4.to_s + box_4_1.to_s + box_4_2.to_s + box_4_3.to_s + box_4_4.to_s

    if box_1_1 == 0
      @box_1_1 = "default"
    else
      @box_1_1 = "success"
    end

    if box_1_2 == 0
      @box_1_2 = "default"
    else
      @box_1_2 = "success"
    end

    if box_1_3 == 0
      @box_1_3 = "default"
    else
      @box_1_3 = "success"
    end

    if box_1_4 == 0
      @box_1_4 = "default"
    else
      @box_1_4 = "success"
    end

    if box_2_1 == 0
      @box_2_1 = "default"
    else
      @box_2_1 = "success"
    end

    if box_2_2 == 0
      @box_2_2 = "default"
    else
      @box_2_2 = "success"
    end

    if box_2_3 == 0
      @box_2_3 = "default"
    else
      @box_2_3 = "success"
    end

    if box_2_4 == 0
      @box_2_4 = "default"
    else
      @box_2_4 = "success"
    end

    if box_3_1 == 0
      @box_3_1 = "default"
    else
      @box_3_1 = "success"
    end

    if box_3_2 == 0
      @box_3_2 = "default"
    else
      @box_3_2 = "success"
    end

    if box_3_3 == 0
      @box_3_3 = "default"
    else
      @box_3_3 = "success"
    end

    if box_3_4 == 0
      @box_3_4 = "default"
    else
      @box_3_4 = "success"
    end

    if box_4_1 == 0
      @box_4_1 = "default"
    else
      @box_4_1 = "success"
    end

    if box_4_2 == 0
      @box_4_2 = "default"
    else
      @box_4_2 = "success"
    end

    if box_4_3 == 0
      @box_4_3 = "default"
    else
      @box_4_3 = "success"
    end

    if box_4_4 == 0
      @box_4_4 = "default"
    else
      @box_4_4 = "success"
    end
    
    render("game_board")
  end

  def leaderboard
    @leaderboard = Game.where(:win => 1).sort do |a,b|
      a.num_moves <=> b.num_moves
    end

    @user_leaderboard = Game.where(:win => 1, :user_id => current_user.id).sort do |a,b|
      a.num_moves <=> b.num_moves
    end

    @user_games_all = Game.where(:user_id => current_user.id)
  end
end
