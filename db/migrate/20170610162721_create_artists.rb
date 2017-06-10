class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :shop
      t.string :schedule
      
      t.timestamps
    end
  end
end
