class FixOptionColumnForVotes < ActiveRecord::Migration
  def up
    rename_column :votes, :opion_id, :option_id
  end

  def down
    rename_column :votes, :option_id, :opion_id
  end
end
