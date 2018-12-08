class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :kind
      t.integer :cool
      t.integer :cute
      t.integer :fashion
      t.integer :smart
      t.integer :fun
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
