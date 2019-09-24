class UsersController < ApplicationController
  before_action :set_user

  def show
    puts "testttttttt"
    puts current_user.show_score
    @photo = @user.photo
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # def show

  # end

end
