class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.text :about
      t.date :birthday
      t.text :work
      t.text :address
      t.text :education
      t.text :cars

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
