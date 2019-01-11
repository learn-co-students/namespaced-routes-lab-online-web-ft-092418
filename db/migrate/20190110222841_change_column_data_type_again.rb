class ChangeColumnDataTypeAgain < ActiveRecord::Migration
  def change
    change_column :preferences, :song_sort_order, :boolean
  end
end
