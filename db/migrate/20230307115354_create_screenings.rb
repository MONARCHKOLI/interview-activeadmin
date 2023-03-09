class CreateScreenings < ActiveRecord::Migration[6.1]
  def change
    create_table :screenings do |t|
      t.integer :check_in_id
      t.json :response
      t.timestamps
    end
  end
end
