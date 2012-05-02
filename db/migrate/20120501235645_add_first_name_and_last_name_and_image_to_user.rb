class AddFirstNameAndLastNameAndImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string

    add_column :users, :last_name, :string

    add_column :users, :image, :text

  end
end
