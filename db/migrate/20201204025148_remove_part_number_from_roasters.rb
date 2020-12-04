class RemovePartNumberFromRoasters < ActiveRecord::Migration[5.2]
  def change
    remove_column :roasters, :subscription_service, :string
    remove_column :roasters, :micro, :string
  end
end
