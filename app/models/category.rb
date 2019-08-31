class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :scores
  has_many :answers, dependent: :destroy
end
