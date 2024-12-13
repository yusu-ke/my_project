class CreateScoreMappings < ActiveRecord::Migration[7.2]
  def change
    create_table :score_mappings do |t|
      t.references :question, null: false, foreign_key: true
      t.integer :option
      t.integer :score

      t.timestamps
    end
  end
end
