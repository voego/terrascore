class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :option
  belongs_to :category
end
