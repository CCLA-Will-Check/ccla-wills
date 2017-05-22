class Will < ApplicationRecord
  validates_presence_of :first_name, :last_name, :dob, :city_of_birth, :country_of_birth, :lawyer_name, :firm_name, :lsuc, :telephone, :year

  def self.search(search)
    where("first_name ILIKE :search \
          or last_name ILIKE :search \
          or alt_last_name ILIKE :search \
          or city_of_birth ILIKE :search \
          or province_of_birth ILIKE :search \
          or country_of_birth ILIKE :search \
          or last_resided ILIKE :search \
          or lawyer_name ILIKE :search \
          or firm_name ILIKE :search \
          or telephone ILIKE :search \
          or lsuc ILIKE :search \
          or dob = :search", {search: "%#{search}%"})
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Will.create! row.to_hash.merge({"approved" => false})
    end
  end
end
