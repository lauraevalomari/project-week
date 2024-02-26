class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user
  attr_accessor :number_of_guests
end
