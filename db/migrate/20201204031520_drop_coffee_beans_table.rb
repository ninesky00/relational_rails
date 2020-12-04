class DropCoffeeBeansTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :coffee_beans
  end
end
