class AddFirmToWill < ActiveRecord::Migration[5.0]
  def change
    add_reference :wills, :firm, foreign_key: true
  end
end
