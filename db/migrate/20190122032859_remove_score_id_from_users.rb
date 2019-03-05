class RemoveScoreIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove :score_id
    end
  end
end
