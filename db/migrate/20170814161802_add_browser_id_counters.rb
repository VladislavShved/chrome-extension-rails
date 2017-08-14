class AddBrowserIdCounters < ActiveRecord::Migration
  def change
  	add_column :counters, :browser_id, :string
  end
end
