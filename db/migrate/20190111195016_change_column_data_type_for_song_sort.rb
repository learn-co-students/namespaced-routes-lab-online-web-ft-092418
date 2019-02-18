class ChangeColumnDataTypeForSongSort < ActiveRecord::Migration
  def change
    change_column :preferences, :song_sort_order, :string
  end
end
