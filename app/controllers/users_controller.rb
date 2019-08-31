class UsersController < ApplicationController
  before_action :set_user

  def show_score
    current_user.scores.map(&:value).sum
    # current_user.scores.map {|s| s.value}.sum
  end

  def show_category_score
    current_user.scores.categories.map(&:total).sum
  end

  def show_score_breakdown

  end

  def show_category_score_breakdown

  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
