class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :title
      t.integer :score
      t.string :url
      t.string :submit_type
      t.integer :user_id

      t.timestamps
    end
  end
end
