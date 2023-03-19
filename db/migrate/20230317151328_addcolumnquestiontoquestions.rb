class Addcolumnquestiontoquestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :question, :string
  end
end
