class AddMultiLocationToArtists < ActiveRecord::Migration[5.0]
  def change
  	add_column :artists, :multi_location, :boolean
  end
end
