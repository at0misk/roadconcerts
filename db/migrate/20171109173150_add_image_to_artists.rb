class AddImageToArtists < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :artists, :avatar
  end
end
