class AddAttachmentScreenshotToBugs < ActiveRecord::Migration
  def self.up
    change_table :bugs do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    drop_attached_file :bugs, :screenshot
  end
end
