class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :scores
  has_many :answers
  has_many :orders
  mount_uploader :photo, PhotoUploader

  def value_create(date)
    answers.where(date: date).map { |a| a.option.weight }.sum
  end

  def travel_value_create(date)
    answers.where(date: date).where(category_id: 1).map { |a| a.option.weight }.sum
  end

  def home_value_create(date)
    answers.where(date: date).where(category_id: 2).map { |a| a.option.weight }.sum
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

  def show_consumption_category_score
    # answers.where(category_id: category_id).map(&:option).map(&:weight).sum
    scores.map(&:consumption_value).last
  end

  def show_score_breakdown
    scores.map(&:value)
  end

  def score_object
    score = Score.last
    @score_total = { travel: score.travel_value, home: score.home_value, consumption: score.consumption_value }
  end

  def score_history_object
    @score_historicals = scores.map { |score|
      {
        y: score.value,
        x: score.date
      }
    }
  end

  def score_travel_history_object
    @score_travel_historicals = scores.map { |score|
      {
        y: score.travel_value,
        x: score.date
      }
    }
  end

  def score_home_history_object
    @score_home_historicals = scores.map { |score|
      {
        y: score.home_value,
        x: score.date
      }
    }
  end

  def score_consumption_history_object
    @score_consumption_historicals = scores.map { |score|
      {
        y: score.consumption_value,
        x: score.date
      }
    }
  end

  def show_travel_category_score_breakdown
    # answers.where(category_id: category_id).map(&:option).map(&:weight)
    scores.map(&:travel_value)
  end

  def show_home_category_score_breakdown
    # answers.where(category_id: category_id).map(&:option).map(&:weight)
    scores.map(&:home_value)
  end

  def show_consumption_category_score_breakdown
    # answers.where(category_id: category_id).map(&:option).map(&:weight)
    scores.map(&:consumption_value)
  end


end
