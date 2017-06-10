class CreatePorfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :porfolios do |t|
      t.string :style

      t.timestamps

	  t.string   "avatar_file_name"
	  t.string   "avatar_content_type"
	  t.integer  "avatar_file_size"
	  t.datetime "avatar_updated_at"
    end
  end
end
