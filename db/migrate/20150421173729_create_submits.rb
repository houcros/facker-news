class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :title
      t.integer :score
      t.integer :num_comments
      t.string :author
      t.string :url

      t.timestamps
    end
  end
end
