class AddRelatedToToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :related_to, :string

  end
end
