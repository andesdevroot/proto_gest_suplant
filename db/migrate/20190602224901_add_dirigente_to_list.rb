class AddDirigenteToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :dirigente, :string
  end
end
