class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.string :style
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
