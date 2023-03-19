class Addcolumntitletoscreenings < ActiveRecord::Migration[6.1]
  def change
    add_column :screenings, :title, :string
  end
end
