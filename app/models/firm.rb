class Firm < ApplicationRecord
  validates_presence_of :name, :address, :city, :province, :country, :postal_code, :telephone, :lsuc
  has_many :wills
end
