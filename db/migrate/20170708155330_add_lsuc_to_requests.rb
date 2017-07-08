class AddLsucToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :lsuc, :string
  end
end
