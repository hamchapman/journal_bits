class AddTimeZoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :time_zone, :integer
  end
end
