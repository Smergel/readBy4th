class AddLeaderIdToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :leader_id, :integer
  end

  def self.down
    remove_column :events, :leader_id, :integer
  end
end
