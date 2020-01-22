class ChangeNameToString < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :name, :string
  end
end
