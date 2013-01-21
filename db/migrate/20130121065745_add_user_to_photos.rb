class AddUserToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :user_id, :integer
  end

  def self.down
    remove_column :photos, :user_id
  end
end
