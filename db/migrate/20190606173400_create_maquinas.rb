class CreateMaquinas < ActiveRecord::Migration[5.2]
  def change
    create_table :maquinas do |t|
      t.string :area

      t.timestamps
    end
  end
end
