class UsersController < ApplicationController

  def show_score
    current_user.scores.map(&:value).sum
   # current_user.scores.map {|s| s.value}.sum
  end


end
