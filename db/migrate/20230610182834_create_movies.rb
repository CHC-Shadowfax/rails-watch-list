class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :overview
      t.string :poster_url
      t.decimal :rating

      t.timestamps
    end
  end
end
