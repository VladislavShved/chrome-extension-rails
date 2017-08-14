class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.integer :count_number

      t.timestamps null: false
    end
  end
end
