class AddFirmToTestator < ActiveRecord::Migration[5.0]
  def change
    add_reference :testators, :firm, foreign_key: true
  end
end
