class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :submit_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
