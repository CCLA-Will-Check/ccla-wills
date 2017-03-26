class Testator < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :dob, presence: true
  # validates :city_of_birth, presence: true
  # validates :country_of_birth, presence: true
  belongs_to :firm
end
