class AddZipCodeOrCityToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :zip_code_or_city, :string

  end
end
