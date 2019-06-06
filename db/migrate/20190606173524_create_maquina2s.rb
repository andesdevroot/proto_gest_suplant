class CreateMaquina2s < ActiveRecord::Migration[5.2]
  def change
    create_table :maquina2s do |t|
      t.string :area
      t.references :socio, foreign_key: true

      t.timestamps
    end
  end
end
