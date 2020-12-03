class RemoveIntegerFromCoffeeBeans < ActiveRecord::Migration[5.2]
  def change
    remove_column :coffee_beans, :integer, :string
    remove_column :coffee_beans, :string, :string
  end
end
