class AddConsultaToRecepcions < ActiveRecord::Migration[5.2]
  def change
    add_column :recepcions, :consulta, :text
  end
end
