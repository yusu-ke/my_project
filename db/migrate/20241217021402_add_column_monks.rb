class AddColumnMonks < ActiveRecord::Migration[7.2]
  def change
    add_column :monks, :monk_description, :text
  end
end
