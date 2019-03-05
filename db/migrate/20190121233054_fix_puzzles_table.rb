class FixPuzzlesTable < ActiveRecord::Migration[5.2]
  def change
    change_table :puzzles do |t|
      t.remove :imageUrl
      t.remove :score_id
      t.integer :image_id
      t.boolean :complete
    end
  end
end
