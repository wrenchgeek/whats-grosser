class AddDefaultValueToVotes < ActiveRecord::Migration
  def change
    remove_column :options, :votes
    add_column :options, :votes, :integer, default: 0
  end
end
