class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :deleted
      t.integer :user_id
      t.integer :comment_id
      t.integer :submit_id

      t.timestamps
    end
  end
end
