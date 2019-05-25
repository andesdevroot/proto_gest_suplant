class CreateConsulta < ActiveRecord::Migration[5.2]
  def change
    create_table :consulta do |t|
      t.string :tema
      t.string :diregente
      t.date :fecha
      t.text :descripción
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
