class Api::V2::GamesController < ApplicationController

  def show
      @game = Game.find_by(id: params[:id])
    end

    def index
      @games = Game.all
    end

end
