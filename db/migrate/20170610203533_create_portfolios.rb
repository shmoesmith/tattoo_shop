class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :style
      t.text :photo_urls
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
