class CreateVijays < ActiveRecord::Migration[5.1]
  def change
    create_table :vijays do |t|
      t.string :city

      t.timestamps
    end
  end
end
