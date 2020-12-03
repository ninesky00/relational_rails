class CreateRoasters < ActiveRecord::Migration[5.2]
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :string
      t.string :subscription_service
      t.string :boolean
      t.string :micro
      t.string :boolean
      t.string :location
      t.string :string

      t.timestamps
    end
  end
end
