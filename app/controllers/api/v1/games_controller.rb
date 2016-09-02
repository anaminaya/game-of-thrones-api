class Api::V1::GamesController < ApplicationController

  def show
      @game = Game.find_by(id: params[:id])
    end

  def index
      @games = Game.all
    end

  def create
    game = Game.new(
      character: params[:character],
      house: params[:house],
      city: params[:city]
      )
      if game.save
        render json: {message: "Character was created successfully"}
      else
        render json:{errors: game.errors.full_messages}
      end
    end
end
