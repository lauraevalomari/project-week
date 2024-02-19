class Castle < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many_attached :pictures

  CATEGORIES = [
    "Manoir",
    "Château grandiose",
    "Palais",
    "Forteresse",
    "Hôtel Particulier",
    "Pavillon de chasse",
    "Commanderie",
    "Demeure seigneuriale"
  ]

  SPECIAL_FEATURES = [
    "Arrivée en Carrosse",
    "Manoir Hanté",
    "Petit-Déjeuner de Prince ou de Princesse",
    "Chambre Royale",
    "Dîner gastronomique",
    "Visite de château",
    "Verre de bienvenue"
  ]

  validates :category, inclusion: { in: CATEGORIES }
  validates :special_feature, inclusion: { in: SPECIAL_FEATURES }
end
