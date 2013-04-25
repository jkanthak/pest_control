class AddReportedByToBug < ActiveRecord::Migration
  def change
    add_column :bugs, :reported_by, :int
  end
end
