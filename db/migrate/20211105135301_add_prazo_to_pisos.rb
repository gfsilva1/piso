class AddPrazoToPisos < ActiveRecord::Migration[6.1]
  def change
   add_column :pisos, :prazo, :string
  end
end
