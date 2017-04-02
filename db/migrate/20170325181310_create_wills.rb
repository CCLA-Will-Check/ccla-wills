class CreateWills < ActiveRecord::Migration[5.0]
  def change
    create_table :wills do |t|
      t.string :first_name
      t.string :last_name
      t.string :alt_last_name
      t.date :dob
      t.string :city_of_birth
      t.string :province_of_birth
      t.string :country_of_birth
      t.string :last_resided
      t.string :lawyer_name
      t.string :firm_name
      t.string :lsuc
      t.string :telephone

      t.timestamps
    end
  end
end
