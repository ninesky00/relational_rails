class AddColumnsToRoasters < ActiveRecord::Migration[5.2]
  def change
    add_column :roasters, :micro, :boolean
    add_column :roasters, :subscription_service, :boolean
  end
end
