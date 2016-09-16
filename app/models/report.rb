class Report < ApplicationRecord
  belongs_to :calcul
  validates :calcul_id, presence: true
end
