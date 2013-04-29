class ChangePriorityToInteger < ActiveRecord::Migration
  def up
     execute "ALTER TABLE 'bugs' ALTER COLUMN 'priority' TYPE int"
  end

  def down
     change_column :bugs, :priority, :string
  end
end
