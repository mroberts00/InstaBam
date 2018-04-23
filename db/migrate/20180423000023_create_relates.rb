class CreateRelates < ActiveRecord::Migration[5.2]
  def change
    create_table :relates do |t|
      t.integer :related_id
      t.integer :relater_id

      t.timestamps
    end
  end
end
