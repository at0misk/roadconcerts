class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
