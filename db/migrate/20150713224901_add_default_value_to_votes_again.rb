class AddDefaultValueToVotesAgain < ActiveRecord::Migration
  def change
    change_column :options, :votes, :float, :default => 0
  end
end
