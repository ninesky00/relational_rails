class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.date :publications_since
      t.date :last_publication
      t.boolean :currently_active
    end
  end
end
