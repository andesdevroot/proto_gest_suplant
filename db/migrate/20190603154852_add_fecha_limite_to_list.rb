class AddFechaLimiteToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :fecha_limite, :date
  end
end
