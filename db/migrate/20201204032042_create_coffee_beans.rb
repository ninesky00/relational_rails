class CreateCoffeeBeans < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_beans do |t|
      t.string :name
      t.string :roast
      t.integer :weight
      t.string :country_of_origin
      t.boolean :blend
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
