class AddRecepcionsToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :recepcions, foreign_key: true
  end
end
