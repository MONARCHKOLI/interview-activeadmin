class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :screenings, :title, :screening_description
  end
end
