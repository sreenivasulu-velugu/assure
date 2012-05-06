class AddWorkPlaceAndRelationshipStatusAndUniversityToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :work_place, :text

    add_column :profiles, :relationship_status, :string

    add_column :profiles, :university, :string

  end
end
