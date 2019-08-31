class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :scores
  has_many :answers

  def show_score

    scores.map(&:value).sum
    #if scores.map(&:value).sum
    #   scores.map(&:value).sum
    #else
    #  answers.map { |a| a.option.weight }.sum
    # end
    # current_user.scores.map {|s| s.value}.sum
  end

  def show_category_score(category_id)
    answers.where(category_id: category_id).map(&:option).map(&:weight).sum
  end

  def show_score_breakdown

  end

  def show_category_score_breakdown

  end

  mount_uploader :photo, PhotoUploader
end
