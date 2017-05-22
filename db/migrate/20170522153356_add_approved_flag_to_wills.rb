class AddApprovedFlagToWills < ActiveRecord::Migration[5.0]
  def change
    add_column :wills, :approved, :boolean
  end
end
