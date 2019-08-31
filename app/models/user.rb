class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :scores
  has_many :answers

  def show_score
    scores.map(&:value).sum
    # current_user.scores.map {|s| s.value}.sum
  end

  def show_category_score
    scores.categories.map(&:total).sum
  end

  def show_score_breakdown

  end

  def show_category_score_breakdown

  end

  mount_uploader :photo, PhotoUploader
end
