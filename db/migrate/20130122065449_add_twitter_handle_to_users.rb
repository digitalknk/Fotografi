class AddTwitterHandleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
  end

  def self.down
    remove_column :users, :twitter
  end
end
