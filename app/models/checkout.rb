class Checkout < ApplicationRecord
  belongs_to :users
  belongs_to :bands
end
