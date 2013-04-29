class ChangePriorityToInteger < ActiveRecord::Migration
  def up
     change_column :bugs, :priority, :int
  end

  def down
     change_column :bugs, :priority, :string
  end
end
