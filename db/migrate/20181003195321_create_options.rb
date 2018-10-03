class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.text :name
      t.integer :tally

      t.timestamps
    end
  end
end
