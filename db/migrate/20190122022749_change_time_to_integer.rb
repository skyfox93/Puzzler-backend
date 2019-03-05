class ChangeTimeToInteger < ActiveRecord::Migration[5.2]
    def change
      change_table :scores do |t|
        t.remove :time
        t.integer :time

      end
    end
  end
