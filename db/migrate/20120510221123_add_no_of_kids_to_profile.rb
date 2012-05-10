class AddNoOfKidsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :no_of_kids, :int

  end
end
