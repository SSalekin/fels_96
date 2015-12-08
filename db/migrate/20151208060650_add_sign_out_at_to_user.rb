class AddSignOutAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :signed_out_at, :datetime
  end
end
