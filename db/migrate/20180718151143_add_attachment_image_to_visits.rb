class AddAttachmentImageToVisits < ActiveRecord::Migration[4.2]
  def self.up
    change_table :visits do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :visits, :image
  end
end
