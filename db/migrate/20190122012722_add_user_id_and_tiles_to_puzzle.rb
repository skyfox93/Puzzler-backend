class AddUserIdAndTilesToPuzzle < ActiveRecord::Migration[5.2]
  def change
    add_column :puzzles, :user_id, :integer
    add_column :puzzles, :tiles, :string

  end
end
