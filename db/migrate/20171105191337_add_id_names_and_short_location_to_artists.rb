class AddIdNamesAndShortLocationToArtists < ActiveRecord::Migration[5.0]
  def change
  	add_column :artists, :name_id, :string
  	add_column :artists, :where, :string
  end
end
