class CreateMovielists < ActiveRecord::Migration[5.0]
  def change
    create_table :movielists do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :movielists, :title
    add_index :movielists, :user_id
  end
end
