class CreatePuzzles < ActiveRecord::Migration[5.2]
  def change
    create_table :puzzles do |t|

      t.string :imageUrl
      t.integer :score_id
      t.timestamps
    end
  end
end
