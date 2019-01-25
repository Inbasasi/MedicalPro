class CreateMedicalShops < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_shops do |t|
      t.string :name
      t.string :web
      t.string :address
      t.string :city
      t.string :state
      t.string :mobile
      t.string :mail
      t.string :password
      t.timestamps
    end
  end
end
