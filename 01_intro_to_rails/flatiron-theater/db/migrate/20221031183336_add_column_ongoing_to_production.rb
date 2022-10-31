class AddColumnOngoingToProduction < ActiveRecord::Migration[6.1]
  def change
    add_column :productions, :ongoing, :boolean
  end
end
