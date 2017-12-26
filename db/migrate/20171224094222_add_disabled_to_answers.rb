class AddDisabledToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :disabled, :boolean, default: false
  end
end
