class CreateAsistencia < ActiveRecord::Migration[5.2]
  def change
    create_table :asistencia do |t|
      t.string :tipo_reunion
      t.date :fecha
      t.string :asistencia
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
