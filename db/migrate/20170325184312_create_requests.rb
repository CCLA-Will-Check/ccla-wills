class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :applicant
      t.string :email
      t.string :telephone
      t.string :testator_first
      t.string :testator_last
      t.string :testator_alt
      t.date :testator_dob
      t.string :testator_city
      t.string :testator_province
      t.string :testator_country
      t.string :testator_last_resident

      t.timestamps
    end
  end
end
