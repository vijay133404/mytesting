class AddOptionColumnToAnswers < ActiveRecord::Migration[5.1]
  def change
  	 add_column :answers, :option, :boolean, default: false
  end
end
