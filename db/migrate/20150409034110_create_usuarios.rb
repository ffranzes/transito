class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :sexo
      t.date :dtnascimento

      t.timestamps null: false
    end
  end
end
