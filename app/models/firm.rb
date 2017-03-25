class Firm < ApplicationRecord
  validates name, presence: true
  validates address, presence: true
  validates city, presence: true
  validates province, presence: true
  validates country, presence: true
  validates postal_code, presence: true
  validates telephone, presence: true
  validates lsuc, presence: true
  has_many :testators
end
