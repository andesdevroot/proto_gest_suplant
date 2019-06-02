class AddSocioToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :socio, foreign_key: true
  end
end
