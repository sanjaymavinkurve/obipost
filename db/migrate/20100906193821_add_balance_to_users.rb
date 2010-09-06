class AddBalanceToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :balance, :integer
  end

  def self.down
    remove_column :users, :balance
  end
end
