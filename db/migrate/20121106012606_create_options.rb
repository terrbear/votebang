class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :choice
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
