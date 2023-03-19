class Removecolumnquestionfromquestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :question
  end
end
