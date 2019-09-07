class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :scores
  has_many :answers

  def value_create(date)
    answers.where(date: date).map { |a| a.option.weight }.sum
  end

  def show_score

    scores.map(&:value).last

    #if scores.map(&:value).sum
    #   scores.map(&:value).sum
    #else
    #  answers.map { |a| a.option.weight }.sum
    # end
    # current_user.scores.map {|s| s.value}.sum
  end

  def show_travel_category_score
    # answers.where(category_id: category_id).map(&:option).map(&:weight).sum
    scores.map(&:travel_value).last
  end

  def show_home_category_score
    # answers.where(category_id: category_id).map(&:option).map(&:weight).sum
    scores.map(&:home_value).last
  end

  def show_score_breakdown
    scores.map(&:value)
  end

  def show_travel_category_score_breakdown
    # answers.where(category_id: category_id).map(&:option).map(&:weight)
    scores.map(&:travel_value)
  end

  def show_home_category_score_breakdown
    # answers.where(category_id: category_id).map(&:option).map(&:weight)
    scores.map(&:home_value)
  end

  mount_uploader :photo, PhotoUploader
end
