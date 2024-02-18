class Castle < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORIES = ["Manoir", "Palais", "Forteresse", "Hôtel Particulier", "Pavillon de chasse", "Commanderie", "Demeure seigneuriale"]

  validates :category, inclusion: { in: CATEGORIES }
end
