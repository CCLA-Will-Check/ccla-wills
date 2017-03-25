class Testator < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :birth_city, presence: true
  validates :birth_country, presence: true
  belongs_to :firm
end
