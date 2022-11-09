class AddPriceToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :price, :float
  end
end
