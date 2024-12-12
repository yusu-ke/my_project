class CreateMonks < ActiveRecord::Migration[7.2]
  def change
    create_table :monks do |t|
      t.string :name
      t.string :title
      t.text :description
      t.integer :start_score
      t.integer :end_score
      t.string :image_path

      t.timestamps
    end
  end
end
