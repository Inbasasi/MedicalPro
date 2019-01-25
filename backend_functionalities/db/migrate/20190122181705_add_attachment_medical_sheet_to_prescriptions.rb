class AddAttachmentMedicalSheetToPrescriptions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :prescriptions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :prescriptions, :photo
  end
end
