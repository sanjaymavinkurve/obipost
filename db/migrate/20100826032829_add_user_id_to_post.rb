class AddUserIdToPost < ActiveRecord::Migration
  def self.up
		add_column :posts, :user_id, :integer
		add_index :posts, :user_id
  end

  def self.down
  end
end
