class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :title
      t.string :copy
      t.string :lat
      t.string :long
      t.string :facebook
      t.string :twitter
      t.string :insta
      t.string :website
      t.string :when

      t.timestamps
    end
  end
end
