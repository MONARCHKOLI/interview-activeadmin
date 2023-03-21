class Addetailstoanswers < ActiveRecord::Migration[6.1]
  def change
    change_column(:answers, :response, :string)
    rename_column(:answers, :response, :answer)
  end
end
