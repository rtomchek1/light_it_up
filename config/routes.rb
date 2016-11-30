Rails.application.routes.draw do
  devise_for :users

  get("/", {:controller => "game", :action => "index"})
  get("/leaderboard", {:controller => "game", :action => "leaderboard"})
  get("/new_game", {:controller => "game", :action => "new_game"})
  get("/save_game/:config/:moves", {:controller => "game", :action => "save_game"})
  get("/load_game", {:controller => "game", :action => "load_game"})
  get("/:config/:row/:col/:moves", {:controller => "game", :action => "move"})
  get("/quit_game/:moves/:win", {:controller => "game", :action => "quit_game"})

end
