class CreateTagRelations < ActiveRecord::Migration
  def change
    create_table :tag_relations do |t|

      t.timestamps
    end
  end
end
