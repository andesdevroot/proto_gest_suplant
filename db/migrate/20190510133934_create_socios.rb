class CreateSocios < ActiveRecord::Migration[5.2]
  def change
    create_table :socios do |t|
      t.string :name
      t.string :sap

      t.timestamps
    end
  end
end
