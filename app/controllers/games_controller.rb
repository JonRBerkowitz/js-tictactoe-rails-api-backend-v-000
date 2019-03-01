class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    state = ["", "", "", "", "", "" ,"", "", ""]
    @game = Game.new(state: state)
    if @game.save
      render json: @game, status: 201
    end
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

end
