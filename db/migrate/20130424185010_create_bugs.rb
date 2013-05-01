class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :priority
      t.string :closed_by
      t.text :comment

      t.timestamps
    end
  end
end
