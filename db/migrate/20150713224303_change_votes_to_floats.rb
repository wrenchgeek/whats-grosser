class ChangeVotesToFloats < ActiveRecord::Migration
  def change
    remove_column :options, :votes
    add_column :options, :votes, :float
  end
end
