class Band < ApplicationRecord
  has_many_attached :photos
  has_many :checkouts, dependent: :destroy
  belongs_to :user
  validates :name, :genre, :members_count, :description, :rate_fee, presence: true
  validates :description, length: {minimum: 20}

  include PgSearch::Model
  pg_search_scope :search_by_something,
  against: [ :name, :description, :genre ],
  using: {
    tsearch: { prefix: true }
  }
end
