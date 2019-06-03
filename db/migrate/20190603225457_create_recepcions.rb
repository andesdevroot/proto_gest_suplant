class CreateRecepcions < ActiveRecord::Migration[5.2]
  def change
    create_table :recepcions do |t|
      t.string :tema
      t.string :dirigente
      t.date :fecha
      t.string :consulta
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
