class Calcul < ApplicationRecord
  has_many :reports

  validates :mail, presence: true
  validates :para1, presence: true
  validates :para2, presence: true
  validates :para3, presence: true
  validates :para4, presence: true
  validates :techno, presence: true, inclusion: { in: %w(tech1 tech2 tech3),
    message: "%{value} is not a valid techno" }

end
