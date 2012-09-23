class CreateAuthorBooks < ActiveRecord::Migration
  def change
    create_table :author_books do |t|
      t.references :book
      t.references :author
    end
    add_index :author_books, [:book_id, :author_id]
  end
end
