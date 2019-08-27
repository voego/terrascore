class Question < ApplicationRecord
  belongs_to :category
  has_many :options, dependent: :destroy
end
