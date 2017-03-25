class Request < ApplicationRecord
  validates name, presence: true
  validates testator_first, presence: true
  validates testator_last, presence: true
  validates testator_dob, presence: true
  validates testator_city, presence: true
end
