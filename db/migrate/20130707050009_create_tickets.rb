class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :location
      t.decimal :price
      t.references :movie
      t.references :user

      t.timestamps
    end
    add_index :tickets, :movie_id
    add_index :tickets, :user_id
  end
end
