class AddUnfinishedToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :completed, :integer
    add_column :posts, :disabled, :boolean
  end

  def self.down
    remove_column :posts, :disabled
    remove_column :posts, :completed
  end
end
