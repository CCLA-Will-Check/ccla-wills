class Request < ApplicationRecord
  validates :applicant, presence: true
  validates :testator_first, presence: true
  validates :testator_last, presence: true
  validates :status, presence: true
  validates :lsuc, presence: true
end
