class CreateMovielistMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movielist_movies do |t|
      t.integer :movielist_id, null: false
      t.integer :movie_id, null: false
      t.timestamps
    end

    add_index :movielist_movies, :movielist_id
    add_index :movielist_movies, :movie_id
  end
end
