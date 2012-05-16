class AddDegreeAndAreaOfStudyAndCarTypeAndCarYearAndCarMakeAndCarModelToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :degree, :string

    add_column :profiles, :area_of_study, :string

    add_column :profiles, :car_type, :string

    add_column :profiles, :car_year, :integer

    add_column :profiles, :car_make, :string

    add_column :profiles, :car_model, :string

  end
end
