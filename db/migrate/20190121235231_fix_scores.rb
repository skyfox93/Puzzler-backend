class FixScores < ActiveRecord::Migration[5.2]
  def change
    change_table :scores do |t|
      t.remove :user_id
      t.remove :score_id
      t.remove :game_score
      t.string :time
      t.boolean :current

    end
  end
end
