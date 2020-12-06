class CreateRoasters < ActiveRecord::Migration[5.2]
  def change
    create_table :roasters do |t|
      t.string :name
      t.boolean :subscription_service
      t.boolean :micro
      t.string :location

      t.timestamps
    end
  end
end
