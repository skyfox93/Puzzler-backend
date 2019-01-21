class AddPuzzleIdToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :puzzle_id, :integer
  end
end
