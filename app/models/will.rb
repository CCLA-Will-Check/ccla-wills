class Will < ApplicationRecord
  validates_presence_of :first_name, :last_name, :dob, :city_of_birth, :country_of_birth
end
