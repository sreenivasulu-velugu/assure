class AddHouseZipCodeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :house_zip_code, :string

  end
end
