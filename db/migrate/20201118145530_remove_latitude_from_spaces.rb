class RemoveLatitudeFromSpaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :spaces, :latitude, :integer
  end
end
