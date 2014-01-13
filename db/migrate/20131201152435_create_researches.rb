class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :cid
      t.string :handbook
      t.string :name
      t.string :cns
      t.string :sex
      t.date :birthday
      t.float :weight
      t.float :height
      t.string :color
      t.string :unit
      t.integer :bed
      t.date :admission

      t.string :etilismo
      t.string :tempoEtilismo

      t.string :tabagismo
      t.string :tempoTabagismo

      t.string :gravity
      t.string :plantasMedicinais
      t.string :reacoesAdversas
      t.string :result
      t.string :sequels
      t.string :status

      t.string :treatment
      t.string :exposicaoPrevia
      t.string :desenvolveuReacao
      t.string :usaCocaina
      t.string :usaCrack
      t.string :usaLSD
      t.string :usaMaconha
      t.string :anotherLocation

      t.string :algNaranjo
      t.string :algOMS
      t.string :algRUCAM
      t.string :algUE

      t.references :ram, index: true
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
