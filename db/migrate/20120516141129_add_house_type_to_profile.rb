class AddHouseTypeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :house_type, :string

  end
end
