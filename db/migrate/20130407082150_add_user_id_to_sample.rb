class AddUserIdToSample < ActiveRecord::Migration
  def change
    add_column :samples, :user_id, :integer
  end
end
