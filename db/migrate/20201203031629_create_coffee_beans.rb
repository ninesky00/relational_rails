class CreateCoffeeBeans < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_beans do |t|
      t.string :batch_id
      t.string :integer
      t.string :name
      t.string :string
      t.string :roast
      t.string :string
      t.string :weight
      t.string :integer
      t.string :country_of_origin
      t.string :string
      t.string :blend
      t.string :boolean
      t.string :roasted_at
      t.string :date
      t.belongs_to :roaster

      t.timestamps
    end
  end
end
