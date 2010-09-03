class CreatePhotoframes < ActiveRecord::Migration
  def self.up
    create_table :photoframes do |t|
      t.string :caption
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :photoframes
  end
end
