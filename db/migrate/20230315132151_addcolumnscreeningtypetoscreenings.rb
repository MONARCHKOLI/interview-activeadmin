class Addcolumnscreeningtypetoscreenings < ActiveRecord::Migration[6.1]
  def change
    add_column :screenings, :screening_type, :string
  end
end
