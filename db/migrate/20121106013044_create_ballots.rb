class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
