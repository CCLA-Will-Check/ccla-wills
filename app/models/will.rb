class Will < ApplicationRecord
  validates_presence_of :first_name, :last_name, :dob, :city_of_birth, :country_of_birth, :lawyer_name, :firm_name, :lsuc, :telephone
end
