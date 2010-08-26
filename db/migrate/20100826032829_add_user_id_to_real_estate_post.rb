class AddUserIdToRealEstatePost < ActiveRecord::Migration
  def self.up
		add_column :real_estate_posts, :user_id, :integer
		add_index :real_estate_posts, :user_id
  end

  def self.down
  end
end
