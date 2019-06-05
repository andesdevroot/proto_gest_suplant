class CreateFichas < ActiveRecord::Migration[5.2]
  def change
    create_table :fichas do |t|
      t.string :nombre
      t.date :fecha_nacimiento
      t.string :domicilio
      t.string :comuna
      t.string :correo
      t.string :fono
      t.string :estado_civil
      t.string :cargas_familiares
      t.string :cargo
      t.string :escala
      t.string :grupo_trabajo
      t.string :email_corporativo
      t.date :fecha_ingreso
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
