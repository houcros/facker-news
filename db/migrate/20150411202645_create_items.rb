class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :deleted
      t.string :post_type
      t.string :by
      t.text :content
      t.boolean :dead
      t.integer :parent
      t.string :kids
      t.string :url
      t.integer :score
      t.string :title

      t.timestamps
    end
  end
end
