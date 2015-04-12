class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :descricao
      t.string :tipo

      t.timestamps null: false
    end
  end
end
