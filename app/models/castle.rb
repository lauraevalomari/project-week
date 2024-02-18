class Castle < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORIES = ["Manoir", "Hôtel Particulier", "Forteresse", "Pavillon de chasse", "Commanderie", "Palais", "Demeure seigneuriale"]

  validates :category, inclusion: { in: CATEGORIES }
end
