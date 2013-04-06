class AddTimeLimitsToSample < ActiveRecord::Migration
  def change
    add_column :samples, :start, :integer
    add_column :samples, :duration, :integer
  end
end
