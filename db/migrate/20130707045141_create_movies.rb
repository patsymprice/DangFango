class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :url
      t.text :synopsis
      t.integer :rating
      t.references :tickets


      t.timestamps
    end
  end
end
