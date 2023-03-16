class CreateCheckIns < ActiveRecord::Migration[5.2]
  def change
    create_table :check_ins do |t|
<<<<<<< HEAD
=======
      t.integer :patient_id
>>>>>>> b64a0c356c3a8df684a4735dd2c902e5fc2f9c18
      t.integer :user_id
      t.timestamps
    end
  end
end
