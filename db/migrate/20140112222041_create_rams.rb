class CreateRams < ActiveRecord::Migration
  def change
  	create_table :rams do |t|
      t.string :cause 
      t.string :comorbidity 
      t.string :otherCauses
      t.date :initial
      t.date :final 

      t.timestamps
  	end
  end
end
