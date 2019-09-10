class Score < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # def score_options
  #   current_user = current_user
  #   date = Datetime.today
  #   value = current_user.answers.where(date: Date.today).map { |a| a.option.weight }.sum
  #   travel = current_user.answers.where(date: Date.today).where(category_id: 1).map { |a| a.option.weight }.sum
  #   home = current_user.answers.where(date: Date.today).where(category_id: 2).map { |a| a.option.weight }.sum
  #   Score.new(user: current_user, value: value, travel_value: travel, home_value: home, date: date)
  #   Score.save!
  #   # Score.create(user: current_user, value: overall, travel_value: travel_value, home_value: home_value)
  # end
end
