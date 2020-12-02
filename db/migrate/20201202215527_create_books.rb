class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.date :publication_date
      t.integer :pages
      t.boolean :currently_printed
      t.string :author
    end
  end
end
