class ScoresController < ApplicationController
  before_action :value, :category_value
  # def index
  # end

  # def show
  # end

  def new
    @score = Score.new
  end

  def create
    Score.new(user: current_user, value: value, travel_value: category_value(1), home_value: category_value(2))
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def scores_params
    params.require(:score).permit(:user_id, :value, :travel_value, :home_value)
  end

  def value
    current_user.answers.where(date: Date.today).map { |a| a.option.weight }.sum
  end

  def category_value(category_id)
    current_user.answers.where(date: Date.today).where(category_id: category_id).map { |a| a.option.weight }.sum
  end
end
