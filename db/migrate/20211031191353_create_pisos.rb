class CreatePisos < ActiveRecord::Migration[6.1]
  def change
    create_table :pisos do |t|
      t.string :nome
      t.string :tamanho
      t.decimal :valor

      t.timestamps
    end
  end
end
