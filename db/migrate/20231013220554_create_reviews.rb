class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true, index: false

      t.timestamps
    end
    add_index :reviews, [:product_id, :user_id], unique: true
  end
end
