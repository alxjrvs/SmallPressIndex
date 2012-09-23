class CreateBookTags < ActiveRecord::Migration
  def change
    create_table :book_tags do |t|
      t.references :book
      t.references :tag
    end
    add_index :book_tags, [:book_id, :tag_id]
  end
end
