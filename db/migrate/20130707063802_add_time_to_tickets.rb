class AddTimeToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :showtime, :string
  end
end
