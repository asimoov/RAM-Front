class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :acronym
      t.string :city

      t.timestamps
    end
  end
end
