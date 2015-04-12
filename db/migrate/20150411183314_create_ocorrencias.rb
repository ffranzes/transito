class CreateOcorrencias < ActiveRecord::Migration
  def change
    create_table :ocorrencias do |t|
      t.references :usuario, index: true
      t.references :evento, index: true
      t.date :datainicio
      t.date :datatermino
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
    add_foreign_key :ocorrencias, :usuarios
    add_foreign_key :ocorrencias, :eventos
  end
end
