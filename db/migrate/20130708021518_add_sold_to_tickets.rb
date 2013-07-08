class AddSoldToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :sold, :boolean, :default => false
  end
end
