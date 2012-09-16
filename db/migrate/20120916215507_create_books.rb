class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :image
      t.string :author_name
      t.string :author_url
      t.text :description

      t.timestamps
    end
  end
end
