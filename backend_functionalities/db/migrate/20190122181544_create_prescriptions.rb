class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.string :mobileNo
      t.string :url
      t.timestamps
    end
  end
end
