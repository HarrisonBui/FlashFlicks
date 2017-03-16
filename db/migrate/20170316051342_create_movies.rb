class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :director
      t.text   :description
      t.string :image_url
      t.integer :rating
      t.integer :rating
      t.string :youtube_url
      t.timestamps
    end

    add_index :movies, :title
  end
end
