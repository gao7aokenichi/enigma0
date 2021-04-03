class RemoveNameFromEnigmas < ActiveRecord::Migration[6.0]
  def change
    remove_column :enigmas, :name, :string
  end
end
