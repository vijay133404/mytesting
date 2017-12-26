class CreateSubmits < ActiveRecord::Migration[5.1]
  def change
    create_table :submits do |t|
      t.integer :answer_id
      t.integer :question_id
      t.boolean :disabled, default: false
      t.integer :user_id
      
      t.timestamps
    end
  end
end
