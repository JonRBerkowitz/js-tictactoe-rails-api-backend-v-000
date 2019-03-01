class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    state = ["", "", "", "", "", "" ,"", "", ""]
    @game = Game.new
  end

end
