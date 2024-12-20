class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :temple_name, null: false
      t.string :location, null: false
      t.string :comment, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
