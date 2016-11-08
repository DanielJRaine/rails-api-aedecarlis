class AddAttachmentBodyToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :body
    end
  end

  def self.down
    remove_attachment :items, :body
  end
end
