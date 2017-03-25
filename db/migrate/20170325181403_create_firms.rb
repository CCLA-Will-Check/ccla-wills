class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :telephone
      t.string :lsuc

      t.timestamps
    end
  end
end
