class Donation < ApplicationRecord
  monetize :price_cents
end
