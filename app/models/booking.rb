class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user
  # attr_accessor :number_of_guests

  validates :number_of_guests, presence: true
  validates :opening_date, presence: true
  validates :ending_date, presence: true
end
