class CreateRams < ActiveRecord::Migration
  def change
  	create_table :rams do |t|
      t.string :cause 
      t.string :comorbidity 
      t.string :otherCauses
      t.date :start
      t.date :end

      t.timestamps
  	end
  end
end
