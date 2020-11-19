class RemoveLongitudeFromSpaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :spaces, :longitude, :integer
  end
end
