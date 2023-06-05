class Band < ApplicationRecord
  has_many_attached :photos
  has_many :checkouts
  belongs_to :user
  validates :name, :genre, :members_count, :description, :rate_fee, presence: true
end
