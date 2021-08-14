class AddCounterCacheToCandidate < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :vote_logs_counter, :integer, default: 0
  end
end
