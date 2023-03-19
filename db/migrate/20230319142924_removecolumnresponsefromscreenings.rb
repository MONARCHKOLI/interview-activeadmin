class Removecolumnresponsefromscreenings < ActiveRecord::Migration[6.1]
  def change
    remove_column :screenings, :response
  end
end
