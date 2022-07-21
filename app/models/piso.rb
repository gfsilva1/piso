class Piso < ApplicationRecord
  has_one_attached :photo
  validates :photo, presence: true
  include PgSearch::Model
  pg_search_scope :busca_piso,
    against: [ :nome ],
    using: {
      tsearch: { prefix: true }
    }
end
