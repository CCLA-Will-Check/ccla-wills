class Will < ApplicationRecord
  validates_presence_of :first_name, :last_name, :dob, :city_of_birth, :country_of_birth, :lawyer_name, :firm_name, :lsuc, :telephone

  def self.search(search)
    where("first_name LIKE :search \
          or last_name LIKE :search \
          or alt_last_name LIKE :search \
          or city_of_birth LIKE :search \
          or province_of_birth LIKE :search \
          or country_of_birth LIKE :search \
          or last_resided LIKE :search \
          or lawyer_name LIKE :search \
          or firm_name LIKE :search \
          or telephone LIKE :search", {search: "%#{search}%"})
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Will.create! row.to_hash
    end
  end
end
