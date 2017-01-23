class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable, index: true
      t.integer :commentor_id, index: true
      t.text :body

      t.timestamps null: false
    end
  end
end
