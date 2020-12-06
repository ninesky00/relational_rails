class AddRoasterToCoffeeBeans < ActiveRecord::Migration[5.2]
  def change
    add_reference :coffee_beans, :roaster, foreign_key: true
  end
end
