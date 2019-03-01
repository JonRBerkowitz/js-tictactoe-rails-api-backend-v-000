class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    state = ["", "", "", "", "", "" ,"", "", ""]
    @game = Game.new(state: state)
    if @game.save
      render json: @game, status: 201
    end
  end

end
