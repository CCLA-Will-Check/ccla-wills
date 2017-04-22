class AddYearToWills < ActiveRecord::Migration[5.0]
  def change
    add_column :wills, :year, :integer
  end
end
