class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :scores
end
