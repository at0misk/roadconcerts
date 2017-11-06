class AddDownloadableToArtists < ActiveRecord::Migration[5.0]
  def change
  	add_column :artists, :downloadable, :boolean
  end
end
