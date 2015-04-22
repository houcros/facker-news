class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :title
      t.text :content
      t.integer :score
      t.integer :num_comments
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
