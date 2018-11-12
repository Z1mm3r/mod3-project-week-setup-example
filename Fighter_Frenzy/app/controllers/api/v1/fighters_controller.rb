class Api::V1::FightersController < ApplicationController
  before_action :find_fighter, only: [:update]
  def index
    @fighters = Fighter.all
    render json: @fighters
  end

  def create
    byebug
    
  end

  def update
    @fighter.update(fighter_params)
    if @fighter.save
      render json: @fighter, status: :accepted
    else
      render json: { errors: @fighter.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def fighter_params
    params.permit(:name, :description)
  end

  def find_fighter
    @fighter = Fighter.find(params[:id])
  end
end
