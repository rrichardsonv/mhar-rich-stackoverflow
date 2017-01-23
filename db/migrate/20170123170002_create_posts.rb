class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :question
      t.text :body
      t.integer :author_id
      t.integer :best_answer_id

      t.timestamps null: false
    end
    add_index(:posts, :question)
  end
end
