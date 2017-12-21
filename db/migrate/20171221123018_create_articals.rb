class CreateArticals < ActiveRecord::Migration[5.1]
  def change
    create_table :articals do |t|

      t.timestamps
    end
  end
end
