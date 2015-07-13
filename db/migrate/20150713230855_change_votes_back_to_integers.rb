class ChangeVotesBackToIntegers < ActiveRecord::Migration
  def change
    change_column :options, :votes, :integer, default: 0
  end
end
