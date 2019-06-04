class CreateCompromisos < ActiveRecord::Migration[5.2]
  def change
    create_table :compromisos do |t|
      t.string :tema
      t.string :compromiso
      t.string :dirigente
      t.string :estatus
      t.date :fecha_ingreso
      t.string :fecha_tope
      t.text :respuesta
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
