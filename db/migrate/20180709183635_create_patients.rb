class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.date :birthdate
      t.string :patient_number
      t.timestamps
    end
  end
end
