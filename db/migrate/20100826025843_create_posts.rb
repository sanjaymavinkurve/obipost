class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :name
      t.integer :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :bedrooms
      t.integer :full_bathrooms
      t.integer :half_bathrooms

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
